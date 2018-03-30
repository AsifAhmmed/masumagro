@extends('layouts.app')
@section('content')
    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
    <div class="row">
      <div class="col-md-12">
        <div class="box box-default">
        <!-- /.box-header -->
        <div class="box-body">
        <form action="{{url('receive/manual_store')}}" method="POST" id="receiveForm">  
        <input type="hidden" value="{{csrf_token()}}" name="_token" id="token">
          <div class="col-md-8">
            <h4 class="text-info">
              {{ trans('message.invoice.order_no') }} # {{$oderInfo->reference}}
            </h4>
          </div>
          <div class="col-md-4">
              <div class="form-group">
                <label>{{ trans('message.table.date') }}<span class="text-danger"> *</span></label>
                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input class="form-control" id="datepicker" type="text" name="receive_date">
                </div>
                <!-- /.input group -->
              </div>
          </div>
          
          <input type="hidden" value="{{$oderInfo->order_no}}" name="order_no" id="order_no">
          <input type="hidden" value="{{$oderInfo->reference}}" name="order_reference" id="order_reference">
          <input type="hidden" value="{{$oderInfo->into_stock_location}}" name="location">
          <input type="hidden" value="{{$oderInfo->supplier_id}}" name="supplier_id">

        <div class="row">
            <div class="col-md-12">
              <!-- /.box-header -->
              <div class="box-body no-padding">
                <div class="table-responsive">
                <table class="table table-bordered" id="salesInvoice">
                  <tbody>
                  <tr class="tbl_header_color dynamicRows">
                    <th width="10%" class="text-center">{{ trans('message.table.item_id') }}</th>
                    <th width="30%" class="text-center">{{ trans('message.table.description') }}</th>
                    <th width="10%" class="text-center">Ordered Qty</th>
                    <th width="10%" class="text-center">Receive Qty</th>
                    <th width="10%" class="text-center">{{ trans('message.table.rate') }}</th>

                    <th width="10%" class="text-center">{{ trans('message.table.tax') }}(%)</th>
                    <th width="10%" class="text-center">{{ trans('message.table.amount') }}</th>
                    <th width="10%" class="text-center">{{ trans('message.table.action') }}</th>
                  </tr>

                  @if(count($itemInfo)>0)
                  <?php
                    $subtotal = 0;
                    $taxtotal = 0;
                  ?>
                    @foreach($itemInfo as $k=>$result)
                    
                    <?php
                      $amount = $result->unit_price*($result->quantity_ordered-$result->qty_received);
                      $subtotal += $amount;

                      $taxAmount = $amount*$result->tax_rate/100;
                      $taxtotal +=$taxAmount;
                    ?>
                      @if(($result->quantity_ordered-$result->qty_received)>0)
                        <tr class="tblRows" id="rowid{{$result->item_id}}">
                          
                          <td class="text-center">{{$result->item_code}}<input type="hidden" name="item_code[]" value="{{$result->item_code}}"></td>

                          <td class="text-center">{{$result->description}}<input type="hidden" name="description[]" value="{{$result->description}}"></td>

                        <td class="text-center" id="orderqtyid{{$result->item_id}}">{{$result->quantity_ordered-$result->qty_received}}</td>


                          <td><input class="form-control text-center no_units" name="quantity[]" value="{{$result->quantity_ordered-$result->qty_received}}" rowid="{{$result->item_id}}" type="text"></td>

                          <td class="text-center"><input class="form-control text-center" name="unit_price[]" value="{{$result->unit_price}}" type="hidden" id="priceid{{$result->item_id}}">{{$result->unit_price}}</td>                          

                          <td class="text-center">{{$result->tax_rate}}
                          
                          <input type="hidden" name="tax_type_id[]" value="{{$result->tax_type_id}}">
                          <input type="hidden" value="{{$result->tax_rate}}" id="taxid{{$result->item_id}}">

                          <input type="hidden" class="taxamount" value="{{$taxAmount}}" id="taxamountid{{$result->item_id}}">

                          </td>

                          <td class="text-center amount" id="amountid{{$result->item_id}}">{{$amount}}</td>

                          <td class="text-center"><button id="{{$result->item_code}}" class="btn btn-xs btn-danger delete_item"><i class="glyphicon glyphicon-trash"></i></button></td>
                        </tr>
                    @endif
                  @endforeach
                  <tr class="tableInfo"><td colspan="6" align="right"><strong>{{ trans('message.table.sub_total') }}({{Session::get('currency_symbol')}})</strong></td><td align="left" colspan="2"><strong id="subTotal">{{$subtotal}}</strong></td></tr>
                  
                  <tr class="tableInfo"><td colspan="6" align="right"><strong>{{ trans('message.invoice.totalTax') }}({{Session::get('currency_symbol')}})</strong></td><td align="left" colspan="2"><strong id="TaxTotal">{{$taxtotal}}</strong></td></tr>

                  <tr class="tableInfo"><td colspan="6" align="right"><strong>{{ trans('message.invoice.grand_total') }}({{Session::get('currency_symbol')}})</strong></td><td align="left" colspan="2"><strong id="grandTotal">{{$taxtotal+$subtotal}}</strong></td></tr>

                  @endif
                  </tbody>
                </table>
                </div>
          
              </div>
            </div>
              <!-- /.box-body -->
              <div class="col-md-12">
                <button type="submit" class="btn btn-primary btn-flat pull-right" id="btnSubmit">{{ trans('message.form.submit') }}</button>
              </div>
        </div>
        </form>
            <!-- /.col -->   
            <!-- /.col -->
      </div>
          <!-- /.row -->
    </div>
        <!-- /.box-body -->
      <!-- /.box -->

    </section>
@endsection
@section('js')
    <script type="text/javascript">

    var token = $("#token").val();
    $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();
        $('#datepicker').datepicker({
            autoclose: true,
            todayHighlight: true,
            format: '{{Session::get('date_format_type')}}'
        });
        $('#datepicker').datepicker('update', new Date());
    })

     // calculate amount with item quantity
    $(document).on('keyup', '.no_units', function(ev){
      var id = $(this).attr("rowid");
      var qty = parseInt($(this).val());
      var UnitPrice = parseFloat($("#priceid"+id).val());
      var taxRate = parseFloat($("#taxid"+id).val());
      
      if(isNaN(qty)){
          qty = 0;
       }

       var orderedQty = parseInt($("#orderqtyid"+id).html());

        if(orderedQty<qty){
         $("#errMsg").html("");
          $('#btnSubmit').attr('disabled', 'disabled');
          return;
         }else{
          $('#btnSubmit').removeAttr('disabled');
         }

      var taxAmount = (qty*UnitPrice*taxRate/100);
      $("#taxamountid"+id).val(taxAmount);

      var price = calculatePrice(qty,UnitPrice);
      $("#amountid"+id).html(price);

      var subTotal = calculateSubTotal();
      $("#subTotal").html(subTotal);
      var taxTotal = calculateTaxTotal();
      $("#TaxTotal").html(taxTotal);
      var grandTotal = (subTotal + taxTotal);
      $("#grandTotal").html(grandTotal);

    });

      /**
      * Calcualte Total tax
      *@return totalTax for row wise
      */
      function calculateTaxTotal (){
          var totalTax = 0;
            $('.taxamount').each(function() {
                totalTax += parseFloat($(this).val());
            });
            return totalTax;
      }
      
      /**
      * Calcualte Sub Total 
      *@return subTotal
      */
      function calculateSubTotal (){
        var subTotal = 0;
        $('.amount').each(function() {
            subTotal += parseFloat($(this).html());
        });
        return subTotal;
      }


      function calculatePrice (qty,rate){
         var price = (qty*rate);
         return price;
      }   
      // calculate tax 
      function caculateTax(p,t){
       var tax = (p*t)/100;
       return tax;
      }   


      // calculate discont amount
      function calculateDiscountPrice(p,d){
        var discount = [(d*p)/100];
        var result = (p-discount); 
        return result;
      }

// Item form validation
    $('#salesForm').validate({
        rules: {
            debtor_no: {
                required: true
            },
            from_stk_loc: {
                required: true
            },
            ord_date:{
               required: true
            },
            reference:{
              required:true
            },
            payment_id:{
              required:true
            },
            branch_id:{
              required:true
            }                    
        }
    });

    // Delete item row
    $(document).ready(function(e){
      $('#salesInvoice').on('click', '.delete_item', function(event) {
        event.preventDefault();
            $(this).closest("tr").remove();
            var subTotal = calculateSubTotal();
            $("#subTotal").html(subTotal);
            var taxTotal = calculateTaxTotal();
            $("#TaxTotal").html(taxTotal);
            var grandTotal = (subTotal + taxTotal);
            $("#grandTotal").html(grandTotal);

            var rowCount = $('#salesInvoice tr.tblRows').length;
            if(rowCount==0){
              $("#btnSubmit").hide();
            }

        });
    });
    /// Craete Round Figure
    function roundToTwo(num) {    
        return +(Math.round(num + "e+2")  + "e-2");
    }

    </script>
@endsection