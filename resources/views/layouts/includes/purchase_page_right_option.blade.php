      <div class="col-md-4">
        <div class="box box-default">
          <div class="box-header text-center">
              <h5 class="text-left text-info"><b>Order No # {{$purchData->reference}}</b></h5>
          </div>
        </div>
        <!--Start-->
        <div class="box box-default">
          <div class="box-header text-center">
            <strong>Receive Information</strong>
          </div>
           @if(!empty($receiveData))
          <div class="box-body">
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th width="50%" class="text-center">Receive No</th>
                  <th width="50%" class="text-center">Quantity</th>
                </tr>
              </thead>
              <tbody>
                @foreach($receiveData as $receive)
                <tr>
                  <td align="center"><a href='{{url("receive/details/$receive->id")}}'>{{sprintf("%04d", $receive->id)}}</td>
                  <td align="center">{{$receive->qty}}</td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
          @endif
           
            @if(($orderItemQty->ord_qty - $orderItemQty->recv_qty)>0)
            <div class="box-body">
              <div class="row">
                <div class="col-md-6 btn-block-left-padding">
                  <a href="{{URL::to('/')}}/receive/manual/{{$purchData->order_no}}" title="{{ trans('message.table.manual_invoice') }}" class="btn btn-success btn-flat btn-block ">Receive Manually</a>
                </div>
                <div class="col-md-6 btn-block-right-padding">
                  <a href="{{URL::to('/')}}/receive/all/{{$purchData->order_no}}" title="{{ trans('message.table.automatic_invoice') }}" class="btn bg-orange btn-flat btn-block">Receive All</a>
                </div>
              </div>
            </div>
            @endif

        </div> 
        <!--END-->
      </div> 