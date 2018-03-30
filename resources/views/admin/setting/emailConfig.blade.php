@extends('layouts.app')
@section('content')
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3">
          @include('layouts.includes.sub_menu')
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">{{ trans('message.table.smtp_setting') }}</h3>
            </div><br>
            <!-- /.box-header -->
            <!-- form start -->
                <form action="{{ url('save-email-config') }}" method="post" id="myform1" class="form-horizontal">
                <input type="hidden" value="{{csrf_token()}}" name="_token" id="token">

                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.smtp_protocol') }}</label>
                <div class="col-sm-6">
                      <select class="form-control" id="type">
                        <option value="">Select</option>
                        <option value="smtp" {{ $emailConfigData->type == 'smtp' ? 'selected="selected"' : '' }}>SMTP</option>
                        <option value="sendmail" {{ $emailConfigData->type == 'sendmail' ? 'selected="selected"' : '' }}>Send Mail</option>
                      </select>
                  </div>
                </div>

                <span id="smtp_form">
                
                <input type="hidden" name="type" value="smtp" id="type_val">
                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.email_encription') }}</label>
                  <div class="col-sm-6">
                    <input type="text" value="{{isset($emailConfigData->email_encryption) ? $emailConfigData->email_encryption : ''}}" class="form-control" name="email_encryption">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.smtp_host') }}</label>
                  <div class="col-sm-6">
                    <input type="text" value="{{isset($emailConfigData->smtp_host) ? $emailConfigData->smtp_host : ''}}" class="form-control" name="smtp_host">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.smtp_port') }}</label>
                  <div class="col-sm-6">
                    <input type="text" value="{{isset($emailConfigData->smtp_port) ? $emailConfigData->smtp_port : ''}}" class="form-control" name="smtp_port">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.smtp_email') }}</label>
                  <div class="col-sm-6">
                    <input type="text" value="{{isset($emailConfigData->smtp_email) ? $emailConfigData->smtp_email : ''}}" class="form-control" name="smtp_email">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.from_address') }}</label>
                  <div class="col-sm-6">
                    <input type="text" value="{{isset($emailConfigData->from_address) ? $emailConfigData->from_address : ''}}" class="form-control" name="from_address">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.from_name') }}</label>
                  <div class="col-sm-6">
                    <input type="text" value="{{isset($emailConfigData->from_name) ? $emailConfigData->from_name : ''}}" class="form-control" name="from_name">
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.smtp_username') }}</label>
                  <div class="col-sm-6">
                    <input type="text" value="{{isset($emailConfigData->smtp_username) ? $emailConfigData->smtp_username : ''}}" class="form-control" name="smtp_username">
                  </div>
                </div> 

                <div class="form-group">
                  <label class="col-sm-3 control-label require" for="inputEmail3">{{ trans('message.table.smtp_password') }}</label>
                  <div class="col-sm-6">
                    <input type="password" value="{{isset($emailConfigData->smtp_password) ? $emailConfigData->smtp_password : ''}}" class="form-control" name="smtp_password">
                  </div>
                </div>
                
                </span>

              <!-- Send mail start-->
              <span id="sendmail_form">
             
<!--                 <input type="hidden" name="type" value="sendmail" id="type_val">
 -->           

                </span>
              <!--Send Mail End -->

              <!-- /.box-body -->
              <div class="box-footer">
                <button class="btn btn-primary btn-flat pull-right" type="submit">{{ trans('message.form.submit') }}</button>
              </div>
            </form>
          </div>
      </div>
      <!-- /.row -->

    </section>
    @include('layouts.includes.message_boxes')
@endsection

@section('js')
    <script type="text/javascript">

    $('#myform1').validate({
        rules: {
            email_protocol: {
                required: true
            },
            email_encryption:{
               required: true,
            },
            smtp_host:{
               required: true,
            },
            smtp_port: {
                required: true
            },
            smtp_email:{
               required: true,
            },
            from_address  :{
               required: true,
            },
            from_name:{
               required: true,
            },
            smtp_username  :{
               required: true,
            },
            smtp_password:{
               required: true,
            },
            type :{
              required : true
            }                     
        }
    });

    $("#type").on('change', function(){
      var type = $(this).val();
     if( type == 'smtp' ){
      $("#sendmail_form").hide();
      $("#smtp_form").show();
      $("#type_val").attr('value','smtp');
     }
    else{
      $("#sendmail_form").show();
      $("#smtp_form").hide();
      $("#type_val").attr('value','sendmail');
     }
    });

     $(window).on('load', function(){
      var type = $("#type").val();
     if( type == 'smtp' ){
      $("#sendmail_form").hide();
      $("#smtp_form").show();
      $("#type_val").attr('value','smtp');
     }
    else{
      $("#sendmail_form").show();
      $("#smtp_form").hide();
      $("#type_val").attr('value','sendmail');
     }
    });

    
    </script>
@endsection