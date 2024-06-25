@extends('layouts.frontend')
    @section('contents')
    <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">Rest Your Password</h1>
                </div>
            </div>
        </div>
    </section>
    <section class=" page_section py-5">
        <div class="container">
            <div class="row justify-content-center w-100 m-0">
                
                 <div class="col-md-5 card border-0 shadow-lg p-3 mb-5 bg-body rounded">
                    @if(session('success'))
                    <div class="alert alert-success">
                        {{ session('success') }}
                    </div>
                    @endif
                    <form class="card-body validated not-ajax" method="POST" action="{{url('new-password')}}" >
                        <div class=" row">
                            @csrf()
                            <input type="hidden" name="token" value="{{ $token }}">
                            <input type="hidden" name="email" value="{{ $email }}">
                            <div class="col-lg-12">
                                <div class="mb-3">
                                    <label for="new_password" class="form-label">New Password<span class="text-danger"> *</span></label>
                                    <input type="password" name="password" class="form-control" id="new_password" required>
                                    @error('password')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="mb-3">
                                    <label for="confirm_password" class="form-label">Confirm Password<span class="text-danger"> *</span></label>
                                    <input type="password" name="password_confirmation" class="form-control" id="confirm_password" required>
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-dark rounded-pill mt-3 mb-3 pe-4 ps-4">Password Reset</button><br>
                            </div>
                            <div class="text-center mt-3">
                                 <a href="{{url('sign-in')}}">Back to login?</a>
                            </div>
                            
                        </div>
                        
                        
                        
                    </form>
              </div>
                
            </div>
        </div>
    </section>
    
    @endsection