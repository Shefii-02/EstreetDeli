<?php
namespace App\Service;
use App\Models\User;
use App\Models\Order;
use App\Models\Item;
use App\Models\Store;
use App\Models\Basket;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderInvoiceMail;
use App\Mail\OrderNotification;
use DB;

use SparkPost\SparkPost;
use GuzzleHttp\Client;
use Http\Adapter\Guzzle7\Client as GuzzleAdapter;
use Nyholm\Psr7\Factory\Psr17Factory;
use Http\Message\MessageFactory\DiactorosMessageFactory;
use Illuminate\Support\Facades\Log;

trait SendOrderEmail{

    public function SendEmailTrait(){
        
        $apiKey = '466adc43b257ebeb900e96563d6ca9778add5da3';
        $apiEndpoint = 'https://api.sparkpost.com/api/v1/';
                    
        $unsentCusEmails = Order::with('basket','orderItems','address')
                             ->whereHas('basket')
                             ->whereHas('address')
                             ->where('status',1)
                             ->where('customer_email_send',0)
                             ->whereNull('customer_email_send_message_id')
                             ->get();
                       
        $unsentStoreEmails = Order::with('basket','orderItems','address')
                             ->whereHas('basket')
                             ->whereHas('address')
                             ->where('status',1)
                             ->where('store_email_send',0)
                             ->whereNull('store_email_send_message_id')
                             ->get();
                             
            foreach($unsentCusEmails as $order_details){
                    //order Confirmation mail
                    $sendto = env('MAIL_TO_COPY');
                    
                    $email_from = env('MAIL_FROM_ADDRESS');
                    
                    $template = new OrderInvoiceMail($order_details);
                    $template = $template->render();
            
            
                    $client = new Client([
                        'headers' => [
                            'Authorization' => $apiKey,
                            'Content-Type' => 'application/json',
                        ],
                    ]);
                    
                    
                    
        
                    try{
                        $response = $client->post($apiEndpoint . 'transmissions', [
                            'json' => [
                                'options' => [
                                    'sandbox' => false,
                                ],
                                'content' => [
                                    'name' => 'EStreetDeli',
                                    'from' => $email_from,
                                    'subject' => "Thank you for Your Order",
                                    'html' => $template,
                                ],
                                'recipients' => [
                                    ['address' => ['name' => 'EStreetDeli ORDER MAIL','email' => $order_details->email]],
                                ],
                            ],
                        ]);
                        
                        $responseData = json_decode($response->getBody(), true);
    
                        if (isset($responseData['results']['id'])) {
                            $message_id = $responseData['results']['id'];
                             \Log::info("Customer Message id is  ".$message_id);
                             Order::where('id', $order_details->id)->update(['customer_email_send_message_id' => $message_id]);
                        } else {
                   
                            \Log::info("Customer Email Message id is  NULL");
                        }
             
                    }
                    catch(\Exception $e){
                          \Log::info($e);
                    }
                }
            
            
                /////order notification///
              
                
                foreach($unsentStoreEmails as $order_details){
                    $cc_mailId = [];
                    $cc_mailId [] = env('MAIL_TO_ORDER') ?? env('MAIL_FROM_ADDRESS'); 
                   $all_ordersSend = env('MAIL_TO_ORDER');
                   
                    $email_from = env('MAIL_FROM_ADDRESS');
                   
                    $store = Store::where('shipping',1)->first() ?? '';
            
                        
                        if(env('APP_URL') != 'https://stage.estreetdeli.ca'){
                            if($store){
                             
                                // Selected Store mail 
                                $cc_mailId[] = $store->email;  //primary mail id
                                
                                if($store->secondary_email != ''){
                                    $sec_emails  = explode(',',$store->secondary_email);
                                    $cc_mailId  = array_merge($cc_mailId,$sec_emails);
                                }
                                  
                            }
                            // $cc_mailId[] = 'jakki.sweetiepie@gmail.com';
                            // $cc_mailId[] = 'queenstsweetiepie@mysweetiepie.ca';
    
                        }
                        else{
                            $cc_mailId[] = 'shefii.indigital@gmail.com';
                        }
                            
                        if(count($cc_mailId) <= 0){
                            $cc_mailId[] = env('MAIL_TO_DEV'); 
                        }
                        
                       
                        $template = new OrderNotification($order_details);
                        $template = $template->render();
                    
                        $client = new Client([
                            'headers' => [
                                'Authorization' => $apiKey,
                                'Content-Type' => 'application/json',
                            ],
                        ]);
                        
                        
                    try{
                        
                        $response = $client->post($apiEndpoint . 'transmissions', [
                            'json' => [
                                'options' => [
                                    'sandbox' => false,
                                ],
                                'content' => [
                                    'name' => 'EStreetDeli',
                                    'from' => $email_from,
                                    'subject' => "Received New Order",
                                    'html' => $template,
                                ],
                                'recipients' => [
                                    ['address' => ['email' => $all_ordersSend]],
                                ],
                            ],
                        ]);
                        
                        
                        
                        $responseData = json_decode($response->getBody(), true);
    
                        if (isset($responseData['results']['id'])) {
                            $message_id = $responseData['results']['id'];
                             \Log::info("Store Message id is  ".$message_id);
                             Order::where('id', $order_details->id)->update(['store_email_send_message_id' => $message_id]);
                        } else {
                   
                            \Log::info("Store Email Message id is  NULL");
                        }
             
                        foreach($cc_mailId as $store_email_fwd){
                                $client = new Client([
                                    'headers' => [
                                        'Authorization' => $apiKey,
                                        'Content-Type' => 'application/json',
                                    ],
                                ]);
                                $response = $client->post($apiEndpoint . 'transmissions', [
                                    'json' => [
                                        'options' => [
                                            'sandbox' => false,
                                        ],
                                        'content' => [
                                             'name' => 'EStreetDeli',
                                             'from' => $email_from,
                                            'subject' => "Received New Order",
                                            'html' => $template,
                                        ],
                                        'recipients' => [
                                            ['address' => ['email' => $store_email_fwd]],
                                        ],
                                    ],
                                ]);
                           
                        }
                                 
                      
                    }
                    catch(\Exception $e){
                          \Log::info($e);
                    }
                        
                    
                }
                
        if($unsentCusEmails->count() > 0 || $unsentStoreEmails->count() > 0){
            
            \Log::info("SendEmailTrait Cron is working fine!");  
        }    
             return 0;
      }
}