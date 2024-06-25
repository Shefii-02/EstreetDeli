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
        <style>
        
            body{
                margin:0 !important;
                padding:0 !important;
                overflow-x:hidden !important;
                font-family: 'Raleway', sans-serif;
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
            position: relative;
            text-align: center;
            z-index: 100;
            margin-top: 35px;
        }
        .header-v4 {
            padding: 4px 0;
        }
        
        
        .cursor-pointer{
            cursor:pointer !important;
        }
        
        section.breadcrumb-banner {
            margin-top: -130px;
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
    </style>
        @yield('styles')
    </head>
    <body class="home-v7 page-template-template-homepage-v7 woocommerce-active">
        
        
        
        @yield('contents')
        

    
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
                
                console.log(place.geometry['location'].lat())
                console.log(place.geometry['location'].lng())
                console.log(postalCode)
                console.log(city)
                console.log(street_address)
                console.log(formatted_address)
                console.log(place)
                
                
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
        alertJsFunction("{{ \Session::get('failed') }}", 'error');
        </script>
        @elseif (\Session::has('error'))
        <script>
        alertJsFunction("{{ \Session::get('error') }}", 'error');
        </script>
        @elseif (\Session::has('success'))
        <script>
        alertJsFunction("{{ \Session::get('success') }}", 'success');
        </script>
        @elseif (\Session::has('warning'))
        <script>
        alertJsFunction("{{ \Session::get('warning') }}", 'warning');
        </script>
        @elseif (\Session::has('status'))
        <script>
        alertJsFunction("{{ \Session::get('status') }}", 'success');
        </script>
        @endif
           
        
        @yield('scripts')
           
        <script src="{{ asset('assets/js/mask.js?v=3') }}"></script>
        <script src="{{ asset('assets/js/autofilldata.js?v=3.6') }}"></script>
        <script src="{{ asset('assets/js/formsubmit.js?v=3.6') }}"></script>
        
       
   </body>
</html>


