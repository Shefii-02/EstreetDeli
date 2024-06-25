@extends('layouts.frontend')
@section('styles')
    <style>
        .nav-pills .nav-link{
            color:#000;
        }
        .nav-pills .nav-link.active, .nav-pills .show>.nav-link{
            color:#000;
            background:transparent;
            font-weight:800;
        }
      
        .menu-item-title {
            font-weight: 800;
            margin-bottom: 20px;
        }
    
        .menu-item-price-top {
            position: relative;
            top: 30px;
            float: right;
            font-weight: bold;
            padding-left: 20px;
        }
            
    </style>
@endsection
@section('contents')
<section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url(https://www.estreetdeli.indigitalapi.com/images/banners/bKzV5YmlId8mDOgK7WqlNuH1LMbSPs.png) center/cover no-repeat;">
    <div class="container">
        <div class="row">
            <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                <h1 class="text-white font-weight-bold align-self-center">MENU</h1>
            </div>
        </div>
    </div>
</section>

<section class="py-5">
    <div class="container">
        @foreach($categories as $cItems)
            <div class="col-lg-12 mb-5">
                <div class="title-category text-center my-5">
                    <h1 class="text-uppercase">{{$cItems->name}}</h1>
                </div>
                <div class="row menu-items ">
                    @foreach($cItems->product_list as $Items)
                        <div class="col-lg-4 menu-item mb-3">
                            <div class="menu-item">
                                <span class="menu-item-price-top">
                                </span>
                                <div class="menu-item-title mb-2"><h2>{{$Items->product_single->name}}</h2></div>
                                
                                <div class="menu-item-description ">
                                    {!! $Items->product_single->description !!}
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        @endforeach
    </div>
</section>






<!--<section class="py-5">-->
<!--    <div class=" col-lg-12 d-flex justify-content-center text-center menuItems-tabs">-->
<!--        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">-->
<!--          <li class="nav-item" role="presentation">-->
<!--            <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-ColdSubs" type="button" role="tab" aria-controls="pills-ColdSubs" aria-selected="true">Cold Subs</button>-->
<!--          </li>-->
<!--          <li class="nav-item" role="presentation">-->
<!--            <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-HotSubs" type="button" role="tab" aria-controls="pills-HotSubs" aria-selected="false">Hot Subs</button>-->
<!--          </li>-->
<!--          <li class="nav-item" role="presentation">-->
<!--            <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-Savory" type="button" role="tab" aria-controls="pills-Savory" aria-selected="false">Savory Pies (5”)</button>-->
<!--          </li>-->
<!--          <li class="nav-item" role="presentation">-->
<!--            <button class="nav-link" id="pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#pills-Sides" type="button" role="tab" aria-controls="pills-Sides" aria-selected="false">Sides</button>-->
<!--          </li>-->
<!--        </ul>-->
<!--    </div>-->
<!--    <div class=" col-lg-12 text-center menuItems-contents">-->
<!--          <div class="tab-content" id="pills-tabContent">-->
<!--          <div class="tab-pane fade show active" id="pills-ColdSubs" role="tabpanel" tabindex="0">Tab 1</div>-->
<!--          <div class="tab-pane fade" id="pills-HotSubs" role="tabpanel" tabindex="0">...</div>-->
<!--          <div class="tab-pane fade" id="pills-Savory" role="tabpanel"  tabindex="0">...</div>-->
<!--          <div class="tab-pane fade" id="pills-Sides" role="tabpanel"  tabindex="0">...</div>-->
<!--        </div>-->
      
<!--    </div>-->
<!--</section>-->
@endsection
