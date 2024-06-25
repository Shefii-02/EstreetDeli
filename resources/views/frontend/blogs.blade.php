@extends('layouts.frontend')
@section('contents')
  <section class="breadcrumb-banner" style=" background: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png') center/cover no-repeat;">
        <div class="container">
            <div class="row">
                <div class="col-12 d-flex justify-content-center" style="height: 350px;">
                    <h1 class="text-white font-weight-bold align-self-center ff-sunset-boulevard display-1 pt-5 mt-5">BLOG</h1>
                </div>
            </div>
        </div>
    </section>
    
    <section class="py-5">
         <div id="content" class="pt-5" tabindex="-1" >
        <div class="col-full">
           <!--<div class="pizzaro-breadcrumb">-->
           <!--   <nav class="woocommerce-breadcrumb" >-->
           <!--      <a href="{{url('/')}}">Home</a><span class="delimiter"><i class="po po-arrow-right-slider"></i></span>Blogs-->
           <!--   </nav>-->
           <!--</div>-->
           <!-- .woocommerce-breadcrumb -->
           <div id="primary" class="content-area">
              <main id="main" class="site-main" >
                <div class="posts row">
                    @foreach($blogs as $Blogitems)
                        <div class="col-lg-4">
                         <article id="post-359" class="post-359 post type-post status-publish format-image has-post-thumbnail sticky hentry category-technology tag-event tag-festival tag-music tag-woocommerce post_format-post-format-image">
                           <header class="entry-header">
                              <div class="media-attachment">
                                 <div class="post-thumbnail">
                                    <a href="{{url('blog/'.$Blogitems->slug)}}">
                                        <img width="1619" height="827" src="{{asset('images/blogs/'.$Blogitems->picture)}}" class="attachment-full size-full wp-post-image" alt="" />
                                    </a>
                                 </div>
                              </div>
                              

                              <h1 class="alpha entry-title">
                                 <a href="blog-single.html" rel="bookmark">{!! Str::Limit($Blogitems->name,47) !!}</a>
                              </h1>
                              <div class="entry-meta">
                                 <div class="cat-links">
                                    <a href="{{url('blog/'.$Blogitems->slug)}}" rel="category tag">Technology</a>
                                 </div>
                                 <span class="posted-on">
                                 <a href="{{url('blog/'.$Blogitems->slug)}}" rel="bookmark">
                                 <time class="entry-date published">October 13, 2016</time>
                                 </a>
                                 </span>
                              </div>
                           </header>
                           <!-- .entry-header -->
                           <div class="entry-content">
                              <p>{!! Str::Limit($Blogitems->description,120) !!}</p>
                              <div class="post-readmore">
                                 <a href="{{url('blog/'.$Blogitems->slug)}}" class="read-more-text">Read More</a>
                              </div>
                           </div>
                        </article>
                        </div>
                    @endforeach
                </div>
               
              </main>
              <!-- #main -->
           </div>
           <!-- #primary -->
        </div>
        <!-- .col-full -->
     </div>
    </section>
   
     <!-- #content -->
@endsection