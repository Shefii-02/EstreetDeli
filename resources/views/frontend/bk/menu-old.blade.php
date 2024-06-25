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
        
        /*.product-item{*/
        /*    border-radius: 24px;*/
        /*    box-shadow: 0 0 6px rgba(0,0,0,.1);*/
        /*    transition: box-shadow .15s ease-out;*/
        /*}*/
        
        a.goTop {
    position: fixed;
    bottom: 10px;
    right: 10px;
    z-index: 99;
    border-radius: 50%;
    width: 40px !important;
    height: 40px !important;
    padding: 0;
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
    
    <section class="py-5">
        <div class="container">
            <div class=" col-lg-12 d-flex justify-content-center text-center menuItems-tabs">
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    @foreach($categories as $key => $cItems)
                      <li class="nav-item" role="presentation">
                        <a href="#{{Str::slug($cItems->name)}}" class="nav-link fw-bold display-1" id="pills-{{Str::slug($cItems->name)}}-tab"  role="tab" aria-selected="true">
                           {{$cItems->name}}
                        </a>
                      </li>
                    @endforeach
                </ul>
            </div>
            <div class=" col-lg-12 text-center menuItems-contents">
                <div class="tab-content" id="pills-tabContent">
                     
                    @foreach($categories as $key => $cItems)
                        <div class="tab-pane fade show active" id="pills-{{Str::slug($cItems->name)}}" role="tabpanel" tabindex="{{$key == 0}}">
                            <div class="title-category text-center my-5" id="{{Str::slug($cItems->name)}}">
                                <h1 class="text-uppercase fw-normal display-3 ff-sunset-boulevard">{!! preg_replace('/\(([^)]+)\)/', '<span class="oswald small">($1)</span>', $cItems->name) !!}</h1>
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
                                    <div class="col-lg-4 col-6 mb-3 product-item">
                                        <a class="product-single" href="{{route('product2',$Items->product_single->slug)}}" >
                                            <div class="product-outer">
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
    <div class="scrollbtn" style="display:none">
    <a href="#page" class="btn tertiary-btn d-flex align-items-center goTop">
        <i class="bi bi-arrow-up-short m-auto"></i>
    </a>
    </div>
    <!-- Modal -->
    <!--<div class="modal fade right-to-left" id="myModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">-->
    <!--    <div class="modal-dialog">-->
    <!--        <div class="modal-content">-->
    <!--            <div class="modal-header">-->
    <!--                <h5 class="modal-title" id="exampleModalLabel">Modal Title</h5>-->
    <!--                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>-->
    <!--            </div>-->
    <!--            <div class="modal-body">-->
    <!--                <p>Modal content goes here...</p>-->
    <!--            </div>-->
    <!--            <div class="modal-footer">-->
    <!--                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>-->
    <!--                <button type="button" class="btn btn-primary">Save changes</button>-->
    <!--            </div>-->
    <!--        </div>-->
    <!--    </div>-->
    <!--</div>-->
@endsection


@section('scripts')
    <script>
        // $('.product-single','click' function(e){
            //  e.preventDefault();
        // });
    </script>
    <script>
  $(document).ready(function() {
    checkScrollPosition();

    $(window).scroll(function() {
      checkScrollPosition();
    });

    function checkScrollPosition() {
      if ($(this).scrollTop() > 300) {
        $('.scrollbtn').fadeIn();
      } else {
        $('.scrollbtn').fadeOut();
      }
    }
  });
</script>
@endsection