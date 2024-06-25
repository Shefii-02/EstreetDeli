@extends('layouts.frontend')
@section('styles')
    <style>
    a.topBTN {
    position: fixed;
    bottom: 10px;
    right: 10px;
    padding: 0px;
    width: 40px;
    height: 40px;
    border-radius: 50%;
}
.modifierText.text-overflow {
    line-height: 1.25;
}
.delivery-partner img {
    width: 48px !important;
    height: 48px;
    margin: auto;
    margin-bottom: 10px;
}
        .nav-pills .nav-link{
            color:#000;
            font-size: 25px;
        }
        .nav-pills .nav-link.active, .nav-pills .show>.nav-link{
            color:#000;
            background:transparent;
            font-weight:800;
        }
      
        .modal.right-to-left .modal-dialog {
            margin-left: auto;
            margin-right: 0;
            transform: translateX(100%);
            transition: transform 0.3s ease-out;
        }

        .modal.show.right-to-left .modal-dialog {
            transform: translateX(0);
        }
        
        .product-item{
            /*border-radius: 24px;*/
            /*box-shadow: 0 0 6px rgba(0,0,0,.1);*/
            /*transition: box-shadow .15s ease-out;*/
        }
        
         .toggle-tabs{
         	 border-radius: 25rem;
             border: 1px solid #0000001c;
             background-color: #fff;
              position: relative;
              display: flex;
     
        
        }
        .toggle-tabs .pill-link {
        	background:#fff;
        	color:#000;
            border: 1px solid transparent;
            border-radius: 25rem;
            width:100%;
            padding:0;
        }

        .toggle-tabs .pill-link.active {
            border-color: #dee2e6 #dee2e6 #fff;
            background:#000;
            color:#fff;
        }
        
        .toggle-tabs .pill-link.active .dateTime{
            display:block !important;
        }
        .toggle-tabs .pill-link .dateTime{
            font-size:10px;
            display:none;
        }
        
        
        .loader-container {
              /*margin: 0 auto;*/
              width: 100%;
              max-width: 90%;
              display: flex;
              flex-direction: column;
              justify-content: left;
              align-items: left
            }
            
            @keyframes placeholder {
                0% { background-position: -600px 0 }
                100% { background-position: 600px 0 }
            }
            
            .animated-background {
              animation-duration: 1s;
              animation-fill-mode: forwards;
              animation-iteration-count: infinite;
              animation-name: placeholder;
              animation-timing-function: linear;
              background: #eeeeee;
              background: linear-gradient(to right, #eee 8%, #ddd 18%, #eee 33%);
              background-size: 1200px 100px;
              min-height: 30px;
              width: 100%;
              margin: 5px 0 5px 0;
              border-radius: 3px
            }
            
            #calendar-dropdown {
                z-index: 99999;
            }
            
            .calendar {
                display: flex;
                flex-direction: column;
                /*margin-bottom: 2rem;*/
            }
            .month {
                margin-bottom: 10px;
            }
            
            .date.disabled {
                cursor: not-allowed;
                color: gray;
            }
            .date {
                display: inline-block;
                width: 2rem;
                height: 2rem;
                line-height: 2rem;
                text-align: center;
                border-radius: 50%;
                cursor: pointer;
                text-decoration: none;
                font-weight: 800;
                color: #000000;
            }
            
            .month .date.today {
                background-color: green;
                color: #fff;
                border: 1px solid gray;
            }
            
            .date.holiday-allow {
                background-color: green;
                color: white;
            }
            .date.holiday {
                background-color: green;
                color: #fff;
                cursor: not-allowed;
            }
            .modal-dialog.modal-fullscreen.product-modal {
    max-width: 600px;
}.delivery-partner {
    border: 2px solid #fff;
}
.delivery-partner:hover {
    border-color: #999;
}
.del-check:checked+ label .delivery-partner {
    border-color: #111;
}
i.del-selected {
    position: absolute;
    right: 7px;
    top: 6px;
    line-height: 0;
    color: #111;
    opacity: 0;
}
.del-check:checked+ label .delivery-partner i{
    opacity: 1;
}
@media(max-width: 600px){
    .nav-pills .nav-link{
        font-size: 16px;
    }
    .menuItems-tabs.sticky .btn.cat-actions {
    display: block !important;
}
    
}
@media(max-width:1200px){
    .menuItems-tabs.sticky ul#pills-tab {
        display: flex;
        flex-wrap: nowrap;
        overflow: scroll;
    }
    .menuItems-tabs.sticky ul#pills-tab a {
        width: max-content;
    }
    .menuItems-tabs.sticky li.nav-item.mb-2 {
        margin-right: 10px;
    }
    .menuItems-tabs.sticky {
        top: 46px !important;
        padding-top: 36px !important;
    }
    li.nav-item.mb-2 {
    margin-right: 10px;
}
}
.menuItems-tabs.sticky {
    position: fixed;
    top: 76px;
    left: 50%;
    transform: translate(-50%, 0%);
    background: #fff;
    padding: 6px 0px;
}
.menuItems-tabs:not(.sticky) ul {
    justify-content: center;
}

    </style>
@endsection
@section('contents')
   <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">MENU</h1>
            </div>
        </div>
    </div>
</section>

@php
    if($basket){
        $order_type         =   $basket->order_type;
        $pickup_date        =   $basket && $basket->serve_date != '' && date('Y-m-d',strtotime($basket->serve_date)) >= date('Y-m-d')  ? $basket->serve_date : '';
        $pickup_time        =   $basket->serve_time;
        $location           =   $basket->formatted_address;
        $showingDateTime    =   date('Y-m-d',strtotime($basket->serve_date)) >= date('Y-m-d') ? date('F d, Y',strtotime($basket->serve_date)) .' '. date('h:i a',strtotime($pickup_time)) : '';
        $showingDate        =   date('Y-m-d',strtotime($basket->serve_date)) >= date('Y-m-d') ? date('F d, Y',strtotime($basket->serve_date)) : '';

    }
    else if(session()->has('session_string')){
        $order_type         =   session('ordertype');
        $pickup_date        =   session('pickup_time');
        $pickup_time        =   session('pickup_date');
        $location           =   session('formatted_address');
        $showingDateTime    =   date('Y-m-d',strtotime(session('pickup_date'))) >= date('Y-m-d') ? date('F d, Y',strtotime(session('pickup_date'))) .' '. date('h:i a',strtotime(session('pickup_time'))) : '';
        $showingDate        =   date('Y-m-d',strtotime(session('pickup_date'))) >= date('Y-m-d') ? date('F d, Y',strtotime(session('pickup_date'))) : '';

   }
    else{
        $order_type         ='';
        $pickup_date        ='';
        $pickup_time        ='';
        $location           ='';
        $showingDateTime    ='';
        $showingDate        = '';
        
    }
    $delivery_partner = session('delivery_partner');
@endphp

    <div class="col-lg-12 for_mobile-devices">
        <div class="container">
            <div class="row justify-content-center justify-content-md-end ">
                <div class="col-12 col-lg-4 pt-5 pb-1 pb-md-5 float-end">
            <div class="nav toggle-tabs">
                <div role="button" class="w-50 nav-item pill-link {{$order_type == 'pickup' && $order_type != 'delivery'  ? 'active' : '' }} {{ $showingDate =='' ? 'p-2' : '' }} d-flex justify-content-center align-items-center tab-shipping ShippingSelect " data-partDiv="pickupDiv" data-tab="pickup-tab" id="tab1" >
                    <span role="button" class="text-center line-15" data-partDiv="pickup">
                        <i class="bi bi-bag"></i> Pickup <br>
                        <span class="dateTime">{!! $showingDateTime !!} </span>
                    </span>

                </div>
                <div role="button" class="w-50 nav-item pill-link  {{$order_type == 'delivery' ? 'active' : '' }} {{ 'p-2' }} d-flex justify-content-center align-items-center tab-shipping ShippingSelect" data-partDiv="deliveryDiv" data-tab="delivery-tab" id="tab2" >
                    <span role="button" class="text-center line-15" data-partDiv="delivery">
                        <i class="bi bi-truck"></i> Delivery <br>
                        <span class="dateTime">{!! $showingDate !!}</span>
                    </span>
                </div>
            </div>
        </div>
            </div>
        </div>
    </div>
    
   

    <section class="pb-5">
        <div class="container">
            <div class="col-12 col-lg-12 align-items-center d-flex justify-content-center text-center menuItems-tabs">
                <div class="btn border-0 px-2 mb-2 d-none cat-actions left"><i class="bi bi-chevron-left"></i></div>
                <ul class="nav nav-pills mt-0 mt-sm-3 mt-md-0  ms-0 mb-0" id="pills-tab" role="tablist">
                    @foreach($categories as $key => $cItems)
                    @if($cItems->product_list->count())
                      <li class="nav-item mb-2" role="presentation">
                        <a class="nav-link fw-bold display-1 for_small-device-border" id="pills-{{Str::slug($cItems->name)}}-tab" href="#{{ Str::slug($cItems->name) }}"  role="tab" aria-selected="true">
                           {{$cItems->name}}
                        </a>
                      </li>
                    @endif
                    @endforeach
                </ul>
                <div class="btn border-0 px-2 mb-2 d-none cat-actions right"><i class="bi bi-chevron-right"></i></div>
            </div>
            <div class="col-12 col-lg-12 text-center menuItems-contents">
                <div class="tab-content" id="pills-tabContent">
                     
                    @foreach($categories as $key => $cItems)
                        @if($cItems->product_list->count())
                        <div class="tab-pane fade show active" id="pills-{{Str::slug($cItems->name)}}" role="tabpanel" tabindex="{{$key == 0}}">
                            <div id="{{ Str::slug($cItems->name) }}" class="title-category text-center my-5">
                                <h1 class="text-uppercase ff-sunset-boulevard fw-normal display-2">
                                    {!! preg_replace('/\(([^)]+)\)/', '<span class="small oswald">($1)</span>', $cItems->name) !!}
                                    </h1>
                            </div>
                            <div class="row justify-content-center">
                                @foreach($cItems->product_list as $Items)
                                    @php
                                        $pImages = $Items->product_images;
                                        $pImage = '';
                                    @endphp
                                    @if($pImage  = $pImages->where('type','Thumbnail')->pluck('picture')->first())
                                    @elseif($pImage  = $pImages->where('type','Main Image')->pluck('picture')->first()) 
                                    @endif 
                                    <div class="col-lg-4 col-6 mb-3 ">
                                        <a class="product-single" data-puid="{{$Items->product_single->id}}" data-pslug="{{$Items->product_single->slug}}" data-href="{{route('product',$Items->product_single->slug)}}" href="#" {!! (session()->has('ordertype') && session('ordertype') != '') ? 'data-bs-toggle="modal" data-bs-target="#ProductShow"' : 'data-bs-toggle="modal" data-bs-target="#ShippingSelect"' !!}
>
                                            <div class="product-outer product-item p-0 p-lg-2">
                                              <div class="product-inner">
                                                 <div class="product-image-wrapper d-flex justify-content-center">
                                                        <img src="{{ $pImage != '' ? asset('images/products/' .$pImage) : '/assets/images/dummy-product.jpg'}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';"  class="text-center" alt="13" title="13">
                                                 </div>
                                                 <div class="product-content-wrapper">
                                                       <h3 class="mb-3 mt-3">{{$Items->product_single->name}}</h3>
                                                       <div itemprop="description text-overflow2">
                                                            <div style="max-height: none;" class="text-overflow2 d-none">
                                                              {!! strip_tags($Items->product_single->description) !!}
                                                            </div>
                                                       </div>
                                                 </div>
                                              </div>
                                            </div>
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                        @endif
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    
    <!-- Modal -->
    <form class="addtocart bg-white">
    <div class="modal fade right-to-left" id="ProductShow" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen product-modal">
            <div class="modal-content content-body">
                
            </div>
        </div>
    </div>
    </form>
      <!-- Modal -->
        <div class="modal fade" id="ShippingSelect" data-bs-backdrop="static"  tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-md">
                <div class="modal-content">
                    <div class="modal-header justify-content-center">
            <h5 class="modal-title ff-sunset-boulevard fw-normal fs-2 text-center" id="new_ModalLabel">Pickup <span class="oswald">/</span> Delivery Options</h5>
          </div>
                    <div class="modal-body">
                        <!--<p class="text-danger small">Please enter a delivery address or change your order to Pickup</p>-->
                        <div class="nav my-3 toggle-tabs">
                            <div class="w-50 nav-item pill-link active d-flex justify-content-center align-items-center tab-shipping pickup-tab tabs-btn" data-partDiv="pickupDiv" data-tab="pickup-tab"  id="tab3" data-bs-toggle="pill">
                                <span class=" text-center py-1 line-15" role="button"> <i class="bi bi-bag"></i> Pickup <br>
                            	    <span class="dateTime">{{ $showingDateTime}}</span>
                                </span>
                            </div>
                            <div class="w-50 nav-item pill-link d-flex justify-content-center align-items-center tab-shipping delivery-tab tabs-btn" data-partDiv="deliveryDiv" data-tab="delivery-tab" id="tab4" data-bs-toggle="pill">
                                <span class="text-center py-1 line-15" role="button"><i class="bi bi-truck"></i> Delivery <br>
                        	    <span class="dateTime"> {{ $showingDate}} </span>
                        	    </span>
                            </div>
                        </div>
                        
                        <div class="my-3 partDiv" id="pickupDiv">
                            <form action="{{url('select-location')}}" method="GET" class="validated not-ajax">
                                @csrf
                                 <div class="col-lg-12  mb-2">
                                     <input type="hidden" name="ordertype" value="pickup">
                                     <label for="date" class="form-label">Date<span class="text-danger"> *</span></label> 
                                    <div class="input-group form-group ">
                                        
                                        <span class="form-control date-input cursor-pointer rounded-0  date-dropdown-toggle"  id="date-dropdown-toggle" >@if($basket) {{$basket->serve_date != '' && date('Y-m-d',strtotime($basket->serve_date)) >= date('Y-m-d')  ? date('F d, Y',strtotime($basket->serve_date)) : ''}} @endif</span>
                                        <input type="hidden"  value="{{$basket && $basket->serve_date != '' && date('Y-m-d',strtotime($basket->serve_date)) >= date('Y-m-d')  ? $basket->serve_date : ''}}"
                                         name="pickup_date" class="shipping_date_hidden date-dropdown-toggle-value">
                                        <span class="input-group-text date-dropdown-toggle cursor-pointer" id="calendar-icon">
                                            <i class="bi bi-calendar-check-fill date-dropdown-toggle"></i>
                                        </span>
                                    </div>
                                    
                                </div>
                                
                                <div class="col-lg-12">
                                    <div class="mb-3">
                                        {!! ShippingRulePickupBasedCalender('1','pickup') !!}
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="mb-3">
                                        <label for="time" class="form-label">Time<span class="text-danger"> *</span></label>
                                        <select name="pickup_time"  class="form-select rounded-0"   id="pickup_time" required>
                                        </select>
                                        <span class="text-danger time_exceeded"></span>
                                    </div>
                                </div>
                                
                                <div class="col-lg-12 text-center">
                                    <div class="mb-3">
                                        <input type="submit" class="btn tertiary-btn" name="update" value="Continue">
                                    </div>
                                </div>
                            </form>
                        </div>
                    <!----------------------------------------------------------------------------------------->
                    <!----------------------------------------------------------------------------------------->
                    <!----------------------------------------------------------------------------------------->
                        <div class="my-3 partDiv" id="deliveryDiv" style="display:none">
                            <form action="{{url('select-location')}}" method="GET" class="validated not-ajax" target="_blank">
                                @csrf 
                                <input   type="hidden" id="ordertype" name="ordertype" value="delivery">
                                <input value="{{session()->has('delivery_partner') ? session('delivery_partner') : ''}}"  type="hidden" id="delivery_partner'" name="delivery_partner'">
                               {{-- <div class="col-lg-12"> 
                                    <input type="hidden"  value="{{$pickup_date}}"
                                         name="pickup_date" class="shipping_date_hidden date-dropdown-toggle-value">
                                         
                                    <div class="mb-3">
                                        <label for="address" class="form-label">Deliver to<span class="text-danger"> *</span></label>  
                                        
                                        <div class="form-group">
                                            <input  type="text" required="" value="{{$location}}" name="address" id="addressAutocomplete" class="form-control select_city pac-target-input" placeholder="Enter your address" autocomplete="off">
                                        </div>
                                        <input   type="hidden" id="ordertype" name="ordertype" value="delivery">
                                        <input value="{{session()->has('postalcode') ? session('postalcode') : ''}}"  type="hidden" id="postal" name="postal">
                                        <input value="{{session()->has('city') ? session('city') : ''}}"  type="hidden" id="city" name="city">
                                        <input value="{{session()->has('shipping_location') ? session('shipping_location') : ''}}"  type="hidden" id="country" name="country">
                                        <input value="{{session()->has('delivery_partner') ? session('delivery_partner') : ''}}"  type="hidden" id="street_address" name="street_address">
                                        <input value="{{session()->has('formatted_address') ? session('formatted_address') : ''}}"  type="hidden" id="formatted_address" name="formatted_address">   
                                    </div>
                                </div>
                                
                                <div class="col-lg-12  mb-2">
                                        <label for="date" class="form-label">Date<span class="text-danger"> *</span></label>  
                                     <div class="input-group form-group ">
                                        <span class="form-control rounded-0 date-input cursor-pointer date-dropdown-toggle"  id="date-dropdown-toggle" >{{$showingDateTime}}</span>
                                        <span class="input-group-text date-dropdown-toggle cursor-pointer" id="calendar-icon">
                                            <i class="bi bi-calendar-check-fill date-dropdown-toggle"></i>
                                        </span>
                                    </div>
                                </div>
                                
                                <div class="col-lg-12">
                                    <div class="mb-3">                 
                                        {!! showDeiveryCalender('1','delivery') !!}
                                    </div>
                                </div> --}}
                                
                                @if(count($deliveryPatners) && env('DELIVERY_AVAILABLE'))
                                
                                <div class="col-lg-12 deliverypatnerDiv">
                                    <div class="my-3">
                                        <label for="delivery_type" class="form-label">Delivery Type<span class="text-danger"> *</span></label>
                                        <div class="row">
                                            @foreach($deliveryPatners ?? [] as $key => $deliPatnr)
                                            <div class="col">
                                                <input {{ $delivery_partner == $deliPatnr->master_id || !$key ? 'checked' : '' }} name="delivery_partner" id="del_{{$deliPatnr->master_id}}" class="del-check" value="{{$deliPatnr->master_id}}" hidden type="radio">
                                                <label class="w-100" role="button" for="del_{{$deliPatnr->master_id}}">
                                                    <div class="rounded-2 text-center p-2 delivery-partner shadow-sm position-relative">
                                                        <i class="bi bi-check-circle-fill del-selected"></i>
                                                    <img class="w-100 rounded-circle" src="{{ asset('assets/images/'.$deliPatnr->name) }}.png">
                                                    <div class="small">{{$deliPatnr->name}}</div>
                                                </div>
                                                </label>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 text-center">
                                    <div class="mb-3">
                                        <input type="submit" class="btn tertiary-btn" name="update" value="Continue">
                                    </div>
                                </div>
                                @else
                                <div class="text-danger text-center my-4">
                                    Delivery Currently Unavailable.
                                </div>
                                @endif
                                
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class="toTop" style="display:none">
            <a href="#page" class="d-flex align-items-center topBTN tertiary-btn">
                <i class="bi bi-arrow-up-short m-auto"></i>
            </a>
        </div>
        <div class="modal fade" id="ProductCombo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static">
        <div class="modal-dialog modal-dialog-centered modal-fullscreen product-combo-modal">
            <div class="modal-content content-body">
                
            </div>
        </div>
    </div>
@endsection


@section('scripts')
    <script>
    $(document).ready(function() {
        
        
        @if((session()->has('ordertype') && session('ordertype') == '') || !session()->has('ordertype'))
              $('#ShippingSelect').modal('show');
        @endif

            @if(request()->has('product'))
            loadProduct('/product/'+'{{ request()->product }}');
            @endif
            function loadProduct(url){
                $('#ProductShow .content-body').html(`<div class="loader-container p-5 text-left" style="hidden">
                                            <div class="animated-background"></div>
                                            <div class="animated-background"  style="width: 80%"></div>
                                            <div class="animated-background"  style="width: 90%"></div>
                                            <div class="animated-background"  style="width: 80%"></div>
                                            <div class="animated-background"  style="width: 90%"></div>
                                            <div class="animated-background"  style="width: 80%"></div>
                                            <div class="animated-background"  style="width: 90%"></div>
                                            <div class="animated-background"  style="width: 80%"></div>
                                            <div class="animated-background"  style="width: 90%"></div>
                                            <div class="animated-background" style="position: relative;width: 30%;left: 30%;"></div>
                                        </div>`);          
                                        
                                        
                 $.ajax({
                        url: url,
                        cache: false,
                        success: function (response) {
                            $('#ProductShow .content-body').html(response.data);
                            $('#ProductShow').modal('show');
                              
                            var ViewData = response.ViewData;
                            console.log(ViewData);
                            gtag("event", "view_item", ViewData);
                        },
                        error: function (error) {
                            console.log(error)
                        }
                    });
            }
            
            $('.product-single').on('click', function(e) {
                e.preventDefault();
                var url =$(this).data('href');
                
                loadProduct(url)
                
            });

            $('body').on('click','.ShippingSelect', function(e) {
                $('#ShippingSelect').modal('show');
         
            });
        
            $('body').on('click','.tab-shipping', function(e) {
               
                var activeTab   = $(this).attr('data-tab'); 
              
                var partDiv     = $(this).attr('data-partDiv');
                $('.partDiv').hide();
                $('#' + partDiv).show();
                $('#ShippingSelect').modal('show');
                
                $('.tabs-btn').removeClass('active');
                $('.' + activeTab).addClass('active');
            });
            
          function deliverypartnerVisible(sell_date){
                /*if(sell_date == `{{date('Y-m-d')}}`){
                    $('.deliverypatnerDiv').show();
                }
                else{
                    $('.deliverypatnerDiv').hide();
                }*/
            }
                     
            // Toggle calendar dropdown on button click
          
            $('body').on('click','.date-dropdown-toggle', function() {
                $('#calendar-dropdown').toggleClass('d-none');
            });
            
            
            
            $(document).click(function(event) {
                var target = $(event.target);
                if (!target.closest('#calendar-dropdown').length && !target.is('.date-dropdown-toggle')) {
                  $('#calendar-dropdown').addClass('d-none');
                //   $('.month-1').addClass('d-none');
                  $(".show-more-dates").text('More dates');
                }
              });

            $('body').on('click','.valid_date', function(e) {
                e.preventDefault();
                var selectedDate     =  $(this).data('date');
                var availableTime_on =  $(this).data('start');
                var availableTime_to =  $(this).data('end');
              
                $('.month-1').addClass('d-none');$(".show-more-dates").text('More dates');
                
                 // Format the date using Moment.js
                var formattedDate = moment(selectedDate).format('MMMM D, YYYY');
        
                $('.date-input').text(formattedDate);
                
                $('.date-dropdown-toggle-value').val(selectedDate);
                $('#calendar-dropdown').addClass('d-none');
                
                pickuptimeListing(availableTime_on,availableTime_to)
                
                deliverypartnerVisible(selectedDate)
            });
            
            
          
            
            if($('.date-dropdown-toggle-value').val() == ''){
               $('.valid_date:first').click();
              
            }
            else
            {
                    var dateBase = $('.shipping_date_hidden').val();
           
                        $('#pickupDiv .valid_date').each(function() {
                            var selectedDate     =  $(this).data('date');
                            if( selectedDate == dateBase){
                                var availableTime_on =  $(this).data('start');
                                var availableTime_to =  $(this).data('end');
                                
                                pickuptimeListing(availableTime_on,availableTime_to);
                            }
                        });
            }
            
             $('body').on('click','.btn-cal-nxt', function(e){
                var monthNo = $(this).data('mid');
                $('.month').hide();
                $('.month-id-'+monthNo).show().removeClass('d-none');
            });
            
            // $(".show-more-dates").click(function(e) {

            //     $('.month-1').toggleClass('d-none');
            //     e.preventDefault();
    
               
            //     var text = $(this).text();
    
            //   if (text === 'Less dates') { 
            //         $(this).text('More dates'); 
            //     } else {
            //         $(this).text('Less dates'); 
            //     }

            // })
              
            function convert12HourTo24Hour(time12Hour) {
                return moment(time12Hour, 'hh:mm A').format('HH:mm');
            }
            
            function pickuptimeListing(startTime, endTime) {
            
                var interval = 15; // 15 minutes
                var options = '';
            $('.time_exceeded').html('')
                // Parse the start and end times using Moment.js
                var startDate = moment(startTime, 'HH:mm');
                var endDate = moment(endTime, 'HH:mm');
                console.log(startDate + endDate)
                if(startDate <= endDate){
                    while (startDate <= endDate) {
                        var time12Hour = startDate.format('hh:mm A'); // Format as 12-hour time with AM/PM
                        var time24Hour = convert12HourTo24Hour(time12Hour); // Convert to 24-hour format
                
                        options += '<option value="' + time24Hour + '">' + time12Hour + '</option>';
                
                        // Increment time by 15 minutes
                        startDate.add(interval, 'minutes');
                    }
                }
                else
                {
                    $('.time_exceeded').html('Time exceeded please choose another date');
                }
                
                
            
                $('#pickup_time').html(options);
                
                @if(isset($basket))
                    @if($basket->serve_time != NULL)
                        var time = moment(`{{$basket->serve_time}}`, 'HH:mm').format('HH:mm');
                        $('#pickupDiv #pickup_time').val(time)     
                    @endif
                @endif
            }
        
        
    });
    </script>
    
    
     <script>
         $('body').on('click', '.add-cart-btn', async function() {
           
                
                let data = $('.addtocart').serialize();
                
                let error = false;
                if($(".combo-check:checked").length > parseInt($('.categories').data('max'))){
                    $('.categories').append(`<p class="err text-danger small">You can only select max ${$('.categories').data('max')} items for <strong>combo</strong></p>`)
                    error = true;
                }else if($(".combo-check:checked").length < parseInt($('.categories').data('min'))){
                    $('.categories').append(`<p class="err text-danger small">Please select min ${$('.categories').data('min')} items for <strong>combo</strong></p>`);
                    error = true;
                }
                
                await $('.combo-category').each(function(){
                    if($(this).find(".combo-check:checked").length > parseInt($(this).data('max'))){
                        $(this).append(`<p class="err text-danger small">You can only select max ${$(this).data('max')} items in <strong>${$(this).data('category')}</strong></p>`)
                        error = true;
                    }else if($(this).find(".combo-check:checked").length < parseInt($(this).data('min'))){
                        $(this).append(`<p class="err text-danger small">Please select min ${$(this).data('min')} items in <strong>${$(this).data('category')}</strong></p>`)
                        error = true;
                    }
                });
        
                if(!error){
                $.ajax({
                    url: '{{url('basket/add')}}',
                    type: 'GET',
                    data: data,
                    success: function(response) {
                        console.log(response)
                        if(response.result == 1){
                            $('.cart-icon .cart-count').html(response.cart_count);
                            let html = '<h1 class="main-h1"> Thank you </h1>' + '<h2 class="main-h2"> Item has been added to the cart </h2>';
                            if(response.combo_product){
                                html = `<h1 class="main-h1"> Thank you </h1><h2 class="main-h2"> Item has been added to the cart </h2> <div class="">Do you want to make ${response.product_name} as meal ? <a href="#" data-id="${response.item_id}" class="make-it-meal text-theme oswald">Yes</div></div>`
                            }
                            
                            var addToCartData = response.addToCartData;
                            console.log(addToCartData);
                            gtag("event", "add_to_cart", addToCartData);
                            
                            
    
                            if(response.combo_product){
                                loadCombo(response.item_id);
                                return false;
                            }
                            Swal.fire({
                                icon: 'success',
                                html: html,
                                showCancelButton: true,
                                confirmButtonText: 'Go to Cart',
                                cancelButtonText: 'Continue Shopping',
                                allowOutsideClick: false
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    window.location.href = '/cart';
                                } else if (result.dismiss === Swal.DismissReason.cancel) {
                                    window.location.href = '/menu';
                                }
                            });
                        }
                        else {
                            alert('Error');
                        }
                    }
                });
                }
            });
            $(document).on('click', '.addon-item', function(e){
                if($(this).is(':checked')){
                    $(this).addClass('added');
                }
                setPrice();
            });
            $(document).on('click', '.addon-item.added', function(e){
                e.preventDefault();
            });
            $(document).on('click', '.delete-addon', function(){
                let option  = $(this).closest('.option-container');
                option.find('.addon-item').removeAttr('checked').removeClass('added');
                option.find('.addon-qty').val(1);
                option.find('.addon-quantity').text(1);
                option.removeClass('has-more-addon');
                setPrice();
            });
            $(document).on('click', '.less-addon', function(){
                let option  = $(this).closest('.option-container');
                let count = parseInt(option.find('.addon-qty').val());
                count = count-1;
                option.find('.addon-qty').val(count);
                option.find('.addon-quantity').text(count);
                if(count < 2){
                    option.removeClass('has-more-addon');
                }
                setPrice();
            });
            $(document).on('click', '.more-addon', function(){
                let option  = $(this).closest('.option-container');
                let count = parseInt(option.find('.addon-qty').val());
                count = count+1;
                option.find('.addon-qty').val(count);
                option.find('.addon-quantity').text(count);
                if(count > 1){
                    option.addClass('has-more-addon');
                }
                setPrice();
            });
            $(document).on('click', '.m-less-addon', function(){
                let option  = $('.single_variation_wrap');
                let count = parseInt(option.find('input.input-text.qty.text').val());
                if(count < 2){
                    $(this).addClass('text-muted');
                    return false;
                }
                count = count-1;
                option.find('input.input-text.qty.text').val(count);
                $('.m-addon-quantity').text(count);
                setPrice();
            });
            $(document).on('click', '.m-more-addon', function(){
                let option  = $('.single_variation_wrap');
         
                let count = parseInt(option.find('input.input-text.qty.text').val());
                count = count+1;
                option.find('input.input-text.qty.text').val(count);
                $('.m-addon-quantity').text(count);
                $('.m-less-addon').removeClass('text-muted');
                setPrice();
            });
            async function setPrice(){
                let mcount = parseInt($('input.input-text.qty.text').val());
                let productPrice =  parseFloat($('.add-cart-btn ').data('price'));

                let addonPrices = 0;
                await $('.addon-item.added').each(function(){
                    let count = parseInt($(this).parent().find('.addon-qty').val());
                    let price = parseFloat($(this).data('price'));
                    let amount = count * price
                    addonPrices = addonPrices + amount;
                });
                let amount = (productPrice+addonPrices) * mcount;
                $('.number-font').text('$'+amount);
            }
    </script>
 <script>
  $(document).ready(function() {
    checkScrollPosition();
    $(window).scroll(function() {
      checkScrollPosition();
    });

    function checkScrollPosition() {
      if ($(this).scrollTop() > 300) {
        $('.toTop').fadeIn();
      } else {
        $('.toTop').fadeOut();
      }
    }
  });
  function loadCombo(id){
      swal.close();
    $('#ProductShow').modal('hide');
    $.ajax({
        url: '/load-combo/'+id,
        cache: false,
        success: function (html) {
            $('#ProductCombo .content-body').html(html);
            $('#ProductCombo').modal('show');
            setTimeout(function() {
    $('.disappear').hide();
  }, 2000);
        },
                        
    });  
  }
  $(document).on('click', '.make-it-meal', function(e){
    e.preventDefault();
    
    let id = $(this).data('id');
    loadCombo(id);
  });
  
</script>
<script>
    $(document).on('click', '.combo-check', function(){
        fixComboItems();
        
    });
    
    function fixComboItems(){
        if($(".combo-check:checked").length >= parseInt($('.categories').data('max'))){
            $('.combo-check[type="checkbox"]:not(:checked)').attr('disabled', true).addClass('not-allowed');
        }else{
            $('.combo-check[type="checkbox"]').attr('disabled', false).removeClass('not-allowed');
        }
        
        $('.combo-category').each(function(){
            if($(this).find(".combo-check:checked").length >= parseInt($(this).data('max'))){
                $(this).find('.combo-check[type="checkbox"]:not(:checked)').attr('disabled', true).addClass('not-allowed');
            }else{
                $(this).find('.combo-check[type="checkbox"]:not(.not-allowed)').attr('disabled', false).removeClass('not-allowed');
            }
        });
        
        $(this).closest('.combo-category').find('.err').remove();
        fixCheckedComboItems();
    }

    async function fixCheckedComboItems(){
        $('.selection').show();
        await $('.combo-category').each(function(){
            let $p = $(this).parent();
            
            let selected = $p.find(".combo-check:checked").length;
            console.log(selected);
            $p.find('.selected').text(selected);
            $p.find('.selection').removeClass('text-theme');
            if(selected && selected >= parseInt($(this).data('min'))){
                $p.find('.selection').addClass('text-theme');
            }
        })
        if($(".combo-check:checked").length >= parseInt($('.categories').data('max'))){
            await $('.combo-category').each(function(){
                if(!$(this).find(".combo-check:checked").length && !parseInt($(this).data('min')))
                $(this).parent().find('.selection').hide()
            });
        }
        
        await $('.combo-category').each(async function(){
            let $p = $(this).parent();
            let selected = "Select items";
            if($(this).find('.combo-check:checked').length == 1){
                
                let $html = $(this).find('.combo-check:checked+.combo-item .combocontent');
                    
                selected = $html.prop('outerHTML');
                
            }
            else if($(this).find('.combo-check:checked').length){
                selected = await $(this).find('.combo-check:checked').map(function() {
                    return $(this).data('name');
                }).get().join(', ');
                
                
            }
            $(this).find('.dropdown-toggle').html(selected);
            
        })
        
    }
    $(document).on('submit', '#combo_form', async function(e){
        e.preventDefault();
        let id = $(this).data('id');
        let $this = $(this);
        
        
        $('.err').remove();
        let error = false;
        if($(".combo-check:checked").length > parseInt($('.categories').data('max'))){
            $('.categories').append(`<p class="err text-danger small">You can only select max ${$('.categories').data('max')} items for combo</p>`)
            error = true;
        }else if($(".combo-check:checked").length < parseInt($('.categories').data('min'))){
            $('.categories').append(`<p class="err text-danger small">Please select min ${$('.categories').data('min')} items for combo</p>`);
            error = true;
        }
        
        await $('.combo-category').each(function(){
            if($(this).find(".combo-check:checked").length > parseInt($(this).data('max'))){
                $(this).append(`<p class="err text-danger small">You can only select max ${$(this).data('max')} items in ${$(this).data('category')}</p>`)
                error = true;
            }else if($(this).find(".combo-check:checked").length < parseInt($(this).data('min'))){
                $(this).append(`<p class="err text-danger small">Please select min ${$(this).data('min')} items in ${$(this).data('category')}</p>`)
                error = true;
            }
        });
        
        if(!error){
            let data = $(this).serialize();
            $.ajax({
                url: '/load-combo/'+id,
                type: "POST",
                data: data,
                cache: false,
                success: function (response) {
                    let html = '<h1 class="main-h1"> Thank you </h1>' + '<h2 class="main-h2"> Item has been updated as combo </h2>';
                    Swal.fire({
                    icon: 'success',
                        html: html,
                        showCancelButton: true,
                        confirmButtonText: 'Go to Cart',
                        cancelButtonText: 'Continue Shopping',
                        allowOutsideClick: false
                    }).then((result) => {
                        if (result.isConfirmed) {
                            window.location.href = '/cart';
                        } else if (result.dismiss === Swal.DismissReason.cancel) {
                            window.location.href = '/menu';
                        }
                    });
                    $('#ProductCombo').modal('hide');
                },
                error: function(){
                    Swal.fire({
                    icon: 'error',
                        html: "Something went wrong",
                    });
                }
            });
        }
        
    })

</script>
 <script>
  $(document).ready(function() {
      $('.cat-actions').click(function() {
    if ($(this).hasClass('left')) {
        $('ul#pills-tab').animate({scrollLeft: '-=300'}, 'fast'); // Scroll to the left
    } else if ($(this).hasClass('right')) {
        $('ul#pills-tab').animate({scrollLeft: '+=300'}, 'fast'); // Scroll to the right
    }
});
    $(window).scroll(function() {
        fixMenu(this);
    });
    function fixMenu(){
        if ($(this).scrollTop() > 380) {
        $('.menuItems-tabs').addClass('sticky shadow-sm');
      } else {
        $('.menuItems-tabs').removeClass('sticky shadow-sm');
      }
    }
    fixMenu(window);
  });
</script>
@endsection