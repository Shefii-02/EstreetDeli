
@extends('layouts.frontend')
@section('contents')
   <style>
   .card.border-1 {
    border-color: #f1f1f1;
}
   </style>
    <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">My Orders</h1>
                </div>
            </div>
        </div>
    </section>
    
    <section class="page_section py-5">
        <div class="container">
           
            <div class="row justify-content-center">
                <div class="col-md-10 ">
                               <div class="mb-3">
                        <a href="#" class="btn btn-light px-4 oswald border-0 bg-theme mb-2">
                            My Orders
                        </a>
                        <a href="{{ url('/myaccount/login-security') }}" class="btn btn-light px-4 oswald border-0 mb-2">
                            Profile and Security
                        </a>
                        <a href="{{ url('/myaccount/address') }}" class="btn btn-light px-4 oswald border-0 mb-2">
                            My Addresses
                        </a>
                    </div>   
                    <nav aria-label="breadcrumb" style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);"  class="mb-2">
                      <ol class="ms-0 breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('myaccount')}}">My Account</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Order History</li>
                      </ol>
                    </nav>
                    <div class="mb-2 ">
                        <div class="oswald">{{$orders->count()}} Order's  in</div>
                        <form action="" class="mb-0" id="filter_order"></form>
                        <div class="custom-select">
                          <select name="filter" form="filter_order" class="w-auto from-control form-select rounded" id="yearSelect">
                              {{app('request')->input('filter')}}
                            <option @if(app('request')->input('filter') == '2024') selected @endif value="2024">Last {{date('n')}} month</option>
                            <option @if(app('request')->input('filter') == '2023') selected @endif value="2023">2023</option>
                            <option @if(app('request')->input('filter') == '2022') selected @endif value="2022">2022</option>
                          </select>
                        </div>

                    </div>
                    
                    @if($orders->count() > 0 )
                    
                        @foreach($orders as $item)
                        <div class="card mb-3 rounded border-1">

                            <div class="card-header border-0" data-bs-toggle="collapse" data-bs-target="#order-{{$item->id}}" aria-expanded="false" aria-controls="{{$item->id}}" role="button">
                                <ul class="nav_booter list-unstyled  pe-md-5 m-0 d-flex justify-content-between flex-wrap">
                                    <li class="d-flex flex-column">
                                        <small class="oswald fs-6">Order Date</small>
                                        <div class="fs-5">{{dateOnly($item->created_at)}}</div>
                                    </li>
                                    <li class="d-flex flex-column">
                                        <small class="oswald fs-6">Order NO</small>
                                        <div class="fs-5">{{$item->invoice_id}}</div>
                                    </li>
                                    <li class="d-flex flex-column">
                                        <small class="oswald fs-6">Total</small>
                                        <div class="fs-5">{{getPrice($item->grandtotal)}}</div>
                                    </li>
                                    <li>
                                        @if($add_billing = $item->address->where('type','billing')->first())
                                            <small class="hover-container"><span class="oswald fs-6">Billing To <i class="fa fa-angle-down"></i></span>
                                              
                                                <div class="hidden-div  fw-bolder mb-5 p-3 rounded shadow-lg">
                                                    <div class="d-flex flex-column">
                                                        <small class="oswald fw-normal fs-6">{{$add_billing->firstname .' '. $add_billing->lastname}}</small>
                                                        <div>{{$add_billing->address}}</div>
                                                        <div>{{$add_billing->city.','.$add_billing->postalcode}}</div>
                                                        <div>{{$add_billing->province.','.$add_billing->country}}</div>
                                                    </div>
                                                </div>
                                            </small>
                                        @endif
                                          
                                    </li>
                                    @if($item->order_type == 'delivery')
                                    <li>
                                        @if($add_delivery = $item->address->where('type','delivery')->first())
                                            <small class="hover-container"><span class="oswald fs-6">Ship/Pickup <i class="fa fa-angle-down"></i></span>
                                              
                                            <div class="hidden-div  fw-bolder mb-5 p-3 rounded shadow-lg">
                                                <div class="d-flex flex-column">
                                                    <small class="oswald fw-normal fs-6">{{$add_delivery->firstname .' '. $add_delivery->lastname}}</small>
                                                    <div>{{$add_delivery->address}}</div>
                                                    <div>{{$add_delivery->city.','.$add_delivery->postalcode}}</div>
                                                    <div>{{$add_delivery->province.','.$add_delivery->country}}</div>
                                                </div>
                                            </div>
                                            </small>
                                        @endif
                                    </li>
                                    @endif
                                </ul>
                            </div>
                            <div class="card-body rounded order-details collapse" id="order-{{$item->id}}">
                                
                                <div class="row g-0">
                                    <div class="col-md-8 card-body pe-3">
                                        <div class=""  >
                                            @foreach($item->basket->items as  $listing_item)
                        
                                                <div class="col-md-12">
                                                    <div class="row g-0">
                                                        <div class="col-md-2">
                                                          <img onerror="this.onerror=null;this.src='/assets/images/dummy-product.jpg';" src="{{asset('images/products/'.$listing_item->picture)}}"  class="img-fluid rounded responsive-img-fluid" alt="...">
                                                        </div>
                                                        <div class="col-md-8">
                                                          <div class="card-body mt-3">
                                                              <div class="d-flex align-items-center">
                                                                  <div class="me-2 text-overflow">
                                                                      <h5 class="card-title oswald">{{$listing_item->product_name}} @if($listing_item->combo_product)(Combo)@endif</h5>
                                                            @if($listing_item->variation)
                                                            <p class="card-text">{{$listing_item->variation}}</p>
                                                            @endif
                                                                  </div>
                                                                  
                                                              </div>
                                                            
                                                            
                                                            <dl class="variation">
                                                                <dd class="variation-Baseprice">
                                                                    <p>
                                                                       <span class="woocommerce-Price-amount amount">
                                                                       {{$listing_item->variation}}</span>
                                                                    </p>
                                                                    
                                                                        @if($listing_item->removed_condiments != '')
                                                                            <p class="text-capitalize">
                                                                                <span class="fw-semibold">Removed Ingredients</span><br>
                                                                                {{$listing_item->removed_ingredients}}
                                                                            </p>
                                                                        @endif
                                                                        @if($listing_item->removed_condiments != '')
                                                                            <p class="text-capitalize">
                                                                                <span class="fw-semibold">Condiments added</span><br>
                                                                                {{$listing_item->removed_condiments}} 
                                                                            </p>
                                                                        @endif
                                                                </dd>
                                                             </dl>
                                                            
                                                             <ul class="ms-0 mt-3">
                                                                    @php
                                                                        $addonSub = 0;
                                                                    @endphp
                                                                 @if($listing_item->parentItem->count() > 0)
                                                                    <span class="fw-semibold small">Added Extra</span>
                                                                    
                                                                    @foreach($listing_item->parentItem as $pItems)
                                                                        @php
                                                                            $addon_price = $pItems->price_amount * $pItems->quantity; 
                                                                            $addonSub += $addon_price;
                                                                        @endphp
                                                                        <li class="small ms-3" data-price="{{$addon_price}}">
                                                                            
                                                                            {{$pItems->product_name}} x {{$pItems->quantity}} : {{getPrice($addon_price)}}
                                                                        </li>
                                                                    @endforeach
                                                                @endif
                                                             </ul>
                                                             @if($listing_item->combo_product)
                                                             <ul class="ms-0 mt-3">
                                                                    <span class="fw-semibold small">Combo items</span>
                                                                    
                                                                    @foreach($listing_item->combo_details as $combo)
                                                                        <li class="small ms-3">
                                                                            {{ $combo->name }}
                                                                        </li>
                                                                    @endforeach
                                                             </ul>
                                                             @endif
                                                             
                                                             @if($listing_item->upsell_product)
                                                             <ul class="ms-0 mt-3">
                                                                    <span class="fw-semibold small">Combo packs</span>
                                                                    
                                                                    @foreach($listing_item->upsell_details as $upsell)
                                                                        <li class="small ms-3">
                                                                            {{ $upsell->name }}
                                                                        </li>
                                                                    @endforeach
                                                             </ul>
                                                             @endif
                                                          </div>
                                                        </div>
                                                        <div class="col-md-2">
                                                            @php
                                                                $itmTtl = $listing_item->price_amount * $listing_item->quantity;
                                                                $subTtl = (int)$addonSub + (int)$itmTtl;
                                                              @endphp
                                                              <div class="ms-auto fw-semibold">
                                                                      {{getPrice($subTtl)}}
                                                                  </div>
                                                        </div>
                                                    </div> 
                                                </div>
                                                <hr>
                                            @endforeach
                                            
                                        </div>
                                    </div>
                                    <div class="col-md-4 order-page-s">
                                        <h5 class="mb-3 oswald">Order Summary</h5>
                                        <div id="od-subtotals" class="col-12 a-fixed-right-grid-col a-col-right">
                                            <div class="row fw-bolder">
                                                <div class="col-7 mb-3">
                                                    <p class="mb-0">Item(s) Subtotal:</p>
                                                </div> 
                                                <div class="col-5 text-end mb-3">
                                                    <span class="text-end">
                                                        {{getPrice($item->subtotal)}}
                                                    </span> 
                                                </div>
                                                <div class="col-7 mb-3">
                                                    <p class="mb-0">
                                                        Shipping:
                                                    </p> 
                                                </div> 
                                                <div class="col-5 text-end mb-3">
                                                    <span  class="text-end">
                                                        {{getPrice($item->shipping_charge)}}
                                                    </span> 
                                                </div> 
                                                <div class="col-7 mb-3">
                                                    <p class="mb-0" >
                                                        Tax:
                                                    </p> 
                                                </div> 
                                                <div class="col-5 text-end mb-3">
                                                    <span class="text-end">
                                                        {{getPrice($item->taxamount)}}
                                                    </span>
                                                </div> 
                                                <div class="col-7 mb-5">
                                                    <p class="mb-0">
                                                        Discount:
                                                    </p> 
                                                </div> 
                                                <div class="col-5 text-end mb-5">
                                                    <span class="text-end">
                                                        {{getPrice($item->discount)}}
                                                    </span>
                                                </div>
                                                <div class="col-12 order-page-ss" >
                                                    <div class="row w-100">
                                                        <hr>
                                                <div class="col-7">
                                                    <p class="mb-0 oswald">
                                                        Grand Total:
                                                    </p> 
                                                </div> 
                                                <div class="col-5 text-end">
                                                    <span class="text-end">
                                                        {{getPrice($item->grandtotal)}}
                                                    </span>
                                                </div> 
                                                    </div>
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        @endforeach
                    @else
                        <div class="text-center py-5">
                            <div class="oswald fs-1">No orders found.</div>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
@endsection    


@section('scripts')
<script>
$(document).ready(function() {
  $('.hover-container').mousemove(function(e) {
    const x = e.pageX - $(this).offset().left;
    const y = e.pageY - $(this).offset().top;

        $(this).find('.hidden-div').css({
          display: 'block',
        });
    });

    $('.hover-container').mouseleave(function() {
        $(this).find('.hidden-div').css('display', 'none');
    });
    $('#yearSelect').change(function() {
        $('#filter_order').submit();
    });
});

</script>
@endsection
                 