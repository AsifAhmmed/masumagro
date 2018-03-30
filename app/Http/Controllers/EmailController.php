<?php

/**
 * Email Controller
 */

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Mail;
use Config;
use DB;
use Session;
/*use PHPMailer\PHPMailerAutoload;
use PHPMailer;
use PHPMailer\PHPMailer;*/ 

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class EmailController extends Controller
{
    
    public function sendEmail($to,$subject,$messageBody)
    {
        $mail = new \App\libraries\MailService;
        $dataMail = [];
        $dataMail = array(
            'to' => array($to),
            'subject' => $subject,
            'content' => $messageBody,
        );
        
        $emailInfo = DB::table('email_config')->first();
        if($emailInfo->type == 'smtp'){
            $this->setupEmailConfig();
            $mail->send($dataMail,'emails.paymentReceipt');
        }else{
            $this->sendPhpEmail($to, $subject, $messageBody, $emailInfo);
        }

    }
     public function sendEmailWithAttachment($to,$subject,$messageBody,$invoiceName)
    {
        $mail = new \App\libraries\MailService;
        $dataMail = [];
        $dataMail = array(
            'to' => array($to),
            'subject' => $subject,
            'content' => $messageBody,
            'attach'  =>url("public/uploads/invoices/$invoiceName")
        );
        $emailInfo = DB::table('email_config')->first();

        if($emailInfo->type == 'smtp'){
            $this->setupEmailConfig();
        $mail->send($dataMail,'emails.paymentReceipt');
        }else{
            $this->sendPhpEmail($to, $subject, $messageBody, $emailInfo, $invoiceName);
        }

        @unlink(public_path('/uploads/invoices/'.$invoiceName));

    }


    public function setupEmailConfig(){
    $result = DB::table('email_config')->first();
    //d($result,1);
    Config::set([
            'mail.driver'     => isset($result->email_protocol) ? $result->email_protocol : '',
            'mail.host'       => isset($result->smtp_host) ? $result->smtp_host : '',
            'mail.port'       => isset($result->smtp_port) ? $result->smtp_port : '',
            'mail.from'       => ['address' => isset($result->from_address) ? $result->from_address : '','name'    => isset($result->from_name) ? $result->from_name : '' ],
            'mail.encryption' => isset($result->email_encryption) ? $result->email_encryption : '',
            'mail.username'   => isset($result->smtp_username) ? $result->smtp_username : '',
            'mail.password'   => isset($result->smtp_password) ? $result->smtp_password : ''
            ]);

    }

    // public function sendPhpEmail($to,$subject,$message, $emailInfo){
    //     // To send HTML mail, the Content-type header must be set
    //     $headers[] = 'MIME-Version: 1.0';
    //     $headers[] = 'Content-type: text/html; charset=iso-8859-1';
    //     // Additional headers
    //     $headers[] = 'To:<'.$to.'>';
    //     $headers[] = 'From: '.$emailInfo->from_name.' <'.$emailInfo->from_address.'>';
    //     //$headers[] = 'Cc: birthdayarchive@example.com';
    //     //$headers[] = 'Bcc: birthdaycheck@example.com';
    //     // Mail it
    //     mail($to, $subject, $message, implode("\r\n", $headers));
    // }

    public function sendPhpEmail($to,$subject,$message, $emailInfo,$invoiceName){
        require 'vendor/autoload.php';
        $mail = new PHPMailer(true); 
        $cus_name       = DB::table('debtors_master')->where('email',$to)->first();
        $mail->From     = Session::get('company_email');
        $mail->FromName = Session::get('company_name');
        $mail->AddAddress($to,$cus_name->name);
        $mail->WordWrap = 50;
        $mail->IsHTML(true);

        $mail->Subject  = $subject;

        $mail->Body     = $message;
        $mail->AltBody  = strip_tags("Message");
        if(!empty($invoiceName)) {
        $mail->AddAttachment(public_path().("/uploads/invoices".'/'.$invoiceName),"Invoice",'base64','application/pdf');
         }
        $mail->Send();
   }

   
    

}
