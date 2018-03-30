@extends('layouts.app')
@section('content')
  <section class="content">

    <div class="box box-default">
      <div class="box-body">
        <div class="row">
          <div class="col-md-10">
           <div class="top-bar-title padding-bottom">Receive Details</div>
          </div> 
          <div class="col-md-2">
            @if(Helpers::has_permission(Auth::user()->id, 'add_purchase'))
              <a href="{{ url('purchase/add') }}" class="btn btn-block btn-default btn-flat btn-border-orange"><span class="fa fa-plus"> &nbsp;</span>{{ trans('message.extra_text.new_purchase') }}</a>
            @endif
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-8">
          <div class="box box-default">
          <div class="box-body">
                <div class="btn-group pull-right">
                  <a target="_blank" href="{{URL::to('/')}}/receive/print/{{$rewceiveInfo->id}}" title="Print" class="btn btn-default btn-flat">{{ trans('message.extra_text.print') }}</a>
                  <a target="_blank" href="{{URL::to('/')}}/receive/pdf/{{$rewceiveInfo->id}}" title="PDF" class="btn btn-default btn-flat">{{ trans('message.extra_text.pdf') }}</a>
                   @if(Helpers::has_permission(Auth::user()->id, 'edit_purchase'))
                  <a href="{{URL::to('/')}}/receive/edit/{{$rewceiveInfo->id}}" title="Edit" class="btn btn-default btn-flat">{{ trans('message.extra_text.edit') }}</a>
                    @endif
                    @if(Helpers::has_permission(Auth::user()->id, 'delete_purchase'))
                  <form method="POST" action="{{ url("receive/delete") }}" accept-charset="UTF-8" style="display:inline">
                      {!! csrf_field() !!}
                      <input type="hidden" name="receive_id" value="{{$rewceiveInfo->id}}">
                      <input type="hidden" name="order_no" value="{{$rewceiveInfo->order_no}}">
                      <button class="btn btn-default btn-flat delete-btn" title="{{ trans('message.table.delete')}}" type="button" data-toggle="modal" data-target="#confirmDelete" data-title="{{ trans('message.invoice.delete_purchase') }}" data-message="{{ trans('message.invoice.delete_purchase_confirm') }}">
                         {{ trans('message.extra_text.delete') }}
                      </button>
                  </form>
                    @endif
                </div>
          </div>

            <div class="box-body">
              <div class="row">
                
                  <div class="col-md-4">
                    <strong>{{ Session::get('company_name') }}</strong>
                    <h5 class="">{{ Session::get('company_street') }}</h5>
                    <h5 class="">{{ Session::get('company_city') }}, {{ Session::get('company_state') }}</h5>
                    <h5 class="">{{ Session::get('company_country_id') }}, {{ Session::get('company_zipCode') }}</h5>
                  </div>

                <div class="col-md-4">
                  <strong>{{!empty($rewceiveInfo->supp_name) ? $rewceiveInfo->supp_name : ''}}</strong>
                  <h5>{{ !empty($rewceiveInfo->address) ? $rewceiveInfo->address : ''}}</h5>
                  <h5>{{ !empty($rewceiveInfo->city) ? $rewceiveInfo->city : ''}}{{ !empty($rewceiveInfo->state) ? ', '.$rewceiveInfo->state : ''}}</h5>
                  <h5>{{ !empty($rewceiveInfo->country) ? $rewceiveInfo->country : '' }}{{ !empty($rewceiveInfo->zipcode) ? ', '.$rewceiveInfo->zipcode : '' }}</h5>
                </div>

                <div class="col-md-4">
                    <strong>{{ trans('message.table.invoice_no').' # '.$rewceiveInfo->reference }}</strong>
                     <h5><strong>Receive No : {{ sprintf("%04d", $rewceiveInfo->id) }}</strong></h5>
                    <h5>{{ trans('message.extra_text.location')}} : {{$rewceiveInfo->location_name}}</h5>
                    <h5>{{ trans('message.table.date')}} : {{formatDate($rewceiveInfo->receive_date)}}</h5>
                </div>
              </div>

              <div class="row">
                <div class="col-md-12">
                  <div class="box-body no-padding">
                    <div class="table-responsive">
                    <table class="table table-bordered" id="salesInvoice">
                      <tbody>
                      <tr class="tbl_header_color dynamicRows">
                        <th width="30%" class="text-center">{{ trans('message.table.description') }}</th>
                        <th width="10%" class="text-center">{{ trans('message.table.quantity') }}</th>
                        <th width="10%" class="text-center">{{ trans('message.table.rate') }}({{Session::get('currency_symbol')}})</th>
                        <th width="10%" class="text-center">{{ trans('message.table.tax') }}(%)</th>
                        <th width="10%" class="text-right">{{ trans('message.table.amount') }}</th>
                      </tr>
                      <?php
                       $itemsInformation = '';
                      ?>
                      @if(count($itemInfo)>0)
                       <?php $subTotal = 0;$units = 0; $tax = 0;$totalTax=0;?>
                        @foreach($itemInfo as $result)
                            <tr>
                              <td class="text-center">{{$result->description}}</td>
                              <td class="text-center">{{$result->quantity}}</td>
                              <td class="text-center">{{number_format($result->unit_price,2,'.',',') }}</td>
                              <td class="text-center">{{$result->tax_rate}}</td>
                              <?php
                                $priceAmount = ($result->quantity*$result->unit_price);
                                $subTotal += $priceAmount;
                                $units += $result->quantity;

                                $tax = $priceAmount*$result->tax_rate/100;
                                $totalTax += $tax;

                              ?>
                              <td align="right">{{ Session::get('currency_symbol').number_format($priceAmount,2,'.',',') }}</td>
                            </tr>
                        @endforeach
                        <tr class="tableInfos"><td colspan="4" align="right">{{ trans('message.table.total_qty') }}</td><td align="right" colspan="2">{{$units}}</td></tr>
                      <tr class="tableInfos"><td colspan="4" align="right">{{ trans('message.table.sub_total') }}</td><td align="right" colspan="2">{{ Session::get('currency_symbol').number_format($subTotal,2,'.',',') }}</td></tr>
                  <tr class="tableInfos"><td colspan="4" align="right">{{ trans('message.invoice.totalTax') }}</td><td align="right" colspan="2">{{ Session::get('currency_symbol').number_format($totalTax,2,'.',',') }}</td></tr>

                      <tr class="tableInfos"><td colspan="4" align="right"><strong>{{ trans('message.table.grand_total') }}</strong></td><td colspan="2" class="text-right"><strong>{{ Session::get('currency_symbol').number_format(($totalTax+$subTotal),2,'.',',') }}</strong></td></tr>
                      @endif
                      </tbody>
                    </table>
                    </div>
                    <br><br>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>
<!---Stat-->
@include('layouts.includes.purchase_page_right_option')
<!---End-->
    </div>
  </section>
  @include('layouts.includes.message_boxes')
@endsection

@section('js')
<script type="text/javascript">
</script>
@endsection