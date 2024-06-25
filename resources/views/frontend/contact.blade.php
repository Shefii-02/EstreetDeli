@extends('layouts.frontend')
<style>
    .bi-telephone, .bi-envelope, .bi-geo-alt{
	font-size: 22px; 
	
    }
    .p-8{
	    padding: 80px !important;
	}
	@media(max-width: 600px){
	    .p-8{
	        padding: 40px !important;
	    }
	}
</style>
@section('contents')
    <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">CONTACT</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="py-5" style="background-size: cover; background-image: linear-gradient( #ffffffdb, #ffffff  ), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png');">
        <div class="container">
           
            <div class="row"> 
            
             <div class="col-lg-12">
                <div class="w-100 mb-3">
                        <div class="w-100 text-center  text-danger display-4 ff-sunset-boulevard">Talk To Us</div>
                        <p class="text-center mt-2 fs-5">
                            Got questions or craving our deli delights? <br>
                            Reach out and let's chat sandwich magic at E-Street Deli!
                        </p>
                    </div>
            </div>
                <div class="col-lg-6">
                    <div class="bg-white p-8" style="margin-top: 12px;">
                        <div style="font-size: 35px" class="w-100 text-danger ff-sunset-boulevard mb-3">EStreet Deli Store</div>
                    <div class="contact-information">
                        <ul class="list-unstyled m-0 p-0">
                            <li class="mb-2">
                                <a href="https://maps.app.goo.gl/mXGooVvW6QZTMTBeA" target="_blank"><i class="bi bi-geo-alt me-3 fw-bold"></i>654 Queen St W, Toronto, ON M6J 1E5</a>
                            </li>
                            <li class="mb-2">
                                <a href="tel:+14166139372"><i class="bi bi-telephone me-3 fw-bold "></i>+1 (416) 613-9372</a>
                            </li>
                            <li class="mb-2">
                                <a href="mailto:info@estreetdeli.ca"><i class="bi bi-envelope me-3 fw-bold"></i>info@estreetdeli.ca</a>
                            </li>
                            
                        </ul>
                        
                        <div class="social-follow d-flex align-items-center ">
                            <p class="mb-0">Follow us on </p> 
                            <a href="https://www.instagram.com/estreetdeli.ca/" class="ms-3" target="_blank"><i class="bi bi-instagram"></i> </a>
                            <a href="https://www.facebook.com/people/EStreet-Deli/61555480701185/" class="ms-3" target="_blank"><i class="bi bi-facebook"></i></a>
                        </div>
                        
                    </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    
                    <form action="{{route('contact-send')}}" method="POST">
                    @csrf
                    <div class="row justify-content-center mt-4">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="mb-3 col-12 col-md-6">
                            <input type="text" class="form-control rounded-0 shadow-none" id="firstname" required name="first_name" placeholder="First name">
                        </div>  
                         <div class="mb-3 col-12 col-md-6">
                            <input type="text" class="form-control rounded-0 shadow-none" id="lastname" required name="last_name" placeholder="Last name">
                        </div>  
                        </div>
                        <div class="row">
                            <div class="mb-3 col-12 col-md-6">
                            <input type="email" class="form-control rounded-0 shadow-none" id="email" required name="email" placeholder="Email Address">
                        </div>     
                        <div class="mb-3 col-12 col-md-6">
                            <input type="text" class="form-control rounded-0 shadow-none" id="contactno" required name="phone" placeholder="Contact Number">
                        </div>
                        </div>    
                        <div class="mb-3">
                            <input type="text" class="form-control rounded-0 shadow-none" id="subject" required name="subject" placeholder="Subject">
                        </div> 
                        <div class="mb-3">
                            <textarea class="form-control rounded-0 shadow-none" rows="5" id="message" name="message" placeholder="Tell us your message"></textarea>
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
                </div>
                </form>
                </div>
                
                 <div class="col-12">
                </div>
                
            </div>
        </div>
    </section>
    <div id="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2887.062006569224!2d-79.40936908808767!3d43.64687825271903!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x882b34e6b54646b7%3A0xf7279ee6ea52590b!2s654%20Queen%20St%20W%2C%20Toronto%2C%20ON%20M6J%201E5%2C%20Canada!5e0!3m2!1sen!2sin!4v1704887764091!5m2!1sen!2sin" class="w-100" style="border:0; height: 400px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

    </div>
    
@endsection