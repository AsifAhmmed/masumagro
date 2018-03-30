<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\EmailController;
use App\Http\Requests;
use DB;
use App\Http\Start\Helpers;
use Image;
use Session;

class SettingController extends Controller
{
    

    public function __construct(EmailController $email){
        $this->email = $email;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = \Auth::user()->id;
        $data['menu'] = 'setting';
        $data['sub_menu'] = 'general';
        $data['list_menu'] = 'profile';
        $data['roleData'] = DB::table('security_role')->get();
        $data['userData'] = DB::table('users')->where('id', '=', $id)->first();
        
        return view('admin.setting.editProfile', $data);
    }

    public function mailTemp()
    {
        $data['menu'] = 'setting';
        $data['sub_menu'] = 'mail-temp';
        $data['tempData'] = DB::table('email_temp')->get();
        
        return view('admin.mailTemp.temp_list', $data);
    }

    public function finance()
    {
        $data['menu'] = 'setting';
        $data['sub_menu'] = 'finance';
        $data['list_menu'] = 'tax';
        
        return view('admin.setting.finance', $data);
    }

    public function currency()
    {
        $data['menu'] = 'setting';
        $data['sub_menu'] = 'finance';
        $data['list_menu'] = 'currency';
        $data['currencyData'] = DB::table('currency')->get();
        
        return view('admin.setting.currency', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:2',
            'symbol' => 'required',
        ]);

        $data['name'] = $request->name;
        $data['symbol'] = $request->symbol;

        $id = \DB::table('currency')->insertGetId($data);

        if (!empty($id)) {

            \Session::flash('success',trans('message.success.save_success'));
            return redirect()->intended('currency');
        } else {

            return back()->withInput()->withErrors(['email' => "Invalid Request !"]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit()
    {
        $id = $_POST['id'];

        $currData = \DB::table('currency')->where('id', $id)->first();
        
        $return_arr['name'] = $currData->name;
        $return_arr['symbol'] = $currData->symbol;
        $return_arr['id'] = $currData->id;

        echo json_encode($return_arr);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:2',
            'symbol' => 'required',
            'id' => 'required',
        ]);

        $id = $request->id;
        $data['name'] = $request->name;
        $data['symbol'] = $request->symbol;

        \DB::table('currency')->where('id', $id)->update($data);

        \Session::flash('success',trans('message.success.update_success'));
            return redirect()->intended('currency');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (isset($id)) {
            $record = \DB::table('currency')->where('id', $id)->first();
            if ($record) {
                
                \DB::table('currency')->where('id', '=', $id)->delete();

                \Session::flash('success',trans('message.success.delete_success'));
                return redirect()->intended('currency');
            }
        }
    }

    public function preference()
    {
        $data['menu'] = 'setting';
        $data['sub_menu'] = 'preference';
        $data['currencyData'] = DB::table('currency')->get();
        $pref                      = DB::table('preference')->where('category', 'preference')->get();
        $companyData               = AssColumn($a=$pref, $column='id');
        $array_data = array();
        foreach($companyData as $row)
        {
          $array_data[$row->category][$row->field] = $row->value;         
        }
        $data['prefData'] = $array_data;
       
        return view('admin.setting.preference', $data);
    }

    public function savePreference(Request $request)
    {

        $post = $request->all();
        unset($post['_token']);

        if($post['date_format'] == 0) {
            $post['date_format_type'] = 'yyyy'.$post['date_sepa'].'mm'.$post['date_sepa'].'dd';
        }elseif ($post['date_format'] == 1) {
            $post['date_format_type'] = 'dd'.$post['date_sepa'].'mm'.$post['date_sepa'].'yyyy';
        }elseif ($post['date_format'] == 2) {
            $post['date_format_type'] = 'mm'.$post['date_sepa'].'dd'.$post['date_sepa'].'yyyy';
        }elseif ($post['date_format'] == 3) {
            $post['date_format_type'] = 'dd'.$post['date_sepa'].'M'.$post['date_sepa'].'yyyy';
        }elseif ($post['date_format'] == 4) {
            $post['date_format_type'] = 'yyyy'.$post['date_sepa'].'M'.$post['date_sepa'].'dd';
        }

        $i=0;
        foreach ($post as $key => $value) {
            $data[$i]['category'] = "preference";
            $data[$i]['field'] = $key;
            $data[$i]['value'] = $value;
            $i++;
        }
         foreach($data as $key => $value){
            $category = $value['category']; 
            $field    = $value['field'];
            $val      = $value['value'];
            $res      = DB::table('preference')->where(['field' => $field])->first();
            if(count($res)==0){
                DB::insert(DB::raw("INSERT INTO preference(category,field,value) VALUES ('$category','$field','$val')"));
            }else{
                DB::table('preference')->where(['category'=>'preference','field' => $field])->update(array('field'=>$field,'value' => $val));
            }
            
        }

            
     $pref = DB::table('preference')->where('category','preference')->get();
        if(!empty($pref)) {
                $prefData = AssColumn($a=$pref, $column='id');
                foreach ($prefData as $value) {
                    $prefer[$value->field] = $value->value;
                }
            Session::put($prefer);
        } 
            

            Session::flash('success',trans('message.success.save_success'));
            return redirect()->intended('setting-preference');
        

    }

    public function backupDB()
    {
        $backup_name = backup_tables(env('DB_HOST'), env('DB_USERNAME'), env('DB_PASSWORD'), env('DB_DATABASE'));
        if($backup_name != 0){
            DB::table('backup')->insert(['name' => $backup_name, 'created_at' => date('Y-m-d H:i:s')]);
            \Session::flash('success',trans('message.success.save_success'));
        }
        return redirect()->intended('backup/list');
    }

    public function backupList()
    {
        $data['menu'] = 'setting';
        $data['sub_menu'] = 'general';
        $data['list_menu'] = 'backup';
        $data['path'] = storage_path();
        $data['backupData'] = DB::table('backup')->orderBy('id', 'desc')->get();
        
        return view('admin.setting.backupList', $data);
    }

    public function emailSetup()
    {
        $data['menu'] = 'setting';
        $data['sub_menu'] = 'general';
        $data['list_menu'] = 'email_setup';
        $data['emailConfigData'] = DB::table('email_config')->first();
        return view('admin.setting.emailConfig',$data);
    }

    public function emailSaveConfig(Request $request)
    {
        $data = $request->all();
        unset($data['_token']);
        $data['email_protocol'] = 'smtp';
        
        $emailConfig = DB::table('email_config')->where('id', 1)->first();
        if(!empty($emailConfig)) {
            DB::table('email_config')->where('id', 1)->update($data);
        }else{

            DB::table('email_config')->insert($data);
        }

         \Session::flash('success',trans('message.success.save_success'));
            return redirect()->intended('email/setup');
    }

    public function testEmailConfig()
    {
        
        $from = \Config::get('mail.from');
        $data['mailTo'] = $_POST['email'];
        $data['mailfrom'] = $from['address'];
        $data['subject']  = 'Testing Email';
        $data['message']  = 'Hello, <br>This is a test email.<br>Thanks';
        $this->email->sendEmail($data['mailTo'],$data['subject'],$data['message']);
        $return_arr['name'] = $data['mailTo'];

        echo json_encode($return_arr);

    }

    public function paymentTerm()
    {
        $data['menu'] = 'setting';
        $data['sub_menu'] = 'finance';
        $data['list_menu'] = 'payment_term';
        $data['paymentTermData'] = DB::table('invoice_payment_terms')->get();
        //d($data['paymentTermData'],1);
        
        return view('admin.payment.paymentTerm',$data);
    }

    public function addPaymentTerms(Request $request)
    {
        $data = $request->all();
        unset($data['_token']);

        if($request->defaults == 1) {
            DB::table('invoice_payment_terms')->where('defaults', 1)->update(['defaults'=>0]);
        }

        DB::table('invoice_payment_terms')->insert($data);

        \Session::flash('success',trans('message.success.save_success'));
            return redirect()->intended('payment/terms');
    }

    public function editPaymentTerms()
    {
        $id = $_POST['id'];

        $termData = DB::table('invoice_payment_terms')->where('id',$id)->first();

        $return_arr['id'] = $termData->id;
        $return_arr['terms'] = $termData->terms;
        $return_arr['days_before_due'] = $termData->days_before_due;
        $return_arr['defaults'] = $termData->defaults;

        echo json_encode($return_arr);
    }

    public function updatePaymentTerms(Request $request)
    {
        $id = $request->id;
        $data = $request->all();
        unset($data['_token']);
        unset($data['id']);

        if($request->defaults == 1) {
            DB::table('invoice_payment_terms')->where('defaults', 1)->update(['defaults'=>0]);
        }
        
        DB::table('invoice_payment_terms')->where('id',$id)->update($data);

        \Session::flash('success',trans('message.success.update_success'));
            return redirect()->intended('payment/terms');
    }

    public function deletePaymentTerm($id)
    {
        if (isset($id)) {
            $record = \DB::table('invoice_payment_terms')->where('id', $id)->first();
            if ($record) {
                
                \DB::table('invoice_payment_terms')->where('id', '=', $id)->delete();

                \Session::flash('success',trans('message.success.delete_success'));
                return redirect()->intended('payment/terms');
            }
        }
    }

    public function paymentMethod()
    {
        $data['menu'] = 'setting';
        $data['sub_menu'] = 'finance';
        $data['list_menu'] = 'payment_method';
        $data['paymentMethodData'] = DB::table('payment_terms')->get();
        //d($data['paymentTermData'],1);
        
        return view('admin.payment.paymentMethod',$data);
    }

    public function addPaymentMethod(Request $request)
    {
        $data = $request->all();
        unset($data['_token']);

        if($request->defaults == 1) {
            DB::table('payment_terms')->where('defaults', 1)->update(['defaults'=>0]);
        }

        DB::table('payment_terms')->insert($data);

        \Session::flash('success',trans('message.success.save_success'));
            return redirect()->intended('payment/method');
    }

    public function editPaymentMethod()
    {
        $id = $_POST['id'];

        $methodData = DB::table('payment_terms')->where('id',$id)->first();

        $return_arr['id'] = $methodData->id;
        $return_arr['name'] = $methodData->name;
        $return_arr['defaults'] = $methodData->defaults;

        echo json_encode($return_arr);
    }

    public function updatePaymentMethod(Request $request)
    {
        $id = $request->id;
        $data = $request->all();
        unset($data['_token']);
        unset($data['id']);

        if($request->defaults == 1) {
            DB::table('payment_terms')->where('defaults', 1)->update(['defaults'=>0]);
        }
        
        DB::table('payment_terms')->where('id',$id)->update($data);

        \Session::flash('success',trans('message.success.update_success'));
            return redirect()->intended('payment/method');
    }

    public function deletePaymentMethod($id)
    {
        if (isset($id)) {
            $record = \DB::table('payment_terms')->where('id', $id)->first();
            if ($record) {
                
                \DB::table('payment_terms')->where('id', '=', $id)->delete();

                \Session::flash('success',trans('message.success.delete_success'));
                return redirect()->intended('payment/method');
            }
        }
    }

    public function companySetting()
    {
        $data['menu'] = 'setting';
        $data['sub_menu'] = 'company';
        $data['list_menu'] = 'sys_company';
        $data['paymentMethodData'] = DB::table('payment_terms')->get();
        $data['countries'] = DB::table('countries')->get();
        $data['currencyData'] = DB::table('currency')->get();
        $data['saleTypes'] = DB::table('sales_types')->get();
        $pref                      = DB::table('preference')->where('category', 'company')->get();
        $companyData               = AssColumn($a=$pref, $column='id');
        $array_data = array();
        foreach($companyData as $row)
        {
          $array_data[$row->category][$row->field] = $row->value;         
        }
        $data['companyData'] = $array_data;
        //d($data['companyData'],1);
        return view('admin.setting.companySetting',$data);
    }

    public function companySettingSave(Request $request)
    { 
        $post = $request->all();
        $logo = $request->file('logo');
        unset($post['_token']);
        unset($post['pic']);
        //unset($post['logo']);

        if(isset($logo)){
          $destinationPath = public_path("/uploads/");
          $ext = $logo->getClientOriginalExtension();
          $filename = 'logo.'.$ext;
          $img = Image::make($logo->getRealPath());

          $img->resize(80,80, function ($constraint) {
                $constraint->aspectRatio();
            })->save($destinationPath.'/'.$filename);
        }

        if(isset($filename)){
            $filename = $filename;
        }else{
            $filename = null;
        }
      //d($filename,1);
        $i = 0;
        foreach ($post as $key => $value) {
            $data[$i]['category'] = 'company'; 
            $data[$i]['field'] = $key;

            if($key =='logo')
             $data[$i]['value'] = $filename;
            
            else
            $data[$i]['value'] = $value;

        
            $i++;
        }

        foreach($data as $key => $value){
            $category = $value['category'];
            $field    = $value['field'];
            $val      = $value['value'];
            $res      = DB::table('preference')->where(['field' => $field])->first();
            if(count($res)==0){
                DB::insert(DB::raw("INSERT INTO preference(category,field,value) VALUES ('$category','$field','$val')"));
            }else{
                DB::table('preference')->where(['category'=>'company','field' => $field])->update(array('field'=>$field,'value' => $val));
            }
        }
        $pref = DB::table('preference')->where('category','company')->get();
        if(!empty($pref)) {
                $prefData = AssColumn($a=$pref, $column='id');
                foreach ($prefData as $value) {
                    $prefer[$value->field] = $value->value;
                }
            Session::put($prefer);
        }


        Session::flash('success',trans('message.success.update_success'));
        return redirect()->intended('company/setting');
    }
}
