@extends('layouts.email')

@section('content')

<div style="padding: 0px 30px;">
   <div>
      <div>
         <p style="text-align: center; font-weight: 700; font-size: 30px; margin-top: 10px;">New Order</p>
      </div>
     
      
      <table cellpadding="10" cellspacing="0" align="center" border="0" style="border:none;" >
          <tr>
              <td align="center" style="border-right:1px solid #DDD; padding: 10px 15px; ">
                  <big><strong>Payment Status <br/>{!!$order_details->payment_status ? '<span style="color:Green;">PAID':'<span style="color:Red;">FAILED'!!}</span></strong></big>
              </td>
              <td align="center" style="padding: 10px 15px;">
                  <big><strong>Invoice#  <br/><span style="color:#f20c0c;">{{$order_details->invoice_id}}</span></strong></big>
              </td>
          </tr>
          <tr  align="center">
              <td align="center" colspan="2" style="padding: 10px 15px;border-top:1px solid #DDD;">
                  <big><strong>Order Amount <br/><span style="color:#f20c0c;">{{getPrice($order_details->grandtotal)}}</span></strong></big>
              </td>
             
          </tr>
      </table>
      
      <table cellpadding="10" cellspacing="0" border="0" align="center" style="margin:15px auto; border:1px solid #DDD; border-radius:10px;" width="500">
          <tr>
              <td align="center">
                 Order ID#:<br/><span style="text-decoration:underline;">{{$order_details->id}}</span>
              </td>
              <td align="center">
                  Trans. ID:<br/><span style="text-decoration:underline;">{{$order_details->transaction_id}}</span>
              </td>
              <td align="center">
                  Moneris Pay Ref#:<br/><span style="text-decoration:underline;">{{$order_details->reference_num}}</span>
              </td>
              
          </tr>
          
      </table>
      <div style="text-align:center; margin:15px">
         <a target="_new" href="{{url('order-inquiry?token='.$order_details->basket->session.'&invoiceId='.$order_details->invoice_id.'&activatedSession='.md5($order_details->basket->session))}}" style="margin:15px auto; padding:7px 10px; border-radius:5px;background-color:#f20c0c;color:#fff;opacity: 1;text-decoration:none;">ORDER INQUIRY</a>
      </div>
      
        @if($billing_address = $order_details->address->where('type','billing')->first())
        <table width="100%" cellpadding="5" cellspacing="0" align="center" style="background:#EEE; border-radius: 10px; margin:15px auto;width:500px; ">
            <tr>
                <th style="text-align:center;text-decoration:underline;">CUSTOMER INFORMATION</th>
            </tr>
            <tr>
                <td style="padding-left: 15px; padding-right:15px; text-align:center;" valign="top">
                    <p style="margin: 0 0 10px 0;">{{strtoupper(titleText($billing_address->firstname).' '.titleText($billing_address->lastname))}}<br/>{{titleText($billing_address->address)}}<br/>
                    {{strtoupper($billing_address->postalcode)}} <strong>{{titleText($billing_address->city)}}</strong> {{titleText($billing_address->province)}}.</p>
                    <p>
                        Phone: <strong>{{$billing_address->phone}}</strong><br/>
                        Email: <strong>{{$billing_address->email}}</strong><br/>
                    </p>
                </td>
            </tr>
        </table>
        @endif
      
      
        <table width="100%" cellpadding="5" cellspacing="0" align="center" style="background:#EEE; border-radius: 10px; margin:15px auto; width:500px; ">
            <tr>
                <th style="text-align:center; text-decoration:underline;">@if($order_details->basket->order_type == 'delivery') DELIVERY DETAILS @else PICKUP DETAILS @endif</th>
            </tr>
            <tr>
                <td width="50%"  style="padding-left: 15px; padding-right:15px; text-align:center;" valign="top">
                @if($order_details->basket->order_type == 'delivery')
                    @if($delivery_address = $order_details->address->where('type','delivery')->first())
                        <p style="margin: 0 0 10px 0;"><strong>{{strtoupper(titleText($delivery_address->firstname).' ' .titleText($delivery_address->lastname))}}</strong><br/>
                        {{titleText($delivery_address->address)}} <br/> {{strtoupper($delivery_address->postalcode)}} <strong>{{titleText($delivery_address->city)}}</strong> {{strtoupper(substr($delivery_address->province,0,2))}}.<br/>-------<br/>
                        Expected delivery date: <strong >{{date('d M y, D',strtotime($order_details->basket->serve_date))}}</strong></p>
                    @endif
                @else
                    @php
                        $pickupAddress = App\Models\Store::where('id',$order_details->basket->pickup_id)->first();
                        // 
                    @endphp
                    @if($pickupAddress)
                        <p style="margin: 0 0 10px 0;"><strong>{{strtoupper(titleText($pickupAddress->name))}}</strong><br/>
                        {{titleText($pickupAddress->address)}} <br/> {{strtoupper($pickupAddress->postal_code)}} <strong>{{$pickupAddress->city}}</strong> {{strtoupper(substr($pickupAddress->province,0,2))}}<br/>
                        <small><small><strong><a target="_new" href="{{url('/stores/'.$pickupAddress->slug)}}" style="color:#f20c0c;text-decortion:none;">VIEW LOCATION</a></strong></small></small><br/>
                        -------<br/>
                        Date: <strong >{{date('d M y, D',strtotime($order_details->basket->serve_date))}}</strong><br/>Time: <strong>{{date('h:ia',strtotime($order_details->basket->serve_time))}}</strong><br/>
                        </p>
                        
                    @endif
                @endif
                </td>
            </tr>
        </table>

      <p></p>
      <br>
      <div>
       <table style="width: 100%;" cellpadding="7" cellspacing="0" border="0">
                    <tr>

                        <th style="background: #f3f3f3;text-align: left;">
                            ITEM
                        </th>
                        <th style="background: #f3f3f3; text-align: center;">
                            QTY
                        </th>
                        <th style="background: #f3f3f3; text-align: right;">
                            PRICE
                        </th>
                    </tr>
                    @foreach ($order_details->orderItems->whereNull('parent') as $items_listing)
                  
                        <tr>
                            <td style="border-bottom: 1px solid #DDD;">
                                <div style="width:100%;display: inline-flex;align-items: center;">
                                    <div >
                                        <img  src="{{asset('images/products/'.$items_listing->picture)}}" width="100" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';" alt=""/>
                                    </div>
                                    <div style="margin-left:10px">
                                         <strong>{{ $items_listing->product_name }}</strong>
                                        @if ($items_listing->combo_product)
                                            (Combo)
                                        @endif -
                                        {{ $items_listing->variation }}<br>{{ $items_listing->product_sku }}
                                    </div>
                                </div>
                               
                                @if ($parentItem = $items_listing->parentItem)
                                    @foreach ($parentItem as $item_list)
                                        <span class="products-checkout col-12">

                                            <span valign="middle">
                                                {{ $item_list->product_name }} -
                                                {{ $item_list->variation }}<br>{{ $item_list->product_sku }}
                                            </span>
                                            <span align="center" valign="middle">
                                                {{ $item_list->quantity }}
                                            </span>
                                            <span align="right" valign="middle">
                                                {{ getPrice($item_list->price_amount * $item_list->quantity) }}
                                            </span>
                                        </span><br>
                                    @endforeach
                                @endif
                                <span class="variation">
                                    <span class="variation-Baseprice" style="margin:0px">
                                        <p>
                                            <span class="woocommerce-Price-amount amount">
                                                {{ $items_listing->variation }}</span>
                                        </p>

                                        @if ($items_listing->removed_ingredients != '')
                                            <div class="d-flex flex-wrap">  
                                                <small>
                                                    <span class="fw-semibold"><u>Ingredients removed</u></span><br>
                                                    @foreach(explode(',',$items_listing->removed_ingredients) ?? [] as $riItm)
                                                        <span class="bi bi-x-octagon" style="color: #c7c0c0;">x</span>  No {{$riItm}}
                                                        @if (!$loop->last) | @endif
                                                        
                                                    @endforeach
                                                </small>
                                            </div>
                                        @endif
                                        @if ($items_listing->removed_condiments != '')
                                            <div class="d-flex flex-wrap">  
                                                 <small>
                                                <span class="fw-semibold"><u>Condiments added</u></span><br>
                                                @foreach(explode(',',$items_listing->removed_condiments) ?? [] as $rcItm)
                                                    <span class="bi bi-check-circle text-muted" style="color: #c7c0c0;">+</span> {{$rcItm}}
                                                    @if (!$loop->last) | @endif
                                                @endforeach
                                                </small>
                                            </div>
                                        @endif
                                    </span>
                                </span>
                                @if ($items_listing->combo_product)
                                        <small class="fw-semibold small"><u>Combo items</u></small><br>
                                   
                                        @foreach ($items_listing->combo_details as $combo)
                                            <span  class="small ms-3">
                                               <small>{{ $combo->name }}</small> 
                                            </span>
                                            @if (!$loop->last) | @endif
                                        @endforeach
                                @endif
                                @if ($items_listing->upsell_product)
                                        <small class="fw-semibold small"><u>Combo Inludes ✓</u></small><br>

                                        @foreach ($items_listing->upsell_details as $upsell)
                                            <span  class="small ms-3">
                                                <small><span class="bi bi-check-circle text-muted" style="color: #c7c0c0;">+</span> {{ $upsell->name }}</small>
                                            </span>
                                            @if (!$loop->last) | @endif
                                        @endforeach
                                @endif
                                <br>
                                <i class="mt-2"><small>{{$items_listing->note != '' ? 'Notes : '.$items_listing->note  : '' }}</small></i>
                            </td>
                            <td style="border-bottom: 1px solid #DDD;" align="center" valign="middle">
                                {{ $items_listing->quantity }}
                            </td>
                            <td style="border-bottom: 1px solid #DDD;" align="right" valign="middle">
                                {{ getPrice($items_listing->price_amount * $items_listing->quantity) }}
                            </td>
                        </tr>
                    @endforeach
                </table>
      </div>
      <p></p>
      <table cellpadding="7" cellspacing="0" align="right">
        @if ($order_details->subtotal > 0)
            <tr>
                <th align="left">Subtotal</th>
                <td align="right">{{ getPrice($order_details->subtotal) }}</td>
            </tr>
        @endif
        
        @if ($order_details->discount > 0)
            <tr>
                <th align="left">Discount</th>
                <td align="right">{{ getPrice($order_details->discount) }}</td>
            </tr>
        @endif
        
        @if ($order_details->shipping_charge > 0)
            <tr>
                <th align="left">Shipping</th>
                <td align="right">{{ getPrice($order_details->shipping_charge) }}</td>
            </tr>
        @endif
        
        @if ($order_details->taxamount > 0)
            <tr>
                <th align="left">Tax</th>
                <td align="right">{{ getPrice($order_details->taxamount) }}</td>
            </tr>
        @endif
        
        @if ($order_details->grandtotal > 0)
            <tr>
                <th align="left"><strong>Grand Total</strong></th>
                <td align="right"><strong style="color:#f20c0c;">{{ getPrice($order_details->grandtotal) }}</strong></td>
            </tr>
        @endif

        </table>
        
          <div style="clear:both;float:none;"></div>
          <table cellpadding="7" cellspacing="0">
            <tr>
		        @if($order_details->basket->make_gift == 1)
			        <td>
			            <center><big><strong>Greeting Card Message</strong></big></center>
				        <p class="text-center" style="font-size: 18px;"><i><strong>{{$order_details->basket->card_msg}}</strong></i></p>
			        </td>
		        @endif
		    </tr>
		    <tr>
		        @if($order_details->basket->remarks != NULL)
			        <td>
			            <center><big><strong>Order Notes</strong></big></center>
				        <p class="text-left" style="font-size: 18px;">{{$order_details->basket->remarks}}</p>
			        </td>
		        @endif
			</tr>
			
          </table>
      <div style="clear:both;float:none;"></div>
      <div class=""></div>
   </div>
</div>


<div style="text-align:center">
    <a target="_new" href="{{url('share-feedback?token='.$order_details->basket->session.'&invoiceId='.$order_details->invoice_id.'&activatedSession='.md5($order_details->basket->session))}}">Share your feedback</a>
</div>
@endsection