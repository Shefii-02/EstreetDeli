@extends('layouts.frontend')
    @section('contents')
    <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">SIGN IN</h1>
                </div>
            </div>
        </div>
    </section>
    <section class=" page_section py-5">
        <div class="container">
            <div class="row justify-content-center w-100 m-0">
              <div class="col-md-7 col-lg-5  border-0  p-3 mb-5 bg-body rounded">
                    
                    <form class="card-body validated not-ajax" method="post"  action="{{url('sign-in')}}" novalidate>
                        <div class=" row">
                            @csrf()
                            <div class="col-lg-12">
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email<span class="text-danger"> *</span></label>
                                    <input type="email" autocomplete="off" class="form-control shadow-none rounded-0" name="email" id="email" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password<span class="text-danger"> *</span></label>
                                    <input type="password" autocomplete="new-password" class="form-control shadow-none rounded-0" name="password" id="password" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-check d-flex justify-content-left mb-2 mb-md-4">
                                            <input class="form-check-input me-2" type="checkbox" value="1" id="remember" name="remember" aria-describedby="registerCheckHelpText">
                                            <label class="form-check-label" for="remember">
                                              Remember me
                                            </label>
                                        </div>  
                                    </div>
                                    <div class="col-6 text-end f-g-pass">
                                        <a href="{{url('forget-password')}}">Forgot password?</a>
                                    </div>
                                </div>
                               
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn tertiary-btn ">Sign In</button><br>
                            </div>
                            <div class="text-center mt-3">
                                Don't have an account? <a class="ms-2" href="{{url('sign-up')}}">Register Here</a>
                            </div>
                            
                        </div>
                        
                        
                        
                    </form>
              </div>
            </div>
        </div>
    </section>
    
    @endsection