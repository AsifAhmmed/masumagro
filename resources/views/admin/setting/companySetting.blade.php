@extends('layouts.app')
@section('content')
    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-3">
          @include('layouts.includes.company_menu')
        </div>
        <!-- /.col -->
        <div class="col-md-9">

          <div class="box box-default">
            <div class="box-body">
              <div class="row">
                <div class="col-md-12">
                 <div class="top-bar-title padding-bottom">{{ trans('message.table.company_setting') }}</div>
                </div> 
              </div>
            </div>
          </div>

          <div class="box">
          <div class="box-body">
            <!-- /.box-header -->
            <form action="{{ url('company/setting/save') }}" method="post" id="myform1" class="form-horizontal" enctype="multipart/form-data">
              
              {!! csrf_field() !!}

              <div class="box-body">
                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.name') }}</label>
                  <div class="col-sm-6">
                    <input type="text" class="form-control" name="company_name" value="{{isset($companyData['company']['company_name']) ? $companyData['company']['company_name'] : ''}}" >
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputEmail3">{{trans('message.form.site_short_name')}}</label>
                  <div class="col-sm-6">
                    <input type="text" name="site_short_name" value="{{isset($companyData['company']['site_short_name']) ? $companyData['company']['site_short_name'] : ''}}" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputEmail3">{{trans('message.form.vat_no')}}</label>
                  <div class="col-sm-6">
                    <input type="text" name="vat_no" value="{{isset($companyData['company']['vat_no']) ? $companyData['company']['vat_no'] : ''}}" class="form-control">
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.email') }}</label>
                  <div class="col-sm-6">
                    <input type="email" class="form-control" name="company_email" value="{{isset($companyData['company']['company_email']) ? $companyData['company']['company_email'] : ''}}" >
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.phone') }}</label>
                  <div class="col-sm-6">
                    <input type="text" class="form-control" name="company_phone" value="{{isset($companyData['company']['company_phone']) ? $companyData['company']['company_phone'] : ''}}" >
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.invoice.street') }}</label>
                  <div class="col-sm-6">
                    <input type="text" class="form-control" name="company_street" value="{{isset($companyData['company']['company_street']) ? $companyData['company']['company_street'] : ''}}" >
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.invoice.city') }}</label>
                  <div class="col-sm-6">
                    <input type="text" class="form-control" name="company_city" value="{{isset($companyData['company']['company_city']) ? $companyData['company']['company_city'] : ''}}" >
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.invoice.state') }}</label>
                  <div class="col-sm-6">
                    <input type="text" class="form-control" name="company_state" value="{{isset($companyData['company']['company_state']) ? $companyData['company']['company_state'] : ''}}">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputEmail3">{{ trans('message.invoice.zipcode') }}</label>
                  <div class="col-sm-6">
                    <input type="text" class="form-control" name="company_zipCode" value="{{isset($companyData['company']['company_zipCode']) ? $companyData['company']['company_zipCode'] : ''}}" >
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.invoice.country') }}</label>
                  <div class="col-sm-6">
                    <select class="form-control select2" name="company_country_id" >
                    <option value="">{{ trans('message.form.select_one') }}</option>
                    @foreach ($countries as $data)
                      <option value="{{$data->country}}" <?=isset($companyData['company']['company_country_id']) && $companyData['company']['company_country_id'] == $data->country ? 'selected':""?> >{{$data->country}}</option>
                    @endforeach
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputEmail3">{{ trans('message.table.default_language') }}</label>
                  <div class="col-sm-6">
                    <select name="dflt_lang" class="form-control" >
                        <option value="ar" <?=isset($companyData['company']['dflt_lang']) && $companyData['company']['dflt_lang'] == 'ar' ? 'selected':""?> >Arabic</option>
                        <option value="en" <?=isset($companyData['company']['dflt_lang']) && $companyData['company']['dflt_lang'] == 'en' ? 'selected':""?>>English</option>
                        <option value="ch" <?=isset($companyData['company']['dflt_lang']) && $companyData['company']['dflt_lang'] == 'ch' ? 'selected':""?>>Chinese</option>
                        <option value="fr" <?=isset($companyData['company']['dflt_lang']) && $companyData['company']['dflt_lang'] == 'fr' ? 'selected':""?>>French</option>
                        <option value="jp" <?=isset($companyData['company']['dflt_lang']) && $companyData['company']['dflt_lang'] == 'jp' ? 'selected':""?>>Japanese</option>
                        <option value="rh" <?=isset($companyData['company']['dflt_lang']) && $companyData['company']['dflt_lang'] == 'rh' ? 'selected':""?>>Russain</option>
                        <option value="sp" <?=isset($companyData['company']['dflt_lang']) && $companyData['company']['dflt_lang'] == 'sp' ? 'selected':""?>>Spanish</option>
                    </select>
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputEmail3">{{ trans('message.table.default_currency') }}</label>
                  <div class="col-sm-6">
                    <select class="form-control" name="dflt_currency_id" >
                      <option value="">{{ trans('message.form.select_one') }}</option>
                    @foreach ($currencyData as $data)
                      <option value="{{$data->id}}" <?=isset($companyData['company']['dflt_currency_id']) && $companyData['company']['dflt_currency_id'] == $data->id ? 'selected':""?> >{{$data->name}}</option>
                    @endforeach
                    </select>
                  </div>
                </div>
                <div class="form-group" style="display:none">
                  <label class="col-sm-3 control-label" for="inputEmail3">{{ trans('message.table.price_type') }}</label>

                  <div class="col-sm-6">
                    <select class="form-control" name="sates_type_id" >
                      <option value="">{{ trans('message.form.select_one') }}</option>

                        @foreach ($saleTypes as $saleType)
                          <option value="{{$saleType->id}}" <?=isset($companyData['company']['sates_type_id']) && $companyData['company']['sates_type_id'] == $saleType->id ? 'selected':""?> >{{$saleType->sales_type}}</option>
                        @endforeach
              
                    </select>
                  </div>
                </div>

                
                <div class="form-group">
                  <label class="col-sm-3 control-label" for="inputEmail3">{{trans('message.table.company_logo')}}</label>
                  <div class="col-sm-6">
                    <input type="file" class="form-control input-file-field" name="logo">
                      <br>
                      @if (isset($companyData['company']['logo']))
                      <img src='{{ url("public/uploads/")."/".$companyData['company']['logo'] }}' alt="Logo" width="80" height="80">
                      @else
                      <img src='{{ url("public/uploads/no_logo.jpg") }}' alt="Logo" width="80" height="80">
                      @endif
                  <input type="hidden" name="pic" value="{{ isset($companyData['company']['logo']) ? $companyData['company']['logo'] : 'NULL' }}">
                  </div>
                </div>

              </div>
              <!-- /.box-body -->
              
              <div class="box-footer">
                <button class="btn btn-primary pull-right btn-flat" type="submit" id="btnSubmits">{{ trans('message.form.submit') }}</button>
              </div>
              <!-- /.box-footer -->
            </form>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>


    @include('layouts.includes.message_boxes')
@endsection

@section('js')
    <script type="text/javascript">
     $("#btnSubmit").on('click', function(){
      alert("This option is not available on demo version!");
      return false;
     });
    </script>
@endsection