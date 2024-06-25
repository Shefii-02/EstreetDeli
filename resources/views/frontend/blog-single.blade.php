@extends('layouts.frontend')
@section('contents')

<section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5 text-overflow">{{$single_blog->name}}</h1>
                </div>
            </div>
        </div>
    </section>



  <!--<section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">-->
  <!--      <div class="container">-->
  <!--          <div class="row">-->
  <!--              <div class="col-12 d-flex justify-content-center flex-column text-overflow" style="height: 350px;">-->
  <!--                  <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5 mb-0 text-overflow">{{$single_blog->name}}</h1>-->
  <!--                  <nav class="align-self-center text-white" style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">-->
  <!--                      <ol class="breadcrumb">-->
  <!--                          <li class="breadcrumb-item "><a  class="text-light" href="{{url('/')}}">Home</a></li>-->
  <!--                          <li class="breadcrumb-item text-light active" aria-current="page">{{$single_blog->name}}</li>-->
  <!--                      </ol>-->
  <!--                  </nav>-->
  <!--              </div>-->
  <!--          </div>-->
  <!--      </div>-->
  <!--  </section>-->
    
     <section class="py-5">
         <div id="content" class="" tabindex="-1" >
            <div class="col-full">
               <!-- .woocommerce-breadcrumb -->
                     <article id="post-359" class="post-359 post type-post status-publish format-image has-post-thumbnail hentry category-technology tag-event tag-festival tag-music tag-woocommerce post_format-post-format-image">
                        <header class="">
                           <h1 class="entry-title fs-1 mt-3 mb-0 p-0 fw-semibold">{{$single_blog->name}}</h1>
                           <div class="entry-meta">
                              <span class="posted-on">
                              <a href="#" rel="bookmark">
                              <time class="entry-date published" datetime="2016-10-13T14:53:25+00:00">October 13, 2016</time>
                              <time class="updated" datetime="2016-10-14T06:48:31+00:00">October 14, 2016</time>
                              </a>
                              </span>
                           </div>
                        </header>
                        <div class="media-attachment mt-3">
                              <div class="post-thumbnail">
                                 <img width="1619" height="827" src="{{asset('images/blogs/'.$single_blog->picture)}}" class="attachment-full size-full wp-post-image" alt="" />
                              </div>
                           </div>
                        <!-- .entry-header -->
                        <div class="entry-content">
                            {!! $single_blog->description !!}
                          
                        </div>
                        
                     </article>
                     <!-- #post-## -->
                
             
            </div>
            <!-- .col-full -->
         </div>
         
     </section>
     
     <div class="toTop" style="display:none">
            <a href="#page" class="d-flex align-items-center topBTN tertiary-btn">
                <i class="bi bi-arrow-up-short m-auto"></i>
            </a>
        </div>
         <!-- #content -->
@endsection
@section('scripts')
<script>
$(document).ready(function() {
    checkScrollPosition();
    $(window).scroll(function() {
      checkScrollPosition();
    });

    function checkScrollPosition() {
      if ($(this).scrollTop() > 300) {
        $('.toTop').fadeIn();
      } else {
        $('.toTop').fadeOut();
      }
    }
  });
   $('.entry-content p').each(function() {
            if ($(this).html() == '&nbsp;') {
                $(this).remove();
            }
        });
</script>
@endsection