<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Purchase;
use App\Http\Requests;
use DB;
use PDF;
use App\Http\Start\Helpers;
use Session;

class ReceiveController extends Controller
{
    public function __construct() {

    }

    public function index()
    {
        $data['menu'] = 'purchase';
        $data['purchData'] = (new Purchase)->getAllPurchOrder();
        return view('admin.purchase.purch_list', $data);
    }

    public function store(Request $request)
    {
        $user_id = \Auth::user()->id;

        $this->validate($request, [
            'reference'=>'required|unique:purch_orders',
            'into_stock_location' => 'required',
            'ord_date' => 'required',
            'supplier_id' => 'required',
            'item_quantity' => 'required',
        ]);


        $itemQty = $request->item_quantity;        
        $itemIds = $request->item_id;
        $taxIds = $request->tax_id;
        $itemPrice = $request->item_price;
        $stock_id = $request->stock_id;
        $description = $request->description;
        $unitPrice = $request->unit_price; 
        
        foreach ($itemQty as $key => $value) {
            $product[$itemIds[$key]] = $value;
        }

        $orderReferenceNo = DB::table('purch_orders')->count();
        $data['ord_date'] = DbDateFormat($request->ord_date);
        $data['supplier_id'] = $request->supplier_id;
        $data['person_id'] = $user_id;
        $data['reference'] = 'PO-'. sprintf("%04d", $orderReferenceNo+1);
        $data['total'] = $request->total;
        $data['into_stock_location'] = $request->into_stock_location;
        $data['comments'] = $request->comments;
        $data['created_at'] = date('Y-m-d H:i:s');
        $order_id = DB::table('purch_orders')->insertGetId($data);

        for ($i=0; $i < count($itemIds); $i++) {
            foreach ($product as $key => $value) {
                if($itemIds[$i] == $key){
                    // purchOrderdetail information
                    $purchOrderdetail[$i]['order_no'] = $order_id;
                    $purchOrderdetail[$i]['item_code'] = $stock_id[$i];
                    $purchOrderdetail[$i]['description'] = $description[$i];
                    $purchOrderdetail[$i]['quantity_ordered'] = $value;
                    $purchOrderdetail[$i]['quantity_received'] = $value;
                    $purchOrderdetail[$i]['qty_invoiced'] = $value;
                    $purchOrderdetail[$i]['unit_price'] = $unitPrice[$i];
                    $purchOrderdetail[$i]['tax_type_id'] = $taxIds[$i];
                     // stockMove information
                    $stockMove[$i]['stock_id'] = $stock_id[$i];
                    $stockMove[$i]['trans_type'] = PURCHINVOICE;
                    $stockMove[$i]['loc_code'] = $request->into_stock_location;
                    $stockMove[$i]['tran_date'] = DbDateFormat($request->ord_date);
                    $stockMove[$i]['person_id'] = $user_id;
                    $stockMove[$i]['reference'] = 'store_in_'.$order_id;
                    $stockMove[$i]['transaction_reference_id'] =$order_id;
                    $stockMove[$i]['qty'] = $value;
                    $stockMove[$i]['price'] = $unitPrice[$i];
                }

                $purchaseDataInfo = DB::table('purchase_prices')->where('stock_id',$stock_id[$i])->count(); 
               
                //d($purchaseDataInfo,1);
                if($purchaseDataInfo == false){
                    $purchaseData['supplier_id'] = $request->supplier_id;
                    $purchaseData['stock_id'] = $stock_id[$i];
                    $purchaseData['price'] = $itemPrice[$i];
                    DB::table('purchase_prices')->insert($purchaseData);
                }

            }
        }

        for ($i=0; $i < count($purchOrderdetail); $i++) {
            DB::table('purch_order_details')->insertGetId($purchOrderdetail[$i]);
            //DB::table('stock_moves')->insertGetId($stockMove[$i]);
        }

        if (!empty($order_id)) {
            \Session::flash('success',trans('message.success.save_success'));
            return redirect()->intended('purchase/list');
        }

    }

    public function edit($id)
    {
    $data['menu'] = 'purchase';
    $data['oderInfo'] = DB::table('receive_orders')->where(['id'=>$id])->first();
    $data['itemInfo'] = DB::table('receive_order_details')
                        ->leftjoin('item_tax_types','item_tax_types.id','=','receive_order_details.tax_type_id')
                        ->leftjoin('item_code','item_code.stock_id','=','receive_order_details.item_code')
                        ->select('receive_order_details.*','item_tax_types.tax_rate','item_code.id as item_id')
                        ->where(['receive_order_details.receive_id'=>$id])
                        ->get();
    return view('admin.receive.receive_edit', $data);
    }

    public function update(Request $request)
    {

        $order_no = $request->order_no;   
        $receive_id = $request->id;        
        $data['receive_date'] = DbDateFormat($request->receive_date);
        DB::table('receive_orders')->where('id', $receive_id)->update($data);

        $itemCode = $request->item_code;
        $quantity = $request->quantity;
        $oldQty   = $request->old_qty;

        foreach ($itemCode as $key => $value) {
            $itemDetails['quantity'] = $quantity[$key];
            DB::table('receive_order_details')
                    ->where(['item_code'=>$value,'receive_id'=>$receive_id])
                    ->update($itemDetails);

            $stockMove['qty'] = $quantity[$key];
            DB::table('stock_moves')
                    ->where(['stock_id'=>$value,'receive_id'=>$receive_id])
                    ->update($stockMove);

            $orderedQty = DB::table('purch_order_details')
                    ->where(['order_no'=>$order_no,'item_code'=>$value])
                    ->sum('qty_received');

            $updateQty = $orderedQty-$oldQty[$key]+$quantity[$key];

            DB::table('purch_order_details')
                    ->where(['order_no'=>$order_no,'item_code'=>$value])
                    ->update(['qty_received'=>$updateQty]);

        }

        Session::flash('success',trans('message.success.save_success'));
        return redirect()->intended('receive/details/'.$receive_id);
    }

    public function destroy(Request $request)
    {
        $receive_id = $request->receive_id;
        $order_no = $request->order_no;

        $itemList = DB::table('receive_order_details')
                    ->where(['receive_id'=>$receive_id])
                    ->get();

        if(!empty($itemList)){
            foreach ($itemList as $key => $value) {
                $oderItemDetails = DB::table('purch_order_details')
                                    ->select('qty_received')
                                    ->where(['order_no'=> $order_no,'item_code'=>$value->item_code])
                                    ->first();
                $revQty = ($oderItemDetails->qty_received-$value->quantity);
                DB::table('purch_order_details')
                    ->where(['order_no'=>$request->order_no,'item_code'=>$value->item_code])
                    ->update(['qty_received'=>$revQty]);   
                }
        }

       // d($itemList,1);
        DB::table('receive_orders')->where('id', '=', $receive_id)->delete();
        DB::table('receive_order_details')->where(['receive_id'=>$receive_id])->delete();
        DB::table('stock_moves')->where(['receive_id'=>$receive_id])->delete();
        Session::flash('success',trans('message.success.delete_success'));
        return redirect()->intended('purchase/view-purchase-details/'.$order_no);
    }

    public function receiveDetails($id){
        $data['menu'] = 'purchase';
        $data['rewceiveInfo'] = $rewceiveInfo = DB::table('receive_orders')
                            ->where('receive_orders.id', '=', $id)
                            ->leftJoin('suppliers','suppliers.supplier_id','=','receive_orders.supplier_id')
                            ->leftJoin('location','location.loc_code','=','receive_orders.location')
                            ->select('receive_orders.*','suppliers.supp_name','suppliers.email','suppliers.address','suppliers.contact','suppliers.city','suppliers.state','suppliers.zipcode','suppliers.country','location.location_name')
                            ->first();

        $data['itemInfo'] = DB::table('receive_order_details')
                            ->leftjoin('item_tax_types','item_tax_types.id','=','receive_order_details.tax_type_id')
                            ->select('receive_order_details.*','item_tax_types.tax_rate')
                            ->where(['receive_id'=>$id])
                            ->get();
    $data['purchData'] = $rewceiveInfo;
        // Rifgt Part Option Start
    $data['receiveData'] = DB::select("SELECT ro.id,ro.reference,rod.qty FROM receive_orders  as ro
        LEFT JOIN (SELECT receive_id,SUM(quantity) as qty FROM receive_order_details GROUP BY receive_id) as rod
        ON rod.receive_id = ro.id
        WHERE ro.order_no = $rewceiveInfo->order_no
        ORDER BY ro.id DESC
        ");    

        $orderItemQty = DB::select("select sum(quantity_ordered) as ord_qty,sum(qty_received) as recv_qty from purch_order_details where order_no = $rewceiveInfo->order_no group by order_no");
       
        $data['orderItemQty'] = $orderItemQty[0];

        return view('admin.receive.details', $data);       
    }
    
    public function receivePdf($id){
     $data['rewceiveInfo'] = DB::table('receive_orders')
                            ->where('receive_orders.id', '=', $id)
                            ->leftJoin('suppliers','suppliers.supplier_id','=','receive_orders.supplier_id')
                            ->leftJoin('location','location.loc_code','=','receive_orders.location')
                            ->select('receive_orders.*','suppliers.supp_name','suppliers.email','suppliers.address','suppliers.contact','suppliers.city','suppliers.state','suppliers.zipcode','suppliers.country','location.location_name')
                            ->first();

    $data['itemInfo'] = DB::table('receive_order_details')
                            ->leftjoin('item_tax_types','item_tax_types.id','=','receive_order_details.tax_type_id')
                            ->select('receive_order_details.*','item_tax_types.tax_rate')
                            ->where(['receive_id'=>$id])
                            ->get();
      $pref                  = DB::table('preference')->where('category', 'company')->get();
      $companyData            = AssColumn($a=$pref, $column='id');
      $array_data = array();
      foreach($companyData as $row)
      {
        $array_data[$row->category][$row->field] = $row->value;         
      }
      $data['companyInfo'] = $array_data;

        $pdf = PDF::loadView('admin.receive.pdf', $data);
        //$pdf->setPaper('a4', 'landscape');
         $pdf->setPaper(array(0,0,750,1060), 'portrait');
        return $pdf->download('receive.pdf',array("Attachment"=>0));               
    }
    
    public function receivePrint($id){
     $data['rewceiveInfo'] = DB::table('receive_orders')
                            ->where('receive_orders.id', '=', $id)
                            ->leftJoin('suppliers','suppliers.supplier_id','=','receive_orders.supplier_id')
                            ->leftJoin('location','location.loc_code','=','receive_orders.location')
                            ->select('receive_orders.*','suppliers.supp_name','suppliers.email','suppliers.address','suppliers.contact','suppliers.city','suppliers.state','suppliers.zipcode','suppliers.country','location.location_name')
                            ->first();

    $data['itemInfo'] = DB::table('receive_order_details')
                            ->leftjoin('item_tax_types','item_tax_types.id','=','receive_order_details.tax_type_id')
                            ->select('receive_order_details.*','item_tax_types.tax_rate')
                            ->where(['receive_id'=>$id])
                            ->get();

      $pref                  = DB::table('preference')->where('category', 'company')->get();
      $companyData            = AssColumn($a=$pref, $column='id');
      $array_data = array();
      foreach($companyData as $row)
      {
        $array_data[$row->category][$row->field] = $row->value;         
      }
      $data['companyInfo'] = $array_data;

        $pdf = PDF::loadView('admin.receive.print', $data);
        $pdf->setPaper(array(0,0,750,1060), 'portrait');
        return $pdf->stream('receive.pdf',array("Attachment"=>0));       
    }

    public function allReceive($order_no){
        $oderInfo = DB::table('purch_orders')->where(['order_no'=>$order_no])->first();
        $itemInfo = DB::table('purch_order_details')->where(['order_no'=>$order_no])->get();
        
        $receiveOrderInfo['order_no'] = $oderInfo->order_no;
        $receiveOrderInfo['person_id'] = \Auth::user()->id;
        $receiveOrderInfo['reference'] = $oderInfo->reference;
        $receiveOrderInfo['location'] = $oderInfo->into_stock_location;
        $receiveOrderInfo['receive_date'] = date('Y-m-d');
        $receiveOrderInfo['supplier_id'] = $oderInfo->supplier_id;
        $receiveId = DB::table('receive_orders')->insertGetId($receiveOrderInfo);

        foreach ($itemInfo as $key => $item) {
            if(($item->quantity_ordered-$item->qty_received)>0){
            $receiveDetails['order_no'] = $oderInfo->order_no;
            $receiveDetails['receive_id'] = $receiveId;
            $receiveDetails['item_code'] = $item->item_code;
            $receiveDetails['description'] = $item->description;
            $receiveDetails['tax_type_id'] = $item->tax_type_id;
            $receiveDetails['unit_price'] = $item->unit_price;
            $receiveDetails['quantity'] = ($item->quantity_ordered-$item->qty_received);
            DB::table('receive_order_details')->insert($receiveDetails);

            $stockMove['receive_id'] = $receiveId;
            $stockMove['stock_id'] = $item->item_code;
            $stockMove['trans_type'] = PURCHINVOICE;
            $stockMove['loc_code'] = $oderInfo->into_stock_location;
            $stockMove['tran_date'] = date('Y-m-d');
            $stockMove['person_id'] = \Auth::user()->id;
            $stockMove['reference'] = 'store_in_'.$order_no;
            $stockMove['transaction_reference_id'] =$order_no;
            $stockMove['qty'] = ($item->quantity_ordered-$item->qty_received);
            $stockMove['price'] = $item->unit_price;
            DB::table('stock_moves')->insert($stockMove);

            $oderItemDetails = DB::table('purch_order_details')
                                ->select('qty_received')
                                ->where(['order_no'=>$order_no,'item_code'=>$item->item_code])
                                ->first();
           
            $revQty = ($oderItemDetails->qty_received+($item->quantity_ordered-$item->qty_received));

            DB::table('purch_order_details')
                ->where(['order_no'=>$order_no,'item_code'=>$item->item_code])
                ->update(['qty_received'=>$revQty]);   
            }         

        }

        Session::flash('success',trans('message.success.save_success'));
        return redirect()->intended('purchase/view-purchase-details/'.$order_no);
    }

    public function manualReceive($order_no){
    $data['menu'] = 'purchase';
    $data['oderInfo'] = DB::table('purch_orders')->where(['order_no'=>$order_no])->first();
    $data['itemInfo'] = DB::table('purch_order_details')
                        ->leftjoin('item_tax_types','item_tax_types.id','=','purch_order_details.tax_type_id')
                        ->leftjoin('item_code','item_code.stock_id','=','purch_order_details.item_code')
                        ->select('purch_order_details.*','item_tax_types.tax_rate','item_code.id as item_id')
                        ->where(['order_no'=>$order_no])
                        ->get();
    return view('admin.receive.receive_add', $data); 
    }

    public function manualStore(Request $request){
        //d($request->all(),1);
        $receiveOrderInfo['order_no'] = $request->order_no;
        $receiveOrderInfo['person_id'] = \Auth::user()->id;
        $receiveOrderInfo['reference'] = $request->order_reference;
        $receiveOrderInfo['location'] = $request->location;
        $receiveOrderInfo['supplier_id'] = $request->supplier_id;
        $receiveOrderInfo['receive_date'] = date('Y-m-d',strtotime($request->receive_date));
       // d($request->all(),1);
        $receiveId = DB::table('receive_orders')->insertGetId($receiveOrderInfo);

        $items = $request->item_code;
        $description = $request->description;
        $quantity = $request->quantity;
        $unit_price = $request->unit_price;
        $tax_type_id = $request->tax_type_id;

        foreach ($items as $key => $item) {
            if(($quantity[$key])>0){
            $receiveDetails['order_no'] = $request->order_no;
            $receiveDetails['receive_id'] = $receiveId;
            $receiveDetails['item_code'] = $item;
            $receiveDetails['description'] = $description[$key];
            $receiveDetails['tax_type_id'] = $tax_type_id[$key];
            $receiveDetails['unit_price'] = $unit_price[$key];
            $receiveDetails['quantity'] = $quantity[$key];
            DB::table('receive_order_details')->insert($receiveDetails);

            $stockMove['receive_id'] = $receiveId;
            $stockMove['stock_id'] = $item;
            $stockMove['trans_type'] = PURCHINVOICE;
            $stockMove['loc_code'] = $request->location;
            $stockMove['tran_date'] = date('Y-m-d');
            $stockMove['person_id'] = \Auth::user()->id;
            $stockMove['reference'] = 'store_in_'.$request->order_no;
            $stockMove['transaction_reference_id'] = $request->order_no;
            $stockMove['qty'] = $quantity[$key];
            $stockMove['price'] = $unit_price[$key];
            DB::table('stock_moves')->insert($stockMove);

            $oderItemDetails = DB::table('purch_order_details')
                                ->select('qty_received')
                                ->where(['order_no'=> $request->order_no,'item_code'=>$item])
                                ->first();
           
            $revQty = ($oderItemDetails->qty_received+$quantity[$key]);

            DB::table('purch_order_details')
                ->where(['order_no'=>$request->order_no,'item_code'=>$item])
                ->update(['qty_received'=>$revQty]);   
            }         

        }

        Session::flash('success',trans('message.success.save_success'));
        return redirect()->intended('purchase/view-purchase-details/'.$request->order_no);
    }


}
