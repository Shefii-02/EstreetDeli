@extends('layouts.frontend')
@section('contents')
     <div id="content" class="site-content" tabindex="-1" >
        <div class="col-full">
           <div id="primary" class="">
              <main id="main" class=" bottom-0" >
                 <div class="home-v1-slider" >
                    <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
                        @foreach($slider as $items)
                            <div class="item slider-1" style="background-image: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url({{asset('images/banners/'.$items->picture ?? '')}});">
                                <div class="caption fadeIn py-3">
                                    <div class="title">
                                        <span class="firstLine text-capitalize">Handcrafted Italian Fusion</span><br>
                                        <span class="lastLine ff-sunset-boulevard text-orange display fw-normal">Sandwich Renaissance</span>
                                    </div>
                                    <a class="btn tertiary-btn " href="{{url('menu')}}" title="Order Now">
                                            ORDER NOW
                                        </a>
                                </div>
                                
                              <!-- /.caption -->
                            </div>
                        @endforeach
                    </div>
                    <!-- /.owl-carousel -->
                 </div>
                 <div class="stretch-full-width section-coupon section-2">
                    <div class="coupon-bg d-flex flex-column position-relative max-h-900" style="background : linear-gradient(rgb(255 255 255 / 17%), rgb(255 255 255 / 2%)), url({{ asset('/images/banners/sASUQuwLx1cJx6JBepTJH0gY9C5atC.png') }}) center/cover no-repeat;">
                            <div class="caption-section2 align-self-center text-center position-absolute top-25">
                                    <div class="lineheight-1">
                                        <span class="comming ff-sunset-boulevard fw-normal">
                                            NOW
                                        </span>
                                        <br>
                                        <span class="month ff-sunset-boulevard fw-normal">
                                            OPEN
                                        </span><br>
                                        <span class="place mb-2">
                                            Queen St. West
                                        </span><br>
                                        <span class="city ff-sunset-boulevard fw-normal">Toronto</span>
                                    </div>
                                    
                            </div>
                        </div>
                       
                    </div>

                 <div class="stretch-full-width banner-with-post">
                    <div class="row">
                       <div class="col-md-6 col-sm-6 no-padding">
                          <div class="banner center social-block" >
                             <a href="#">
                                 
                                <div class="banner-bg" style="background : linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url({{asset('images/banners/'.$home_tiles[2]->picture ?? '')}}) center/cover no-repeat;">
                                   <div class="caption text-orange">
                                        <h4 class="pretitle ff-sunset-boulevard fw-normal text-orange">LAYERS OF FRESHNESS</h4>
                                        <h3 class="title text-orange ff-murray-regular">COLD Sandwich</h3>
                                        <a class="btn tertiary-btn " href="{{url('menu')}}" title="Order Now">
                                            ORDER NOW
                                        </a>
                                   </div>
                                </div>
                             </a>
                          </div>
                       </div>
                       
                       <div class="col-md-6 col-sm-6 no-padding">
                            <div class="banner center social-block" >
                                <div class="banner-bg" style="background : linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url({{asset('images/banners/'.$home_tiles[3]->picture ?? '')}}) center/cover no-repeat;">
                                   <div class="caption text-orange">
                                        <h4 class="pretitle ff-sunset-boulevard fw-normal text-orange">SIZZLING CREATIONS</h4>
                                        <h3 class="title text-orange ff-murray-regular">HOT Sandwich</h3>
                                        <a class="btn tertiary-btn " href="{{url('menu')}}" title="Order Now">
                                            ORDER NOW
                                        </a>
                                   </div>
                                </div>
                          </div>
                          
                       </div>
                    </div>
                 </div>
                    <div class="stretch-full-width section-store-search"  style="background-size: cover; background-position: center center; background-image: linear-gradient( #b45300c2, #b45300c2 ), url({{asset('images/banners/'.$home_tiles[4]->picture ?? '')}}); min-height: 785px;">
                    <div class="store-locator w-auto w-100">
                       <div class="store-info">
                          <div class="title-text text-center ">
                             <h2 class="title ff-sunset-boulevard fw-normal">JOIN OUR DELI COMMUNITY</h2>
                             <h3 class="sub-title ff-sunset-boulevard"><span>AND NEVER MISS A BITE</span></h3>
                          </div>
                          <div class="text-center d-flex justify-content-center gap-5">
                                <span class="bg-light p-3 rounded-1" style="font-size: 40px;"><a class="bi bi-facebook" target="_new" href="https://www.facebook.com/profile.php?id=61555480701185"></a></span>
                                <span class="bg-light p-3 rounded-1" style="font-size: 40px;"><a class="bi bi-instagram" target="_new" href="https://instagram.com/estreetdeli.ca"></a></span>
                          </div>
                       </div>
                    </div>
                    </div>
                    @if($blogs->count())
                     <section class="section-recent-posts" >
                        <h3 class="pre-title ff-pacifico text-capitalize"><span>Our Latest Posts</span></h3>
                        <h2 class="section-title ff-sunset-boulevard fw-normal">Read Our Blog</h2>
                        <div class="post-items">
                            @foreach($blogs as $bItems)
                                <div class="post-item">
                                  <a class="post-thumbnail" href="{{route('single_blog',$bItems->slug)}}">
                                  <img width="1619" height="827" src="{{asset('images/blogs/'.$bItems->picture)}}" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="" />
                                  </a>
                                  <div class="post-info">
                                     <h3 class="post-title">
                                        <a href="{{route('single_blog',$bItems->slug)}}">{{$bItems->title}}</a>
                                     </h3>
                                     {!! Str::limit($bItems->description,120) !!}
                                     <br>
                                     <a class="btn-more" href="{{route('single_blog',$bItems->slug)}}">Read more</a>
                                  </div>
                                </div>
                            @endforeach
                        </div>
                     </section>
                     @endif
                     <section class="newsletter-subscription stretch-full-width"  style="background-size: cover; background-position: center center; background-image: linear-gradient( #232323c2, #232323c2 ), url({{asset('images/banners/'.$home_tiles[4]->picture ?? '')}}); height: 460px;">
                        <div class="caption">
                           <h3 class="title text-light ff-sunset-boulevard fw-normal">Subscribe to Newsletter</h3>
                           <span class="marketing-text text-light ff-pacifico">Subscribe to receive our weekly Hot Promotions every Monday!</span>
                           <form action="{{url('subscription-submit')}}" id="subscription-submit" class="validated not-ajax" method="POST">
                               @csrf()
                              <div class="newsletter-form">
                                 <input type="email" required name="email" class="rounded-5" placeholder="Type here your email address to receive our newsletter">
                                 <button class="button py-2 px-5 fs-3 ff-sunset-boulevard fw-normal" type="submit">Sign Up</button>
                              </div>
                           </form>
                        </div>
                     </section>
                 
              </main>
              <!-- #main -->
           </div>
           <!-- #primary -->
        </div>
        <!-- .col-full -->
     </div>
     <!-- #content -->
@endsection 
         
         
         
         