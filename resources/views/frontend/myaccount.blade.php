
@extends('layouts.frontend')

@section('contents')
<style>
    section.my-account-page .col-lg-10 .col-lg-4{
        width: 32.3333%;
    }
    @media(max-width: 1025px){
        section.my-account-page .col-lg-10 .col-lg-4 .card{
        padding: 10px 0 !important;
        }
    }
    @media(max-width: 992px){
        section.my-account-page .col-lg-10 .col-lg-4{
            width: 49%;
        }
    }
    @media(max-width: 600px){
         section.my-account-page .col-lg-10 .col-lg-4{
            width: 100%;
        }
    }
   .card.border-1 {
    border-color: #f1f1f1;
}
</style>
      
       <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">My Account</h1>
                </div>
            </div>
        </div>
    </section>

    <section class="page_section my-account-page py-5">
        <div class="container">
            <div class="row justify-content-center w-100 m-0">
              <div class="col-md-12 col-lg-10 ">
                  
                    <div class="row justify-content-between">
                        <div class="col-md-6 col-lg-4 mb-3">
                            <a href="{{url('/myaccount/order-history')}}" class="text-decoration-none">
                                <div class="card border-1 card-header p-0 py-3 rounded">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="me-3 text-muted fs-1">
                                                <i class="bi bi-receipt"></i>
                                            </div>
                                            <div class="">
                                                <h6 class="ff-sunset-boulevard fs-3 mb-0 fw-normal">My Orders</h6>
                                                <small>View and track your orders</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        
                        <div class="col-md-6 col-lg-4 mb-3">
                            <a href="{{url('/myaccount/login-security')}}" class="text-decoration-none">
                               <div class="card border-1 card-header p-0 py-3 rounded">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="me-3 text-muted fs-1">
                                                <i class="bi bi-person-lines-fill"></i>
                                            </div>
                                            <div class="text-overflow">
                                                <h6 class="ff-sunset-boulevard fs-3 mb-0 fw-normal">Profile and security</h6>
                                                <small class="d-block text-overflow">Edit login, name, and mobile number</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        
                        <div class="col-md-6 col-lg-4 mb-3">
                            <a href="{{url('/myaccount/address')}}" class="text-decoration-none">
                                <div class="card border-1 card-header p-0 py-3 rounded">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center">
                                            <div class="me-3 text-muted fs-1">
                                                <i class="bi bi-pin-map"></i>
                                            </div>
                                            <div class="">
                                                <h6 class="ff-sunset-boulevard fs-3 mb-0 fw-normal">Addresses</h6>
                                                <small class="d-block">Edit addresses for orders</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        
                        
                        <!--<div class="col-md-6 rounded col-lg-4 shadow mb-3">-->
                            
                        <!--    <a href="{{url('/myaccount/contact-us')}}" class="text-decoration-none">-->
                        <!--        <div class="card border-0 p-2 bg-body rounded">-->
                        <!--            <div class="card-body">-->
                        <!--                <div class="d-flex align-items-center">-->
                        <!--                    <div class="col-3">-->
                        <!--                        <img src="{{url('assets/images/customer-service.png')}}" class="img-fluid p-1">-->
                        <!--                    </div>-->
                        <!--                    <div class="col-9">-->
                        <!--                        <h6>Support Center</h6>-->
                        <!--                    </div>-->
                        <!--                </div>-->
                        <!--            </div>-->
                        <!--        </div>-->
                        <!--    </a>-->
                        <!--</div>-->
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection