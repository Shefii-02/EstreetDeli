<!DOCTYPE html>
<html lang="en-US" itemscope="itemscope" itemtype="http://schema.org/WebPage">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"> <meta name="token" content="{{csrf_token()}}">
        <title>@yield('title',$title)</title>
        <!--<link rel="stylesheet" type="text/css" href="{{asset('assets/css/bootstrap.min.css')}}" media="all" />-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
        <link rel="stylesheet" type="text/css" href="{{asset('assets/css/animate.min.css')}}" media="all" />
        <link rel="stylesheet" type="text/css" href="{{asset('assets/css/font-pizzaro.css')}}" media="all" />
        <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style.css')}}" media="all" />
        <link rel="stylesheet" type="text/css" href="{{asset('assets/css/colors/green.css')}}" media="all" />
        <link rel="stylesheet" type="text/css" href="{{asset('assets/css/jquery.mCustomScrollbar.min.css')}}" media="all" />      
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CYanone+Kaffeesatz:200,300,400,700" rel="stylesheet">
        <link rel="shortcut icon" href="{{asset('assets/images/logo.png')}}">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700;800&family=Rubik:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-3N114GTR9S"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
        
          gtag('config', 'G-3N114GTR9S');
        </script>
        <style>
            .text-orange {
    color: #f58323 !important;
}
            body{
                margin:0 !important;
                padding:0 !important;
                overflow-x:hidden !important;
                /*font-family: 'Raleway', sans-serif;*/
                font-family: "Poppins", sans-serif;
            }
            .ff-poppins{
                font-family: "Poppins", sans-serif !important;
            }
            .fw-bold{
                font-weight:bold !important;
            }
            .text-light{
                color:#ffffff !important;
            }
            
            .bg-theme{
                background-color : #2fa91a;
                color:#fff;
            }
            .text-dark{
                color:#000000 !important;
            }
            .text-theme{
                color:#2fa91a !important;
            }
            .text-theme-second{
                color:#f20000 !important;
            }
            .border-light{
                border:1px solid #ffffff !important;   
            }
            .site-content {
                margin-top: -130px;
            }
            .element-error::after {
                content: attr(data-error);
                font-size: small;
                color: red;
            }
        
        #loader-overlay {
            position: fixed;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          background-color: rgba(0, 0, 0, 0.7);
          display: none;
          justify-content: center;
          align-items: center;
          z-index: 9999;
        }
        
        .loader {
          border: 6px solid #f3f3f3;
          border-top: 6px solid #3498db;
          border-radius: 50%;
          width: 50px;
          height: 50px;
          animation: spin 2s linear infinite;
        }
        
        @keyframes spin {
          0% { transform: rotate(0deg); }
          100% { transform: rotate(360deg); }
        }
    
    
        
          /* Style for the overlay */
        .stock-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(255, 255, 255, 0.8); /* Transparent white overlay */
            display: none; /* Initially hidden */
            justify-content: center;
            align-items: center;
        }
        
        /* Style for the overlay text */
        .stock-text-overlay {
            font-size: 18px;
            font-weight: bold;
            color: red; /* Customize the color as needed */
        }
        
        /* Style to show overlay when product is out of stock */
        .product-image.out-of-stock + .stock-overlay {
            display: flex; /* Show the overlay */
        }
        .header-v4 .site-branding a img {
            position: absolute;
            text-align: left;
            margin-top: -60px;
        }
        .page-template-template-homepage-v7 .site-header {
            position: fixed;
            text-align: center;
            z-index: 999;
            margin-top: 35px;
            margin-left: auto;
            margin-right: auto;
            width: 100%;
            transition: margin 0.3s ease;
        }
        .header-v4 {
            padding: 4px 0;
        }
        
        
        .cursor-pointer{
            cursor:pointer !important;
        }
        
        section.breadcrumb-banner {
            /*margin-top: -130px;*/
        }
   
   
   .swal2-styled.swal2-confirm {
        border: 0;
        padding: 0.6334em 3.81em !important;
        border-radius: 25px;
        background: initial;
        background-color: #1c6510 !important;
        color: #fff;
        font-size: 1em;
    }
    
    .swal2-styled.swal2-cancel {
       border: 0;
        padding: 0.6334em 3.81em !important;
        border-radius: 25px;
        background: initial;
        background-color: #000 !important;
        color: #fff;
        font-size: 1em;
    }
    
    .swal2-actions{
        flex-direction: row-reverse !important;
    }

    
    .swal2-styled.swal2-deny {
        border: 0;
        padding: 0.6334em 3.81em !important;
        border-radius: 25px;
        background: initial;
        background-color: #000000 !important;
        color: #fff;
        font-size: 1em;
    }
    .swal2-icon.swal2-success .swal2-success-ring {
        border: 0.25em solid rgb(28 101 16) !important;
    }
    .swal2-icon.swal2-success [class^=swal2-success-line] {
        background-color: #1c6510 !important;
    }
    
    
    .pac-logo {
        z-index: 999999 !important;
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
                /*font-weight: 800;*/
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
            
            :root{
            --calendar-primary: #2fa91a;
            --calendar-disabled: #747474;
        }
        .calendar-primary{
            color: var(--calendar-primary) !important;
        }
        .calendar-disabled{
            color: var(--calendar-disabled) !important;
        }
        .calendar-active{
            background: var(--calendar-primary) !important;
            border-radius: 30px;
            padding: 2px 5px;
            color: #fff;
            font-weight: 500;
        }
        .calendar-f-14{
            font-size: 16px !important;
            padding: 3px !important;
            cursor: pointer;
            text-align: center;
        }
        
        .disabled-day{
            color: #bfbfbf !important;
        }
        
        .calendar-head{
                text-transform: capitalize;
                font-weight: 600;
                /*font-size: 18px !important;*/
        }
        @media (min-width: 992px){
            .cart-collaterals { 
                 margin-left: 30% !important; 
            }
        }
        .cus_btn{
            /*font-family: 'Raleway', sans-serif !important;*/
            font-weight:500 !important;
            border-radius:25px !important;
            font-size:10px !important;
            background:#80808030 !important;
            color:#000 !important;
        }
         .cus_btn:hover{
            /*font-family: 'Raleway', sans-serif !important;*/
            font-weight:500 !important;
            border-radius:25px !important;
            font-size:10px !important;
            background:#80808030 !important;
            color:#000 !important;
        }
        
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
            span.cartCount {
                position: absolute;
                top: -8px;
                right: 0;
                width: 16px;
                height: 16px;
                line-height: 0;
                font-size: x-small;
            }
    </style>
    @yield('styles')
    </head>
    <body class="home-v7 page-template-template-homepage-v7 woocommerce-active">
        
        <div id="page" class="hfeed site">
            <header id="masthead" class="site-header header-v4 row">
                <div class="col-full align-items-center">
                   <div class="site-branding">
                      <a href="{{url('/')}}" class="custom-logo-link" rel="home">
                            <img src="{{asset('assets/images/logo.png')}}" class="logo w-50">
                      </a>
                   </div>
                   <nav id="site-navigation" class="main-navigation ms-auto"  aria-label="Primary Navigation">
                      <button class="menu-toggle mb-1 fs-5 text-white" aria-controls="site-navigation" aria-expanded="false"><span class="close-icon"><i class="po po-close-delete"></i></span><span class="menu-icon"><i class="po po-menu-icon"></i></span><span class=" screen-reader-text">Menu</span></button>
                      <div class="primary-navigation oswald">
                           {!!getMenu('main-menu',['id'=>'menu-home-5-and-7-main-menu','class' => 'menu nav-menu d-flex w-fit-content m-auto gap-1 menu nav-menu justify-content-end'])!!} 
                         
                      </div>
                      <div class="handheld-navigation oswald">
                         <span class="phm-close">Close</span>
                           {!!getMenu('main-menu',['class'=>'menu'])!!} 
                        
                      </div>
                   </nav>
                   <!-- #site-navigation -->
                   
                   @php
                                    $basketCart = GetBasket();
                                    $totalAmount =0;
                                @endphp
                   @include('frontend.header-cart')
                   <div class="mt-1">
                        <a class="fs-4 text-light {{ auth()->check() ? 'dropdown-toggle' : null }}" id="{{ auth()->check() ? 'dropdownMenuButton' : null }}" data-bs-toggle="{{ auth()->check() ? 'dropdown' : null }}" href="{{ auth()->check() ? url('myaccount') : url('sign-in') }}"><i class="bi bi-person-fill text-light"></i></a>
                          <div class="dropdown-menu" style="width: auto; padding: 10px;">
                            <a class="dropdown-item float-start fs-6 fw-medium " href="{{url('myaccount')}}"><i class="bi bi-person"></i> My Account</a>
                            <a class="dropdown-item float-start fs-6 fw-medium" href="{{url('signout')}}"><i class="bi bi-box-arrow-in-left"></i> Logout</a>
                          </div>
                   </div>
                </div>
             </header>
             
            @yield('contents')
    
             
             <footer id="colophon" class="site-footer footer-v4 py-2" >
                <div class="col-full">
                   <div class="footer-row row vertical-align position-relative">
                      <div class="footer-logo">
                         <a href="{{url('/')}}" class="custom-logo-link" rel="home">
                           <img class="m-auto m-lg-0" src="{{asset('assets/images/logo.png')}}">
                         </a>
                      </div>
                      <div class="site-address">
                         <ul class="address">
                             <li>E Street Deli </li>
                            <li>654 Queen St W, Toronto, ON M6J 1E5 </li>
                            <li>Phone: +1 (416) 613-9372</li>
                         </ul>
                       <div class="position-absolute w-100 for-copy-right">
                           <p class="mb-0">&copy; <?php echo date("Y"); ?>-<?php echo date("Y") + 1; ?> E Street Deli. All rights reserved.
</p> 
                       </div>
                      </div>
                      <div class="footer-social-icons">
                         <span class="social-icon-text">Follow us</span>
                         <ul class="social-icons list-unstyled">
                            <li><a class="bi bi-facebook" target="_new" href="https://www.facebook.com/profile.php?id=61555480701185"></a></li>
                            <li><a class="bi bi-instagram" target="_new" href="https://instagram.com/estreetdeli.ca"></a></li>
                         </ul>
                            
                      </div>
                   
                   </div>
                   <!-- /.footer-row -->
                   <!--<div class="pizzaro-handheld-footer-bar">-->
                   <!--   <ul class="columns-3">-->
                   <!--      <li class="my-account"><a href="/sign-in">My Account</a></li>-->
                   <!--      <li class="search">-->
                   <!--         <a href="">Search</a>-->
                   <!--         <div class="site-search">-->
                   <!--            <div class="widget woocommerce widget_product_search">-->
                   <!--               <form role="search" method="get" class="woocommerce-product-search">-->
                   <!--                  <label class="screen-reader-text" for="woocommerce-product-search-field">Search for:</label>-->
                   <!--                  <input type="search" id="woocommerce-product-search-field" class="search-field" placeholder="Search Products…" value="" name="s" title="Search for:">-->
                   <!--                  <input type="submit" value="Search">-->
                   <!--                  <input type="hidden" name="post_type" value="product">-->
                   <!--               </form>-->
                   <!--            </div>-->
                   <!--         </div>-->
                   <!--      </li>-->
                   <!--      <li class="cart">-->
                   <!--         <a class="footer-cart-contents" href="/cart" title="View your shopping cart">-->
                   <!--         <span class="count">2</span>-->
                   <!--         </a>-->
                   <!--      </li>-->
                   <!--   </ul>-->
                   <!--</div>-->
                </div>
                <!-- .col-full -->
                <div class="for-responsive-copy ">
                    <p class="mb-0 text-center">&copy; <?php echo date("Y"); ?> Estreetdeli.ca All rights are reserved.
</p> 
                </div>
                
             </footer>
               @if($basketCart != false && $basketCart->items->count() > 0)
             <div class="for_mobile-cart">
                 <a role="button" class="cart-contents position-relative" id="cartButton">
                     <span class="d-flex cartCount align-items-center bg-white text-dark rounded-circle small"><span class="m-auto">{{ $basketCart->items->count() }}</span></span>
                 </a>
             </div>
             <div class="side-cart" id="sideCart">
                 <span class="phm-close" id="closeCartButton">Close Cart</span>
                <div class="p-4 pb-0 pt-0">
                     <ul class="cart_list product_list_widget ">
                         @php
                            $totalAmount2 =0;
                         @endphp
                        @foreach($basketCart->items as $listCartItems)
                            <li class="mini_cart_item ">
                                <div class="d-flex align-items-center text-start gap-2">
                                    <img  width="80" 
                                    src="{{ asset('images/products/' . $listCartItems->picture) }}" 
                                    onerror="this.onerror=null; this.src='{{ asset('/assets/images/dummy-product.png') }}';" 
                                    class="attachment-shop_thumbnail" >
                                    <div>
                                        <p class="fw-bold text-left mb-0 product_name">{{$listCartItems->product_name}}</p>
                                        <span class="quantity">{{getPrice($listCartItems->price_amount)}} x {{$listCartItems->quantity}} = <span class="woocommerce-Price-amount amount">{{getPrice($listCartItems->price_amount * $listCartItems->quantity)}}</span></span>
                                   </div>
                                </div>
                                <div class="text-start">
                                    
                                    {{$listCartItems->variation}}
                                       <div class="d-flex flex-wrap pt-2">
                                    @if($listCartItems->removed_ingredients != '')
                                        <small>
                                        @foreach(explode(',',$listCartItems->removed_ingredients) ?? [] as $riItm)
                                             <i class="bi bi-x-octagon"></i>  No {{$riItm}} @if (!$loop->last) | @endif
                                        @endforeach
                                        </small>
                                    @endif
                                     @if($listCartItems->removed_condiments != '')
                                     <small>
                                        @foreach(explode(',',$listCartItems->removed_condiments) ?? [] as $rcItm)
                                            
                                            <i class="bi bi-check-circle"></i>  {{$rcItm}} @if (!$loop->last) | @endif
                                            
                                        @endforeach
                                        </small>
                                    @endif
                                    </div>
                                    @php
                                        $addonSub = 0;
                                    @endphp
                                    @if($listCartItems->parentItem->count() > 0)
                                            <div class="col-lg-12 d-flex flex-wrap">
                                                <small>
                                                @foreach($listCartItems->parentItem as $pItems)
                                                    @php
                                                        $addon_price = $pItems->price_amount * $pItems->quantity; 
                                                        $addonSub += $addon_price;
                                                    @endphp
                                                        <i class="bi bi-plus-circle"></i> {{$pItems->product_name}} x {{$pItems->quantity}} : {{getPrice($addon_price)}} @if (!$loop->last) | @endif
                                                @endforeach
                                                </small>
                                            </div>
                                        @endif
                                        
                                     @if($listCartItems->combo_product)
                                        <div class="col-lg-12">
                                            <small class="fw-semibold small">Combo Includes</small><br>
                                            <div class="d-flex flex-wrap">
                                                <small>
                                            @foreach($listCartItems->combo_details as $combo)
                                                
                                                <i class="bi bi-bag-check"></i>     {{ $combo->name }}  x {{$listCartItems->quantity}} @if (!$loop->last) | @endif
                                                
                                            @endforeach
                                            </small>
                                            </div>
                                        </div>
                                     @endif
                                     @if($listCartItems->upsell_product)
                                                    <small><strong><em>Combo packs: <span class="text-theme">{{ $listCartItems->upsell_discount  }}%OFF </span></em></strong></small>
                                                <div class="col-lg-12 d-flex flex-wrap">
                                                    <small>
                                                    @foreach($listCartItems->upsell_details as $upsell)
                                                        
                                                          <i class="bi bi-bag-check"></i>  {{ $upsell->name }} x {{$listCartItems->quantity}} &nbsp; | &nbsp;
                                                        
                                                    @endforeach
                                                    </small>
                                                </div>
                                             @endif
                                </div>
                                <div class="cart-action text-start">
                                         
                                            <a href="#" class="item_remove fw-normal m-0" data-preorder="" data-pname="{{$listCartItems->product_name}}" data-psku="{{$listCartItems->product_sku}}" data-pid="{{$listCartItems->product_variation_id}}" data-id="{{$listCartItems->id}}"  data-price="{{$listCartItems->price_amount}}" ><i class="bi bi-trash"></i> Remove</a>
                                    </div> 
                                        
                            </li>
                             @php
                                $itmTtl = $listCartItems->price_amount * $listCartItems->quantity;
                                $subTtl = (float)$addonSub + (float)$itmTtl;
                                  $totalAmount2 += $subTtl;
                              @endphp
                        @endforeach
                      </ul>
                <div class="cart-bottom">
                  <!--<div class="total mb-3"><strong>Subtotal:</strong> -->
                  <!--<span class="woocommerce-Price-amount amount"></span></div>-->
                  <div class="buttons">
                     <a href="{{url('cart')}}" class="mb-0 btn tertiary-btn">View Cart <span class="number-font">{{getPrice($totalAmount2)}}</span></a>
                  </div> 
              </div>                      
                      
                </div>
                
            </div>
             @endif
             
        </div>
        
        
        

    
        <script type="text/javascript" src="{{asset('assets/js/jquery.min.js')}}"></script>

        <script src="https://maps.googleapis.com/maps/api/js?key={{ env('GOOGLE_MAP_KEY') }}&callback=initMap&libraries=places,geometry&v=weekly"  defer></script>  
        <script>

        
        function initMap() {
      
            const input = document.getElementById("addressAutocomplete");
    
            const options = {
                strictBounds: false,
                types: ['address'],
                componentRestrictions: { country: 'CA' } 
            };

            const autocomplete = new google.maps.places.Autocomplete(input, options);

            autocomplete.addListener("place_changed", () => {
         
                const place = autocomplete.getPlace();
                
                if (!place.geometry || !place.geometry.location) {
    
                window.alert("No details available for input: '" + place.name + "'");
                return;
                }
                // Get city, postal code, and country from the place details
                var city = '';
                var postalCode = '';
                var country = '';
                var region="";
                var street_address="";
                var formatted_address = place.formatted_address;
                for (var i = 0; i < place.address_components.length; i++) {
                    var component = place.address_components[i];
                    var componentType = component.types[0];
        
                    
                    if (componentType === 'sublocality' || componentType === 'sublocality_level_1') {
                        city = component.long_name;
                    }
                    
                    if(city == ''){
                        if (componentType === 'locality') {
                            city = component.long_name;
                        }
                    }
                    
                    if (componentType === 'postal_code_prefix') {
                        postalCode = component.long_name;
                    }
                    
                    if(postalCode == ''){
                        if (componentType === 'postal_code') {
                            postalCode = component.long_name;
                        }
                    }
                    
                    if (componentType === 'country') {
                        country = component.long_name;
                    }
                    street_address = place.name;
                    
                }
               
                
                
                $('#postal').val(postalCode);
                $('#city').val(city);
                $('#country').val(country);
                $('#street_address').val(street_address);
                $('#order_type').val('delivery');
                $('#formatted_address').val(formatted_address)

             
            });
          
        }
      
        window.initMap = initMap;
 </script>
 
 <script>
  $(document).ready(function() {
    $(window).scroll(function() {
      fixHeader(this);
    });
    function fixHeader(){
        if ($(this).scrollTop() > 35) {
            $('.page-template-template-homepage-v7 .site-header').css({'margin-top':'0'});
            $('.header-v4 .site-branding a img').css({'top':'20px'})
          } else {
            $('.page-template-template-homepage-v7 .site-header').css({'margin-top':'35px'});
            $('.header-v4 .site-branding a img').css({'top':'0'})
          }
    }
    fixHeader(window);
  });
</script>
 @if(!request()->is('/menu'))
 <script>
 $('body').on('click','.item_remove', async function() {
        
            var item            = $(this).closest('.cart-item');
            var quantity        = $(this).val();
            var product_sku     = $(this).data('psku');
            var product_id      = $(this).data('pid');
            var product_price   = $(this).data('price');
            var cart_id         = $(this).data('id');
            var preorder        = $(this).data('preorder');
            item.remove();
            
            await update_products(product_sku,product_id,product_price,0,cart_id,'remove');
       
            
            location.reload();
            
        });
        async function update_products(product_sku,product_id,product_price,quantity,cart_id,action) {
                 const body = $('body');
            body.append(`<div class="product-loading"><i class="bi bi-arrow-clockwise"></i></div>`);
            await $.ajax({
                url: '/cart/productadd', 
                method: 'GET', 
                dataType: 'json',
                data: {'product_sku': product_sku,'product_id': product_id,'quantity': quantity,'price'   : product_price,'cart_id' : cart_id,'action' : action},
                success: function(response) {
                    
                },
            });
            return true;
        }
 </script>
 @endif
        
        <script type="text/javascript" src="{{asset('assets/js/tether.min.js')}}"></script>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <!--<script type="text/javascript" src="{{asset('assets/js/bootstrap.min.js')}}"></script>-->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
        <script src="{{ asset('assets/js/autofilldata.js?v=1.4') }}"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script type="text/javascript" src="{{asset('assets/js/owl.carousel.min.js')}}"></script>
        
        <script type="text/javascript" src="{{asset('assets/js/social.share.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('assets/js/jquery.mCustomScrollbar.concat.min.js')}}"></script>
        <script type="text/javascript" src="{{asset('assets/js/scripts.min.js')}}"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
        
        
        <script>
            function city_availabilityCheck(city) {
                return new Promise(function (resolve, reject) {
                    $.ajax({
                        url: `{{url('check-available-city')}}`,
                        data: { city: city },
                        cache: false,
                        success: function (html) {
                            if (html == 0) {
                                $('.city_error').html(`<p class="fw-bolder">This site currently not available in this City<br>
                                We are working on getting your favorite item to your area soon.</p>`);
                                resolve(0);
                            } else {
                                resolve(1);
                            }
                        },
                        error: function (error) {
                            reject(error);
                        }
                    });
                });
            }
        </script>
        
     <script>
            // MOBILE SIDE CART
 $(document).ready(function () {
            
            $('#cartButton').click(function () {
                $('#sideCart').toggleClass('open');
            });

            $('#closeCartButton').click(function () {
                $('#sideCart').removeClass('open');
            });
        });
     </script>

        
        <script>
            
            $(document).ready(function() { 
                $('input[name="phone"]').mask('(000) 000-0000'); 
                $('input[name="s_phone"]').mask('(000) 000-0000'); 
                $('input[name="b_phone"]').mask('(000) 000-0000'); 
                
                $(document).on('DOMNodeInserted', function(e) { 
                    $('input[name="phone"]').mask('(000) 000-0000'); 
                    $('input[name="s_phone"]').mask('(000) 000-0000'); 
                     $('input[name="b_phone"]').mask('(000) 000-0000'); 
                    
                }); 
            });

        </script>
        
       
            <script>
        function alertJsFunction($message,$type){
        Swal.fire($message,'',$type)    
        }
        </script>
        @if (\Session::has('failed'))
        <script>
        alertJsFunction(`{!! \Session::get('failed') !!}`, 'error');
        </script>
        @elseif (\Session::has('error'))
        <script>
        alertJsFunction(`{!! \Session::get('error') !!}`, 'error');
        </script>
        @elseif (\Session::has('success'))
        <script>
        alertJsFunction(`{!! \Session::get('success') !!}`, 'success');
        </script>
        @elseif (\Session::has('warning'))
        <script>
        alertJsFunction(`{!! \Session::get('warning') !!}`, 'warning');
        </script>
        @elseif (\Session::has('status'))
        <script>
        alertJsFunction(`{!! \Session::get('status') !!}`, 'success');
        </script>
        @endif
           
        
        @yield('scripts')
           
        <script src="{{ asset('assets/js/mask.js?v=3') }}"></script>
        <script src="{{ asset('assets/js/autofilldata.js?v=3.6') }}"></script>
        <script src="{{ asset('assets/js/formsubmit.js?v=3.6') }}"></script>
        
   </body>
</html>


