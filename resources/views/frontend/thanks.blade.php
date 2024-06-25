@extends('layouts.frontend')
@section('contents')
<style>
.tx-bg {
    background-position: center center !important;
    background-size: cover !important;
}
</style>
    <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">THANK YOU FOR ORDER</h1>
                </div>
            </div>
        </div>
    </section>  
    <section class="py-5">
        <div class="container">
            <div id="post-9" class="post-9 page type-page status-publish hentry order-received">
                <header class="entry-header text-center">
                    <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="140" height="140" viewBox="0,0,256,256"
                        style="fill:#000000;">
                        <g fill="#2fa91a" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><g transform="scale(5.12,5.12)"><path d="M25,2c-12.683,0 -23,10.317 -23,23c0,12.683 10.317,23 23,23c12.683,0 23,-10.317 23,-23c0,-4.56 -1.33972,-8.81067 -3.63672,-12.38867l-1.36914,1.61719c1.895,3.154 3.00586,6.83148 3.00586,10.77148c0,11.579 -9.421,21 -21,21c-11.579,0 -21,-9.421 -21,-21c0,-11.579 9.421,-21 21,-21c5.443,0 10.39391,2.09977 14.12891,5.50977l1.30859,-1.54492c-4.085,-3.705 -9.5025,-5.96484 -15.4375,-5.96484zM43.23633,7.75391l-19.32227,22.80078l-8.13281,-7.58594l-1.36328,1.46289l9.66602,9.01563l20.67969,-24.40039z"></path></g></g>
                    </svg>
                    <h1 class="entry-title mt-3">Order Received</h1>
                </header>
                    <!-- .entry-header -->
                <div class="col-lg-12">
                   <div class="text-center">
                       Your order has been completed and placed successfully. <br> A confirmation email has been sent to the email address you provided. <br>  
                      <p class="woocommerce-thankyou-order-received">Thank you. Your order has been received.</p>
                      
                      <div class="clear"></div>
                         @auth 
                            <a href="/myaccount" class="btn tertiary-btn ">BACK TO MY ACCOUNT</a>
                        @else
                            <a href="/" class="btn tertiary-btn ">BACK TO HOME</a>
                        @endif
                   </div>
                </div>
                @if($order->basket->order_type == 'pickup')
                <div class="col-lg-6 m-auto mt-5 text-center">
                    <div class="fs-6 fw-semibold">Pickup your order from.</div>
                    <div class="fs-6">E Street Deli. 654 Queen St W, Toronto, ON M6J 1E5.</div>
                    
                    @if($order->basket->serve_date)
                    <div class="fs-6">On. {{ date('Y, M, d h:ia', strtotime($order->basket->serve_date.' '.$order->basket->serve_time)) }}</div>
                    @endif
                    <div class="fs-6 mb-2">Phone: +1 (416) 613-9372</div>
                    <div id="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.062006569224!2d-79.40936908808767!3d43.64687825271903!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b34e6b54646b7%3A0xf7279ee6ea52590b!2s654%20Queen%20St%20W%2C%20Toronto%2C%20ON%20M6J%201E5%2C%20Canada!5e0!3m2!1sen!2sin!4v1704887764091!5m2!1sen!2sin" class="w-100" style="border:0; height: 400px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
                @endif
                <!-- .entry-content -->
             </div>
              <!-- #main -->
        </div>
       
    </section>
    
    
    <!-- Modal -->
    <div class="modal fade" id="goToSP" tabindex="-1" aria-labelledby="goToSP" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-body overflow-hidden p-0">
                    <div class="row">
                        <div class="col-md-5 tx-bg" style="background: url(https://tb-static.uber.com/prod/image-proc/processed_images/23b6fcdcf0e5c746476f91d3bf33fed7/c73ecc27d2a9eaa735b1ee95304ba588.jpeg)">
                            
                        </div>
                        <div class="col-md-7 text-center">
                            <div class="p-3">
                                <h1 class="mb-0 display-2 fw-bold">Thank you</h1>
                             <h5 class="fw-normal text-center mb-0">Your order has been received.</h5>
                             <h5 class="fw-normal text-center mb-5">Order ID : {{ $order->invoice_id }}</h5>
                            <h1 class="fw-normal text-center">Would you like to add Sweets from Sweetie Pie to your order.</h1>
                            <div class="clear"></div>
                            <div class="text-center row">
                                
                                <div class="col-6">
                                    <a data-bs-dismiss="modal" aria-label="Close"class="btn secondary-btn px-3 w-100">NO Thanks</a>
                                </div>
                                <div class="col-6">
                                <a href="https://mysweetiepie.ca/menu?redirect_to={{$cusdetails}}"  class="btn px-3 tertiary-btn w-100 go" target="_blank">YES</a>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $( document ).ready(function() {
            // $('#goToSP').modal('show');
            // $('.go').on('click', function(){
            //     $('#goToSP').modal('hide');
            // });
        });
    </script>
    <script>
        gtag("event", "purchase", {!! json_encode($googlecode) !!});
    </script>
@endsection