@extends('layouts.frontend')
@section('styles')
    <style>
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
                margin-bottom: 2rem;
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
        $showingDateTime    =   date('Y-m-d',strtotime($basket->serve_date)) >= date('Y-m-d') ? date('F d, Y',strtotime($basket->serve_date)) .'<br>'. date('h:i a',strtotime($pickup_time)) : '';
    }
    else if(session()->has('session_string')){
        $order_type         =   session('ordertype');
        $pickup_date        =   session('pickup_time');
        $pickup_time        =   session('pickup_date');
        $location           =   session('formatted_address');
        $showingDateTime    =   date('Y-m-d',strtotime(session('pickup_date'))) >= date('Y-m-d') ? date('F d, Y',strtotime(session('pickup_date'))) .'<br>'. date('h:i a',strtotime(session('pickup_time'))) : '';
    }
    else{
        $order_type         ='';
        $pickup_date        ='';
        $pickup_time        ='';
        $location           ='';
        $showingDateTime    ='';
    
    }
    
@endphp

    <div class="col-lg-12">
        <div class="col-lg-4 py-5 float-end">
            <div class="nav toggle-tabs">
                <div role="button" class="w-50 nav-item pill-link {{$order_type == 'pickup' ? 'active' : 'active' }}  d-flex justify-content-center align-items-center tab-shipping ShippingSelect pickup-tab" data-partDiv="pickupDiv" data-tab="pickup-tab" id="tab1" data-bs-toggle="pill">
                    <span role="button" class="text-center" data-partDiv="pickup">
                        <i class="bi bi-bag"></i> Pickup <br>
                        <span class="dateTime">{{ $showingDateTime}}  @if($basket && $basket->serve_time != NULL) {{' & '.date('h:i a',strtotime($basket->serve_time))}} @endif </span>
                    </span>

                </div>
                <div role="button" class="w-50 nav-item pill-link  {{$order_type == 'delivery' ? 'active' : '' }}  d-flex justify-content-center align-items-center tab-shipping ShippingSelect delivery-tab" data-partDiv="deliveryDiv" data-tab="delivery-tab" id="tab2" data-bs-toggle="pill">
                    <span role="button" class="text-center" data-partDiv="delivery">
                        <i class="bi bi-truck"></i> Delivery <br>
                        <span class="dateTime">{{$showingDateTime}}</span>
                    </span>
                </div>
            </div>
        </div>
    </div>
    
   

    <section class="py-5">
        <div class="container">
            <div class=" col-lg-12 d-flex justify-content-center text-center menuItems-tabs">
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    @foreach($categories as $key => $cItems)
                      <li class="nav-item" role="presentation">
                        <span class="nav-link fw-bold display-1" id="pills-{{Str::slug($cItems->name)}}-tab"  role="tab" aria-selected="true">
                           {{$cItems->name}}
                        </span>
                      </li>
                    @endforeach
                </ul>
            </div>
            <div class=" col-lg-12 text-center menuItems-contents">
                <div class="tab-content" id="pills-tabContent">
                     
                    @foreach($categories as $key => $cItems)
                        <div class="tab-pane fade show active" id="pills-{{Str::slug($cItems->name)}}" role="tabpanel" tabindex="{{$key == 0}}">
                            <div class="title-category text-center my-5">
                                <h1 class="text-uppercase">{{$cItems->name}}</h1>
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
                                        <a class="product-single" data-puid="{{$Items->product_single->id}}" data-pslug="{{$Items->product_single->slug}}" data-href="{{route('product',$Items->product_single->slug)}}" href="#" data-bs-toggle="modal" data-bs-target="#ProductShow">
                                            <div class="product-outer product-item p-2">
                                              <div class="product-inner">
                                                 <div class="product-image-wrapper d-flex justify-content-center">
                                                        <img src="{{ $pImage != '' ? asset('images/products/' .$pImage) : '/assets/images/dummy-product.jpg'}}" onerror="this.onerror=null;this.src='/assets/images/dummy-product.png';"  class="text-center" alt="13" title="13">
                                                 </div>
                                                 <div class="product-content-wrapper">
                                                       <h3 class="mb-3 mt-3">{{$Items->product_single->name}}</h3>
                                                       <div itemprop="description">
                                                            <p style="max-height: none;">
                                                              {!! Str::limit($Items->product_single->description,86) !!}
                                                            </p>
                                                       </div>
                                                 </div>
                                              </div>
                                            </div>
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    
    <!-- Modal -->
    <div class="modal fade right-to-left" id="ProductShow" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content content-body">
                
            </div>
        </div>
    </div>
      <!-- Modal -->
        <div class="modal fade" id="ShippingSelect"   tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content p-3">
                    <div class="">
                        <span class="fs-6">Order details</span>
                        
                        <p class="text-danger small">Please enter a delivery address or change your order to Pickup</p>
                        <div class="nav my-3 toggle-tabs">
                            <div class="w-50 nav-item pill-link active d-flex justify-content-center align-items-center tab-shipping pickup-tab" data-partDiv="pickupDiv" data-tab="pickup-tab"  id="tab3" data-bs-toggle="pill">
                                <span class=" text-center" role="button"> <i class="bi bi-bag"></i> Pickup <br>
                            	    <span class="dateTime">{{ $showingDateTime}} @if($basket && $basket->serve_time != NULL) {{' & '.date('h:i a',strtotime($basket->serve_time))}} @endif</span>
                                </span>
                            </div>
                            <div class="w-50 nav-item pill-link d-flex justify-content-center align-items-center tab-shipping delivery-tab" data-partDiv="deliveryDiv" data-tab="delivery-tab" id="tab4" data-bs-toggle="pill">
                                <span class="text-center " role="button"><i class="bi bi-truck"></i> Delivery <br>
                        	    <span class="dateTime"> {{ $showingDateTime}} </span>
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
                                        <span class="input-group-text" id="calendar-icon">
                                            <i class="bi bi-calendar-check-fill"></i>
                                        </span>
                                    </div>
                                    
                                </div>
                                
                                <div class="col-lg-12">
                                    <div class="mb-3">
                                        {!! showPickupCalender('1','pickup') !!}
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
                                        <input type="submit" class="btn primary-btn" name="update" value="Update">
                                    </div>
                                </div>
                            </form>
                        </div>
                    <!----------------------------------------------------------------------------------------->
                    <!----------------------------------------------------------------------------------------->
                    <!----------------------------------------------------------------------------------------->
                        <div class="my-3 partDiv" id="deliveryDiv">
                            <form action="{{url('select-location')}}" method="GET" class="validated not-ajax">
                                @csrf 
                                <div class="col-lg-12"> 
                                    <input type="hidden"  value="{{$basket &&  $basket->serve_date != '' && date('Y-m-d',strtotime($basket->serve_date)) >= date('Y-m-d'. ' +1 day')  ? $basket->serve_date : ''}}"
                                         name="pickup_date" class="shipping_date_hidden date-dropdown-toggle-value">
                                         
                                    <div class="mb-3">
                                         <input type="hidden" name="ordertype" value="delivery">
                                        <label for="address" class="form-label">Deliver to<span class="text-danger"> *</span></label>  
                                        
                                        <div class="form-group">
                                            <input  type="text" required="" value="@if($basket){{$basket->formatted_address}}@endif" name="address" id="addressAutocomplete" class="form-control select_city pac-target-input" placeholder="Enter your address" autocomplete="off">
                                        </div>
                                        <input   type="hidden" id="ordertype" name="ordertype" value="delivery">
                                        <input   type="hidden" id="postal" name="postal">
                                        <input   type="hidden" id="city" name="city">
                                        <input   type="hidden" id="country" name="country">
                                        <input   type="hidden" id="street_address" name="street_address">
                                        <input   type="hidden" id="formatted_address" name="formatted_address">   
                                    </div>
                                </div>
                                
                                <div class="col-lg-12  mb-2">
                                        <label for="date" class="form-label">Date<span class="text-danger"> *</span></label>  
                                     <div class="input-group form-group ">
                                        <span class="form-control rounded-0 date-input cursor-pointer date-dropdown-toggle"  id="date-dropdown-toggle" >{{$basket && $basket->serve_date != '' && date('Y-m-d',strtotime($basket->serve_date)) >= date('Y-m-d')  ? date('F d, Y',strtotime($basket->serve_date)) : ''}}</span>
                                        <span class="input-group-text" id="calendar-icon">
                                            <i class="bi bi-calendar-check-fill"></i>
                                        </span>
                                    </div>
                                </div>
                                
                                <div class="col-lg-12">
                                    <div class="mb-3">                 
                                        {!! showDeiveryCalender('1','delivery') !!}
                                    </div>
                                </div>
                                
                                <div class="col-lg-12 deliverypatnerDiv" @if($basket && $basket->serve_date == date('Y-m-d')) {{'style="display:none"'}} @endif>
                                    <div class="mb-3">
                                        <label for="delivery_type" class="form-label">Delivery Type<span class="text-danger"> *</span></label>
                                        <select autocomplete="off" class="form-control rounded-0" name="delivery_partner" id="delivery_partner" required>
                                            <option >Uber</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-12 text-center">
                                    <div class="mb-3">
                                        <input type="submit" class="btn primary-btn" name="submit">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>

@endsection


@section('scripts')
    <script>
    $(document).ready(function() {
            $('.product-single').on('click', function(e) {
                e.preventDefault();
                var url =$(this).data('href');
                
                $('.content-body').html(`<div class="loader-container p-5 text-left" style="hidden">
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
                        success: function (html) {
                            $('.content-body').html(html)
                        },
                        error: function (error) {
                            console.log(error)
                        }
                    });
                
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
                
                $('.tab-shipping').removeClass('active');
                $('.' + activeTab).addClass('active');
            });
        
                     
            // Toggle calendar dropdown on button click
          
            $('body').on('click','.date-dropdown-toggle', function() {
                $('.calendar-dropdown').toggleClass('d-none');
            });
            
            
            
            $(document).click(function(event) {
                var target = $(event.target);
                if (!target.closest('.calendar-dropdown').length && !target.is('.date-dropdown-toggle')) {
                  $('.calendar-dropdown').addClass('d-none');
                  $('.month-1').addClass('d-none');
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
                $('.calendar-dropdown').addClass('d-none');
                
                pickuptimeListing(availableTime_on,availableTime_to)
                
                deliverypartnerVisible(selectedDate)
            });
            
            
            function deliverypartnerVisible(sell_date){
                if('sell_date' == `{{date('Y-m-d')}}`){
                    $('#deliverypatnerDiv').show();
                }
                else{
                    $('#deliverypatnerDiv').hide();
                }
            }
            
            if($('.date-dropdown-toggle-value').val() == ''){
               $('.valid_date:first').click();
            }
            else
            {
                    var dateBase = $('.shipping_date_hidden').val();
                        $('.valid_date').each(function() {
                            var selectedDate     =  $(this).data('date');
                            if( selectedDate == dateBase){
                                var availableTime_on =  $(this).data('start');
                                var availableTime_to =  $(this).data('end');
                                pickuptimeListing(availableTime_on,availableTime_to);
                            }
                        });
            }
            
            $(".show-more-dates").click(function(e) {

                $('.month-1').toggleClass('d-none');
                e.preventDefault();
    
               
                var text = $(this).text();
    
               if (text === 'Less dates') { 
                    $(this).text('More dates'); 
                } else {
                    $(this).text('Less dates'); 
                }

            })
              
            function convert12HourTo24Hour(time12Hour) {
                return moment(time12Hour, 'hh:mm A').format('HH:mm');
            }
            
            function pickuptimeListing(startTime, endTime) {
            
                var interval = 15; // 15 minutes
                var options = '';
            
                // Parse the start and end times using Moment.js
                var startDate = moment(startTime, 'HH:mm');
                var endDate = moment(endTime, 'HH:mm');
                
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
                        $('#pickup_time').val(time)     
                    @endif
                @endif
            }
        
        
    });
    </script>
    
    
     <script>
         $('body').on('click', '.add-cart-btn', function() {
                var price    = $(this).attr('data-price');
                var pdct_id  = $(this).attr('data-pid');
                var quantity = $('.quantity .qty').val();
                
                var flavor      = '';
                var color       = '';
                var message     = '';
                var border_color= '';
                var text_color  = '';
                var customized  = 0;
           
                
                $.ajax({
                    url: '{{url('basket/add')}}',
                    type: 'GET',
                    data: { price: price, pdct_id: pdct_id, quantity: quantity,flavor :flavor, color :color, message :message, border_color :border_color, text_color :text_color,customized : customized},
                    success: function(response) {
                        console.log(response)
                        if(response.result == 1){
                            $('.cart-icon .cart-count').html(response.cart_count);
                            Swal.fire({
                                icon: 'success',
                                html: '<h1 class="main-h1"> Thank you </h1>' + '<h2 class="main-h2"> Item has been added to the cart </h2>',
                                showCancelButton: true,
                                confirmButtonText: 'Go to Cart',
                                cancelButtonText: 'Continue Shopping',
                                allowOutsideClick: false
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    window.location.href = '/cart';
                                } else {
                                    window.location.href = '/menu';
                                }
                            });
                        }
                        else {
                            alert('Error');
                        }
                    }
                });
            });
    </script>
 
@endsection