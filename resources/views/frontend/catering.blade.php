@extends('layouts.frontend')

@section('contents')
    <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">CATERING</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="py-5" style="background-size: cover; background-image: linear-gradient( #ffffffdb, #ffffff  ), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png');">
        <div class="container">
           
            <div class="row"> 
                <div class="col-lg-6 mb-3"></div>
                <div class="col-lg-6 text-danger fs-1 ff-sunset-boulevard mb-3 text-danger ">Create Your Account and Gain Access to Your Personal Catering Representative</div>
                
                <div class="col-lg-6 d-flex mb-3 order-">
                    <p class="fs-5 align-self-start">
                        At E-Street Deli, we turn gatherings into
                        memorable feasts with our exceptional
                        catering services. Whether it's an office
                        luncheon, a family celebration, or a
                        corporate event, our diverse menu of
                        handcrafted subs, fresh salads, and
                        flavorful sides is designed to please every
                        palate.
                    </p>
                </div>
                <div class="col-lg-6">
                    <form action="{{route('catering-send')}}" method="POST">
                        @csrf
                        <div class="col-lg-12">
                            <div class="mb-3">
                                <input type="text" class="form-control rounded-0 shadow-none" required id="fullname" name="fullname" placeholder="Your name">
                            </div>     
                            <div class="mb-3">
                                <input type="text" class="form-control rounded-0 shadow-none" required id="contactno" name="phone" placeholder="Contact Number">
                            </div>    
                            <div class="mb-3">
                                <input type="text" class="form-control rounded-0 shadow-none" required id="company" name="company" placeholder="Your Company ">
                            </div> 
                            <div class="mb-3">
                                <input type="email" class="form-control rounded-0 shadow-none" required id="email" name="email" placeholder="Email Address">
                            </div>     
                            <div class="mb-3">
                                <textarea class="form-control rounded-0 shadow-none" rows="5" required id="message" name="message" placeholder="Message"></textarea>
                            </div> 
                             <div class="row">
                                <div class="d-flex justify-content-center  mb-5">
                                    <div class="g-recaptcha" data-sitekey="{{ env('GOOGLE_RECAPTCHA_KEY') }}" data-callback="enableBtn"></div>
                                </div>
                            </div>
                            <div class="mb-3 text-center">
                                <button type="submit" class="btn tertiary-btn ">
                                Submit
                            </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
@endsection