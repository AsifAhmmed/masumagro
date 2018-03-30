<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use DB;

class Report extends Model
{
	
    public function getInventoryStockOnHand($type,$location)
    {
    	if($type=='all' && $location=='all'){
    	$data = DB::select(DB::raw("SELECT item.stock_id,item.description,COALESCE(sp.price,0) as retail_price,COALESCE(sm.qty,0) as available_qty,COALESCE(pod.received_qty,0) as received_qty,COALESCE(pod.price,0) as cost_amount 
			FROM(SELECT * FROM stock_master WHERE inactive=0 AND deleted_status = 0)item

			LEFT JOIN(SELECT stock_id,price FROM sale_prices WHERE sales_type_id = 1)sp
			ON sp.stock_id = item.stock_id

			LEFT JOIN(SELECT stock_id,sum(qty)as qty FROM stock_moves GROUP BY stock_id)sm
			ON sm.stock_id = item.stock_id

			LEFT JOIN(SELECT `item_code` as stock_id,SUM(`unit_price`*`qty_invoiced`) as price,SUM(`qty_invoiced`) as received_qty FROM `purch_order_details` GROUP BY `item_code` )pod
			ON pod.stock_id = item.stock_id
    		"));
    	}else if($type=='all' && $location !='all'){
    	
    	$data = DB::select(DB::raw("SELECT item.stock_id,item.description,COALESCE(sp.price,0) as retail_price,COALESCE(sm.qty,0) as available_qty,COALESCE(pod.received_qty,0) as received_qty,COALESCE(pod.price,0) as cost_amount 
			FROM(SELECT * FROM stock_master WHERE inactive=0 AND deleted_status = 0)item

			LEFT JOIN(SELECT stock_id,price FROM sale_prices WHERE sales_type_id = 1)sp
			ON sp.stock_id = item.stock_id

			LEFT JOIN(SELECT stock_id,sum(qty)as qty FROM stock_moves WHERE loc_code = '$location' GROUP BY stock_id)sm
			ON sm.stock_id = item.stock_id

			LEFT JOIN(SELECT `item_code` as stock_id,SUM(`unit_price`*`qty_invoiced`) as price,SUM(`qty_invoiced`) as received_qty FROM `purch_order_details` GROUP BY `item_code` )pod
			ON pod.stock_id = item.stock_id
    		"));
    	}else if($type !='all' && $location =='all'){
    	
    	$data = DB::select(DB::raw("SELECT item.stock_id,item.description,COALESCE(sp.price,0) as retail_price,COALESCE(sm.qty,0) as available_qty,COALESCE(pod.received_qty,0) as received_qty,COALESCE(pod.price,0) as cost_amount 
			FROM(SELECT * FROM stock_master WHERE category_id='$type' AND inactive=0 AND deleted_status = 0)item

			LEFT JOIN(SELECT stock_id,price FROM sale_prices WHERE sales_type_id = 1)sp
			ON sp.stock_id = item.stock_id

			LEFT JOIN(SELECT stock_id,sum(qty)as qty FROM stock_moves GROUP BY stock_id)sm
			ON sm.stock_id = item.stock_id

			LEFT JOIN(SELECT `item_code` as stock_id,SUM(`unit_price`*`qty_invoiced`) as price,SUM(`qty_invoiced`) as received_qty FROM `purch_order_details` GROUP BY `item_code` )pod
			ON pod.stock_id = item.stock_id
    		"));

    	}

		else if($type !='all' && $location !='all'){
    	
    	$data = DB::select(DB::raw("SELECT item.stock_id,item.description,COALESCE(sp.price,0) as retail_price,COALESCE(sm.qty,0) as available_qty,COALESCE(pod.received_qty,0) as received_qty,COALESCE(pod.price,0) as cost_amount 
			FROM(SELECT * FROM stock_master WHERE category_id='$type' AND inactive=0 AND deleted_status = 0)item

			LEFT JOIN(SELECT stock_id,price FROM sale_prices WHERE sales_type_id = 1)sp
			ON sp.stock_id = item.stock_id

			LEFT JOIN(SELECT stock_id,sum(qty)as qty FROM stock_moves WHERE loc_code = '$location' GROUP BY stock_id)sm
			ON sm.stock_id = item.stock_id

			LEFT JOIN(SELECT `item_code` as stock_id,SUM(`unit_price`*`qty_invoiced`) as price,SUM(`qty_invoiced`) as received_qty FROM `purch_order_details` GROUP BY `item_code` )pod
			ON pod.stock_id = item.stock_id
    		"));

    	}

    	return $data;
    }
    public function getInventoryStockOnHandPdf($type,$location)
    {

    	if($type=='all' && $location=='all'){
    	$data = DB::select(DB::raw("SELECT item.stock_id,item.description,COALESCE(sp.price,0) as retail_price,COALESCE(sm.qty,0) as available_qty,COALESCE(pod.received_qty,0) as received_qty,COALESCE(pod.price,0) as cost_amount 
			FROM(SELECT * FROM stock_master)item

			LEFT JOIN(SELECT stock_id,price FROM sale_prices WHERE sales_type_id = 1)sp
			ON sp.stock_id = item.stock_id

			LEFT JOIN(SELECT stock_id,sum(qty)as qty FROM stock_moves GROUP BY stock_id)sm
			ON sm.stock_id = item.stock_id

			LEFT JOIN(SELECT `item_code` as stock_id,SUM(`unit_price`*`qty_invoiced`) as price,SUM(`qty_invoiced`) as received_qty FROM `purch_order_details` GROUP BY `item_code` )pod
			ON pod.stock_id = item.stock_id
    		"));
    	}else if($type=='all' && $location !='all'){
    	
    	$data = DB::select(DB::raw("SELECT item.stock_id,item.description,COALESCE(sp.price,0) as retail_price,COALESCE(sm.qty,0) as available_qty,COALESCE(pod.received_qty,0) as received_qty,COALESCE(pod.price,0) as cost_amount 
			FROM(SELECT * FROM stock_master)item

			LEFT JOIN(SELECT stock_id,price FROM sale_prices WHERE sales_type_id = 1)sp
			ON sp.stock_id = item.stock_id

			LEFT JOIN(SELECT stock_id,sum(qty)as qty FROM stock_moves WHERE loc_code = '$location' GROUP BY stock_id)sm
			ON sm.stock_id = item.stock_id

			LEFT JOIN(SELECT `item_code` as stock_id,SUM(`unit_price`*`qty_invoiced`) as price,SUM(`qty_invoiced`) as received_qty FROM `purch_order_details` GROUP BY `item_code` )pod
			ON pod.stock_id = item.stock_id
    		"));
    	}else if($type !='all' && $location =='all'){
    	
    	$data = DB::select(DB::raw("SELECT item.stock_id,item.description,COALESCE(sp.price,0) as retail_price,COALESCE(sm.qty,0) as available_qty,COALESCE(pod.received_qty,0) as received_qty,COALESCE(pod.price,0) as cost_amount 
			FROM(SELECT * FROM stock_master WHERE category_id='$type')item

			LEFT JOIN(SELECT stock_id,price FROM sale_prices WHERE sales_type_id = 1)sp
			ON sp.stock_id = item.stock_id

			LEFT JOIN(SELECT stock_id,sum(qty)as qty FROM stock_moves GROUP BY stock_id)sm
			ON sm.stock_id = item.stock_id

			LEFT JOIN(SELECT `item_code` as stock_id,SUM(`unit_price`*`qty_invoiced`) as price,SUM(`qty_invoiced`) as received_qty FROM `purch_order_details` GROUP BY `item_code` )pod
			ON pod.stock_id = item.stock_id
    		"));

    	}

		else if($type !='all' && $location !='all'){
    	
    	$data = DB::select(DB::raw("SELECT item.stock_id,item.description,COALESCE(sp.price,0) as retail_price,COALESCE(sm.qty,0) as available_qty,COALESCE(pod.received_qty,0) as received_qty,COALESCE(pod.price,0) as cost_amount 
			FROM(SELECT * FROM stock_master WHERE category_id='$type')item

			LEFT JOIN(SELECT stock_id,price FROM sale_prices WHERE sales_type_id = 1)sp
			ON sp.stock_id = item.stock_id

			LEFT JOIN(SELECT stock_id,sum(qty)as qty FROM stock_moves WHERE loc_code = '$location' GROUP BY stock_id)sm
			ON sm.stock_id = item.stock_id

			LEFT JOIN(SELECT `item_code` as stock_id,SUM(`unit_price`*`qty_invoiced`) as price,SUM(`qty_invoiced`) as received_qty FROM `purch_order_details` GROUP BY `item_code` )pod
			ON pod.stock_id = item.stock_id
    		"));

    	}

    	return $data;
    }

     public function getSalesReport($type, $from, $to, $year, $month, $item, $customer, $location)
  	{

  	$from = DbDateFormat($from);
  	$to = DbDateFormat($to);

  	$whereConditions = '';
  	if($customer != 'all'){
  		$whereConditions .= " AND sales_orders.debtor_no = '$customer'";
  	}
  	if($item != 'all'){
  		$whereConditions .= " AND infos.stock_id = '$item'";
  	}
  	if($location != 'all'){
  		$whereConditions .= " AND sales_orders.from_stk_loc = '$location'";
  	}

  	if( $type=='daily' ){
  		 // Daily End Here
		$data = DB::select(DB::raw("SELECT sales_orders.ord_date,count(infos.order_no) as total_order,SUM(infos.qty) as qty,infos.stock_id,
			SUM(infos.purchase_price_excl_tax) as purchase_price_excl_tax,
			SUM(infos.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(infos.purchase_price_incl_tax) as purchase_price_incl_tax,
			SUM(infos.sale_price_incl_tax) as sale_price_incl_tax

			FROM sales_orders
				LEFT JOIN(SELECT sale_purch_detail.order_no,sale_purch_detail.stock_id, count(sale_purch_detail.order_no)as total_order,
				SUM(sale_purch_detail.quantity)as qty,
				SUM(sale_purch_detail.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(sale_purch_detail.purchase_price_excl_tax)as purchase_price_excl_tax,
				SUM(sale_purch_detail.sale_price_incl_tax) as sale_price_incl_tax,
				SUM(sale_purch_detail.purchase_price_incl_tax)as purchase_price_incl_tax
				FROM(
					SELECT sd.*,
					(sd.quantity*pd.purchase_rate_incl_tax)as purchase_price_incl_tax,
					(sd.quantity*pd.purchase_rate_excl_tax)as purchase_price_excl_tax
					 FROM(SELECT sod.order_no,sod.stock_id,sod.quantity,(sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100) as sale_price_excl_tax,((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)+((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)*itt.tax_rate/100)) as sale_price_incl_tax
					FROM sales_order_details as sod
					LEFT JOIN item_tax_types as itt
					ON itt.id = sod.tax_type_id

					WHERE sod.trans_type = 202)sd
					LEFT JOIN(SELECT pod.item_code,ROUND(SUM(pod.unit_price*pod.quantity_received)/SUM(pod.quantity_received),2) as purchase_rate_excl_tax,ROUND(SUM(pod.unit_price*pod.quantity_received+pod.unit_price*pod.quantity_received*itt.tax_rate/100)/SUM(pod.quantity_received),2) as purchase_rate_incl_tax FROM purch_order_details as pod LEFT JOIN item_tax_types as itt ON itt.id = pod.tax_type_id GROUP BY pod.item_code)pd
					ON sd.stock_id = pd.item_code


				)sale_purch_detail
				GROUP BY sale_purch_detail.order_no)infos
				ON infos.order_no = sales_orders.order_no
				WHERE sales_orders.trans_type = 202 
				$whereConditions
				GROUP BY sales_orders.ord_date 
				ORDER BY sales_orders.ord_date DESC
				"));
  		 // Daily End Here
  	}else if( $type=='monthly' ){

		$data = DB::select(DB::raw("SELECT sales_orders.ord_date,count(infos.order_no) as total_order,SUM(infos.qty) as qty,infos.stock_id,
			SUM(infos.purchase_price_excl_tax) as purchase_price_excl_tax,
			SUM(infos.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(infos.purchase_price_incl_tax) as purchase_price_incl_tax,
			SUM(infos.sale_price_incl_tax) as sale_price_incl_tax

			FROM sales_orders
				LEFT JOIN(SELECT sale_purch_detail.order_no,sale_purch_detail.stock_id, count(sale_purch_detail.order_no)as total_order,
				SUM(sale_purch_detail.quantity)as qty,
				SUM(sale_purch_detail.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(sale_purch_detail.purchase_price_excl_tax)as purchase_price_excl_tax,
				SUM(sale_purch_detail.sale_price_incl_tax) as sale_price_incl_tax,
				SUM(sale_purch_detail.purchase_price_incl_tax)as purchase_price_incl_tax
				FROM(
					SELECT sd.*,
					(sd.quantity*pd.purchase_rate_incl_tax)as purchase_price_incl_tax,
					(sd.quantity*pd.purchase_rate_excl_tax)as purchase_price_excl_tax
					 FROM(SELECT sod.order_no,sod.stock_id,sod.quantity,(sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100) as sale_price_excl_tax,((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)+((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)*itt.tax_rate/100)) as sale_price_incl_tax
					FROM sales_order_details as sod
					LEFT JOIN item_tax_types as itt
					ON itt.id = sod.tax_type_id

					WHERE sod.trans_type = 202)sd
					LEFT JOIN(SELECT pod.item_code,ROUND(SUM(pod.unit_price*pod.quantity_received)/SUM(pod.quantity_received),2) as purchase_rate_excl_tax,ROUND(SUM(pod.unit_price*pod.quantity_received+pod.unit_price*pod.quantity_received*itt.tax_rate/100)/SUM(pod.quantity_received),2) as purchase_rate_incl_tax FROM purch_order_details as pod LEFT JOIN item_tax_types as itt ON itt.id = pod.tax_type_id GROUP BY pod.item_code)pd
					ON sd.stock_id = pd.item_code


				)sale_purch_detail
				GROUP BY sale_purch_detail.order_no)infos
				ON infos.order_no = sales_orders.order_no
				WHERE sales_orders.trans_type = 202 

				$whereConditions

                AND YEAR(sales_orders.ord_date) = YEAR(NOW())
                GROUP BY MONTH(sales_orders.ord_date)
				ORDER BY sales_orders.ord_date DESC
				"));

  	}else if( $type=='yearly' ){
  		//d($type,1);
  		if( $year=='all' ){
		$data = DB::select(DB::raw("SELECT sales_orders.ord_date,count(infos.order_no) as total_order,SUM(infos.qty) as qty,infos.stock_id,
			SUM(infos.purchase_price_excl_tax) as purchase_price_excl_tax,
			SUM(infos.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(infos.purchase_price_incl_tax) as purchase_price_incl_tax,
			SUM(infos.sale_price_incl_tax) as sale_price_incl_tax

			FROM sales_orders
				LEFT JOIN(SELECT sale_purch_detail.order_no,sale_purch_detail.stock_id, count(sale_purch_detail.order_no)as total_order,
				SUM(sale_purch_detail.quantity)as qty,
				SUM(sale_purch_detail.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(sale_purch_detail.purchase_price_excl_tax)as purchase_price_excl_tax,
				SUM(sale_purch_detail.sale_price_incl_tax) as sale_price_incl_tax,
				SUM(sale_purch_detail.purchase_price_incl_tax)as purchase_price_incl_tax
				FROM(
					SELECT sd.*,
					(sd.quantity*pd.purchase_rate_incl_tax)as purchase_price_incl_tax,
					(sd.quantity*pd.purchase_rate_excl_tax)as purchase_price_excl_tax
					 FROM(SELECT sod.order_no,sod.stock_id,sod.quantity,(sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100) as sale_price_excl_tax,((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)+((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)*itt.tax_rate/100)) as sale_price_incl_tax
					FROM sales_order_details as sod
					LEFT JOIN item_tax_types as itt
					ON itt.id = sod.tax_type_id

					WHERE sod.trans_type = 202)sd
					LEFT JOIN(SELECT pod.item_code,ROUND(SUM(pod.unit_price*pod.quantity_received)/SUM(pod.quantity_received),2) as purchase_rate_excl_tax,ROUND(SUM(pod.unit_price*pod.quantity_received+pod.unit_price*pod.quantity_received*itt.tax_rate/100)/SUM(pod.quantity_received),2) as purchase_rate_incl_tax FROM purch_order_details as pod LEFT JOIN item_tax_types as itt ON itt.id = pod.tax_type_id GROUP BY pod.item_code)pd
					ON sd.stock_id = pd.item_code


				)sale_purch_detail
				GROUP BY sale_purch_detail.order_no)infos
				ON infos.order_no = sales_orders.order_no
				WHERE sales_orders.trans_type = 202 
				$whereConditions
				GROUP BY YEAR(sales_orders.ord_date)
				ORDER BY sales_orders.ord_date DESC
				"));
  		}elseif ($year !='all') {
  			if( $month=='all' ){

		$data = DB::select(DB::raw("SELECT sales_orders.ord_date,count(infos.order_no) as total_order,SUM(infos.qty) as qty,infos.stock_id,
			SUM(infos.purchase_price_excl_tax) as purchase_price_excl_tax,
			SUM(infos.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(infos.purchase_price_incl_tax) as purchase_price_incl_tax,
			SUM(infos.sale_price_incl_tax) as sale_price_incl_tax

			FROM sales_orders
				LEFT JOIN(SELECT sale_purch_detail.order_no,sale_purch_detail.stock_id, count(sale_purch_detail.order_no)as total_order,
				SUM(sale_purch_detail.quantity)as qty,
				SUM(sale_purch_detail.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(sale_purch_detail.purchase_price_excl_tax)as purchase_price_excl_tax,
				SUM(sale_purch_detail.sale_price_incl_tax) as sale_price_incl_tax,
				SUM(sale_purch_detail.purchase_price_incl_tax)as purchase_price_incl_tax
				FROM(
					SELECT sd.*,
					(sd.quantity*pd.purchase_rate_incl_tax)as purchase_price_incl_tax,
					(sd.quantity*pd.purchase_rate_excl_tax)as purchase_price_excl_tax
					 FROM(SELECT sod.order_no,sod.stock_id,sod.quantity,(sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100) as sale_price_excl_tax,((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)+((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)*itt.tax_rate/100)) as sale_price_incl_tax
					FROM sales_order_details as sod
					LEFT JOIN item_tax_types as itt
					ON itt.id = sod.tax_type_id

					WHERE sod.trans_type = 202)sd
					LEFT JOIN(SELECT pod.item_code,ROUND(SUM(pod.unit_price*pod.quantity_received)/SUM(pod.quantity_received),2) as purchase_rate_excl_tax,ROUND(SUM(pod.unit_price*pod.quantity_received+pod.unit_price*pod.quantity_received*itt.tax_rate/100)/SUM(pod.quantity_received),2) as purchase_rate_incl_tax FROM purch_order_details as pod LEFT JOIN item_tax_types as itt ON itt.id = pod.tax_type_id GROUP BY pod.item_code)pd
					ON sd.stock_id = pd.item_code


				)sale_purch_detail
				GROUP BY sale_purch_detail.order_no)infos
				ON infos.order_no = sales_orders.order_no
				WHERE sales_orders.trans_type = 202 
 
				$whereConditions
                AND YEAR(sales_orders.ord_date) = '$year'
                GROUP BY MONTH(sales_orders.ord_date)
				ORDER BY sales_orders.ord_date DESC
				")); 
  		}else if( $month !='all'){

		$data = DB::select(DB::raw("SELECT sales_orders.ord_date,count(infos.order_no) as total_order,SUM(infos.qty) as qty,infos.stock_id,
			SUM(infos.purchase_price_excl_tax) as purchase_price_excl_tax,
			SUM(infos.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(infos.purchase_price_incl_tax) as purchase_price_incl_tax,
			SUM(infos.sale_price_incl_tax) as sale_price_incl_tax

			FROM sales_orders
				LEFT JOIN(SELECT sale_purch_detail.order_no,sale_purch_detail.stock_id, count(sale_purch_detail.order_no)as total_order,
				SUM(sale_purch_detail.quantity)as qty,
				SUM(sale_purch_detail.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(sale_purch_detail.purchase_price_excl_tax)as purchase_price_excl_tax,
				SUM(sale_purch_detail.sale_price_incl_tax) as sale_price_incl_tax,
				SUM(sale_purch_detail.purchase_price_incl_tax)as purchase_price_incl_tax
				FROM(
					SELECT sd.*,
					(sd.quantity*pd.purchase_rate_incl_tax)as purchase_price_incl_tax,
					(sd.quantity*pd.purchase_rate_excl_tax)as purchase_price_excl_tax
					 FROM(SELECT sod.order_no,sod.stock_id,sod.quantity,(sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100) as sale_price_excl_tax,((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)+((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)*itt.tax_rate/100)) as sale_price_incl_tax
					FROM sales_order_details as sod
					LEFT JOIN item_tax_types as itt
					ON itt.id = sod.tax_type_id

					WHERE sod.trans_type = 202)sd
					LEFT JOIN(SELECT pod.item_code,ROUND(SUM(pod.unit_price*pod.quantity_received)/SUM(pod.quantity_received),2) as purchase_rate_excl_tax,ROUND(SUM(pod.unit_price*pod.quantity_received+pod.unit_price*pod.quantity_received*itt.tax_rate/100)/SUM(pod.quantity_received),2) as purchase_rate_incl_tax FROM purch_order_details as pod LEFT JOIN item_tax_types as itt ON itt.id = pod.tax_type_id GROUP BY pod.item_code)pd
					ON sd.stock_id = pd.item_code


				)sale_purch_detail
				GROUP BY sale_purch_detail.order_no)infos
				ON infos.order_no = sales_orders.order_no
				WHERE sales_orders.trans_type = 202 

				$whereConditions
                AND YEAR(sales_orders.ord_date) = '$year'
                AND MONTH(sales_orders.ord_date) = '$month'
                GROUP BY sales_orders.ord_date
				ORDER BY sales_orders.ord_date DESC
				"));
  			}
  		}

  	}elseif($type=='custom'){

		$data = DB::select(DB::raw("SELECT sales_orders.ord_date,count(infos.order_no) as total_order,SUM(infos.qty) as qty,infos.stock_id,
			SUM(infos.purchase_price_excl_tax) as purchase_price_excl_tax,
			SUM(infos.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(infos.purchase_price_incl_tax) as purchase_price_incl_tax,
			SUM(infos.sale_price_incl_tax) as sale_price_incl_tax

			FROM sales_orders
				LEFT JOIN(SELECT sale_purch_detail.order_no,sale_purch_detail.stock_id, count(sale_purch_detail.order_no)as total_order,
				SUM(sale_purch_detail.quantity)as qty,
				SUM(sale_purch_detail.sale_price_excl_tax) as sale_price_excl_tax,
			SUM(sale_purch_detail.purchase_price_excl_tax)as purchase_price_excl_tax,
				SUM(sale_purch_detail.sale_price_incl_tax) as sale_price_incl_tax,
				SUM(sale_purch_detail.purchase_price_incl_tax)as purchase_price_incl_tax
				FROM(
					SELECT sd.*,
					(sd.quantity*pd.purchase_rate_incl_tax)as purchase_price_incl_tax,
					(sd.quantity*pd.purchase_rate_excl_tax)as purchase_price_excl_tax
					 FROM(SELECT sod.order_no,sod.stock_id,sod.quantity,(sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100) as sale_price_excl_tax,((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)+((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)*itt.tax_rate/100)) as sale_price_incl_tax
					FROM sales_order_details as sod
					LEFT JOIN item_tax_types as itt
					ON itt.id = sod.tax_type_id

					WHERE sod.trans_type = 202)sd
					LEFT JOIN(SELECT pod.item_code,ROUND(SUM(pod.unit_price*pod.quantity_received)/SUM(pod.quantity_received),2) as purchase_rate_excl_tax,ROUND(SUM(pod.unit_price*pod.quantity_received+pod.unit_price*pod.quantity_received*itt.tax_rate/100)/SUM(pod.quantity_received),2) as purchase_rate_incl_tax FROM purch_order_details as pod LEFT JOIN item_tax_types as itt ON itt.id = pod.tax_type_id GROUP BY pod.item_code)pd
					ON sd.stock_id = pd.item_code


				)sale_purch_detail
				GROUP BY sale_purch_detail.order_no)infos
				ON infos.order_no = sales_orders.order_no
				WHERE sales_orders.trans_type = 202 
				$whereConditions
                AND sales_orders.ord_date BETWEEN '$from' AND '$to'
                GROUP BY sales_orders.ord_date
				ORDER BY sales_orders.ord_date DESC
				"));    	
	}
    	return $data;
    }

    public function getSalesReportByDate($date){
           $data = DB::select(DB::raw("
				SELECT so.reference,so.order_no,so.order_reference_id,so.debtor_no,so.ord_date,dm.name,info_table.* FROM sales_orders as so
				
				LEFT JOIN (

				SELECT psd.order_no, SUM(psd.quantity) as quantity,SUM(psd.sale_price_excl_tax) as sale_price_excl_tax,SUM(psd.sale_price_incl_tax) as sale_price_incl_tax,SUM(psd.purchase_price_excl_tax) as purchase_price_excl_tax,SUM(psd.purchase_price_incl_tax) as purchase_price_incl_tax  FROM(SELECT sd.*,(sd.quantity*pd.purchase_rate_incl_tax)as purchase_price_incl_tax,(sd.quantity*pd.purchase_rate_excl_tax)as purchase_price_excl_tax FROM(SELECT sod.order_no,sod.stock_id,sod.quantity,(sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100) as sale_price_excl_tax,((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)+((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)*itt.tax_rate/100)) as sale_price_incl_tax

				FROM sales_order_details as sod
				LEFT JOIN item_tax_types as itt
				ON itt.id = sod.tax_type_id
				WHERE sod.trans_type = 202)sd
				LEFT JOIN(SELECT pod.item_code,ROUND(SUM(pod.unit_price*pod.quantity_received)/SUM(pod.quantity_received),2) as purchase_rate_excl_tax,ROUND(SUM(pod.unit_price*pod.quantity_received+pod.unit_price*pod.quantity_received*itt.tax_rate/100)/SUM(pod.quantity_received),2) as purchase_rate_incl_tax FROM purch_order_details as pod LEFT JOIN item_tax_types as itt ON itt.id = pod.tax_type_id GROUP BY pod.item_code)pd
				ON sd.stock_id = pd.item_code)psd
				GROUP BY psd.order_no

				)info_table
				ON so.order_no = info_table.order_no
				LEFT JOIN debtors_master as dm
				ON dm.debtor_no = so.debtor_no
				WHERE so.trans_type=202 AND so.ord_date='$date'
			    "));

		return $data;
    }
public function getSalesHistoryReport($from,$to,$user){
    	if($from == NULL || $to == NULL || $user == NULL){
    	       $data = DB::select(DB::raw("
				SELECT so.reference,so.order_reference_id,so.debtor_no,so.ord_date,dm.name,info_table.* FROM sales_orders as so
				
				LEFT JOIN (

				SELECT psd.order_no, SUM(psd.quantity) as quantity,SUM(psd.sale_price_excl_tax) as sale_price_excl_tax,SUM(psd.sale_price_incl_tax) as sale_price_incl_tax,SUM(psd.purchase_price_excl_tax) as purchase_price_excl_tax,SUM(psd.purchase_price_incl_tax) as purchase_price_incl_tax  FROM(SELECT sd.*,(sd.quantity*pd.purchase_rate_incl_tax)as purchase_price_incl_tax,(sd.quantity*pd.purchase_rate_excl_tax)as purchase_price_excl_tax FROM(SELECT sod.order_no,sod.stock_id,sod.quantity,(sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100) as sale_price_excl_tax,((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)+((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)*itt.tax_rate/100)) as sale_price_incl_tax

				FROM sales_order_details as sod
				LEFT JOIN item_tax_types as itt
				ON itt.id = sod.tax_type_id
				WHERE sod.trans_type = 202)sd
				LEFT JOIN(SELECT pod.item_code,ROUND(SUM(pod.unit_price*pod.quantity_received)/SUM(pod.quantity_received),2) as purchase_rate_excl_tax,ROUND(SUM(pod.unit_price*pod.quantity_received+pod.unit_price*pod.quantity_received*itt.tax_rate/100)/SUM(pod.quantity_received),2) as purchase_rate_incl_tax FROM purch_order_details as pod LEFT JOIN item_tax_types as itt ON itt.id = pod.tax_type_id GROUP BY pod.item_code)pd
				ON sd.stock_id = pd.item_code)psd
				GROUP BY psd.order_no
				)info_table
				ON so.order_no = info_table.order_no
				LEFT JOIN debtors_master as dm
				ON dm.debtor_no = so.debtor_no
				WHERE so.trans_type=202
				ORDER BY so.ord_date DESC
				"));
    	      
			}else if($user == 'all' && $from != NULL && $to != NULL){
    	        $data = DB::select(DB::raw("
				SELECT so.reference,so.order_reference_id,so.debtor_no,so.ord_date,dm.name,info_table.* FROM sales_orders as so
				
				LEFT JOIN (


				SELECT psd.order_no, SUM(psd.quantity) as quantity,SUM(psd.sale_price_excl_tax) as sale_price_excl_tax,SUM(psd.sale_price_incl_tax) as sale_price_incl_tax,SUM(psd.purchase_price_excl_tax) as purchase_price_excl_tax,SUM(psd.purchase_price_incl_tax) as purchase_price_incl_tax  FROM(SELECT sd.*,(sd.quantity*pd.purchase_rate_incl_tax)as purchase_price_incl_tax,(sd.quantity*pd.purchase_rate_excl_tax)as purchase_price_excl_tax FROM(SELECT sod.order_no,sod.stock_id,sod.quantity,(sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100) as sale_price_excl_tax,((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)+((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)*itt.tax_rate/100)) as sale_price_incl_tax

				FROM sales_order_details as sod
				LEFT JOIN item_tax_types as itt
				ON itt.id = sod.tax_type_id
				WHERE sod.trans_type = 202)sd
				LEFT JOIN(SELECT pod.item_code,ROUND(SUM(pod.unit_price*pod.quantity_received)/SUM(pod.quantity_received),2) as purchase_rate_excl_tax,ROUND(SUM(pod.unit_price*pod.quantity_received+pod.unit_price*pod.quantity_received*itt.tax_rate/100)/SUM(pod.quantity_received),2) as purchase_rate_incl_tax FROM purch_order_details as pod LEFT JOIN item_tax_types as itt ON itt.id = pod.tax_type_id GROUP BY pod.item_code)pd
				ON sd.stock_id = pd.item_code)psd
				GROUP BY psd.order_no

				)info_table
				ON so.order_no = info_table.order_no
				LEFT JOIN debtors_master as dm
				ON dm.debtor_no = so.debtor_no
				WHERE so.trans_type=202 AND  so.ord_date BETWEEN '$from' AND '$to'
				ORDER BY so.ord_date DESC
				"));
			}else if($user != 'all' && $from != NULL && $to != NULL){
    	        $data = DB::select(DB::raw("
				SELECT so.reference,so.order_reference_id,so.debtor_no,so.ord_date,dm.name,info_table.* FROM sales_orders as so
				
				LEFT JOIN (


				SELECT psd.order_no, SUM(psd.quantity) as quantity,SUM(psd.sale_price_excl_tax) as sale_price_excl_tax,SUM(psd.sale_price_incl_tax) as sale_price_incl_tax,SUM(psd.purchase_price_excl_tax) as purchase_price_excl_tax,SUM(psd.purchase_price_incl_tax) as purchase_price_incl_tax  FROM(SELECT sd.*,(sd.quantity*pd.purchase_rate_incl_tax)as purchase_price_incl_tax,(sd.quantity*pd.purchase_rate_excl_tax)as purchase_price_excl_tax FROM(SELECT sod.order_no,sod.stock_id,sod.quantity,(sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100) as sale_price_excl_tax,((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)+((sod.unit_price*sod.quantity-(sod.unit_price*sod.quantity*discount_percent)/100)*itt.tax_rate/100)) as sale_price_incl_tax

				FROM sales_order_details as sod
				LEFT JOIN item_tax_types as itt
				ON itt.id = sod.tax_type_id
				WHERE sod.trans_type = 202)sd
				LEFT JOIN(SELECT pod.item_code,ROUND(SUM(pod.unit_price*pod.quantity_received)/SUM(pod.quantity_received),2) as purchase_rate_excl_tax,ROUND(SUM(pod.unit_price*pod.quantity_received+pod.unit_price*pod.quantity_received*itt.tax_rate/100)/SUM(pod.quantity_received),2) as purchase_rate_incl_tax FROM purch_order_details as pod LEFT JOIN item_tax_types as itt ON itt.id = pod.tax_type_id GROUP BY pod.item_code)pd
				ON sd.stock_id = pd.item_code)psd
				GROUP BY psd.order_no

				)info_table
				ON so.order_no = info_table.order_no
				LEFT JOIN debtors_master as dm
				ON dm.debtor_no = so.debtor_no
				WHERE so.trans_type=202 AND so.ord_date BETWEEN '$from' AND '$to' AND so.debtor_no = '$user'
				ORDER BY so.ord_date DESC


				"));
			}
		
		return $data;
    }
    // Get profit and sale and cost for last 30 days
    public function getSalesCostProfit(){
    	$from = date('Y-m-d', strtotime('-30 days'));
    	$to = date('Y-m-d');
    	
		$data = DB::select(DB::raw("SELECT scp.* FROM(SELECT info_tbl.ord_date, SUM(info_tbl.sales_price_total) as sale ,SUM(info_tbl.purch_price_amount) as cost,SUM(info_tbl.sales_price_total-info_tbl.purch_price_amount)as profit FROM(SELECT final_tbl.ord_date,SUM(final_tbl.sales_price) as sales_price_total,SUM(final_tbl.purchase_price) as purch_price_amount FROM(SELECT sod.*,so.ord_date,so.order_reference,so.debtor_no,(sod.quantity*sod.unit_price-sod.quantity*sod.unit_price*sod.discount_percent/100) as sales_price,(sod.quantity*sod.unit_price*tax.tax_rate/100) as tax_amount,purchase_table.rate as purchase_unit_price,(sod.quantity*purchase_table.rate) as purchase_price FROM(SELECT sales_order_details.order_no,sales_order_details.stock_id,sales_order_details.`quantity`,sales_order_details.`unit_price`,sales_order_details.`discount_percent`,sales_order_details.`tax_type_id` as tax_id FROM `sales_order_details` WHERE `trans_type`=202)sod
		LEFT JOIN item_tax_types as tax
		ON tax.id = sod.tax_id

		LEFT JOIN(SELECT purchase_info.*,(purchase_info.price/purchase_info.purchase_qty) as rate FROM(SELECT purch_tbl.item_code as stock_id,SUM(purch_tbl.quantity_received) as purchase_qty,SUM(purch_tbl.price) as price FROM(SELECT pod.`item_code`,pod.`quantity_received`,pod.`unit_price`,(pod.`unit_price`*pod.`quantity_received`) as price FROM `purch_order_details` as pod)purch_tbl GROUP BY purch_tbl.item_code)purchase_info)purchase_table
		ON purchase_table.stock_id = sod.stock_id

		LEFT JOIN (SELECT * FROM sales_orders) as so
		ON so.order_no = sod.order_no)final_tbl
		GROUP BY final_tbl.order_no)info_tbl
        GROUP BY info_tbl.ord_date)scp

	    WHERE scp.ord_date BETWEEN '$from' AND '$to'
		"));
    	return $data;
    }

    public function orderToInvoiceList(){
      	$data = DB::select(DB::raw("SELECT so.*,dm.name,COALESCE(sm.qty,0)as inv_qty FROM(SELECT so.order_no,so.reference,so.ord_date,so.debtor_no,SUM(sod.quantity)as ord_qty FROM `sales_orders` as so LEFT JOIN sales_order_details as sod ON sod.order_no = so.order_no WHERE so.`trans_type` = 201 GROUP BY sod.order_no )so
				LEFT JOIN(SELECT `order_no`,SUM(qty)as qty FROM `stock_moves` WHERE `trans_type`=202 GROUP BY `order_no` )sm
				ON 
				sm.order_no = so.order_no
				LEFT JOIN debtors_master as dm 
				ON
				dm.`debtor_no` = so.`debtor_no`
				ORDER BY so.ord_date DESC"
				//ORDER BY 
				));
      	//d($data,1);
       return $data;    	
    }
    public function orderToshipmentList(){
    	$data = DB::select(DB::raw("SELECT so.*,dm.name FROM(SELECT order_no,reference,ord_date,debtor_no FROM `sales_orders` WHERE `trans_type`=201 AND `order_reference_id` = 0)so LEFT JOIN(SELECT * FROM `shipment` WHERE status=1 GROUP BY order_no)sp ON sp.order_no = so.order_no LEFT JOIN debtors_master as dm ON dm.`debtor_no` = so.`debtor_no` WHERE sp.order_no IS NULL ORDER BY so.ord_date DESC"));
    	return $data;
    }
    public function latestInvoicesList(){
    	$data = DB::table('sales_orders')
    			->leftjoin("debtors_master",'debtors_master.debtor_no','=','sales_orders.debtor_no')
    			->where('sales_orders.trans_type',SALESINVOICE)
    			->orderBy('sales_orders.ord_date','desc')
    			->select('sales_orders.order_reference_id as order_no','sales_orders.order_no as invoice_no','sales_orders.order_reference','sales_orders.reference','debtors_master.name','sales_orders.total','sales_orders.ord_date')
    			->take(5)
    			->get();

    	return $data;
    }
    public function latestPaymentList(){
        $data = DB::table('payment_history')
                             ->leftjoin('debtors_master','debtors_master.debtor_no','=','payment_history.customer_id')
                             ->leftjoin('payment_terms','payment_terms.id','=','payment_history.payment_type_id')
                             ->leftjoin('sales_orders','sales_orders.reference','=','payment_history.invoice_reference')
                             ->select('payment_history.*','debtors_master.name','payment_terms.name as pay_type','sales_orders.order_no as invoice_id','sales_orders.order_reference_id as order_id')
                             ->orderBy('payment_date','DESC')
                             ->take(5)
                             ->get();
        return $data;
    }

}
