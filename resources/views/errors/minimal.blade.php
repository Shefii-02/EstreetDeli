<!DOCTYPE html>
<html lang="en-US" itemscope="itemscope" itemtype="http://schema.org/WebPage">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="token" content="{{ csrf_token() }}">
    <title>@yield('title', $title)</title>
    <!--<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap.min.css') }}" media="all" />-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/animate.min.css') }}" media="all" />
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/font-pizzaro.css') }}" media="all" />
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style.css') }}" media="all" />
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/colors/green.css') }}" media="all" />
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/jquery.mCustomScrollbar.min.css') }}"
        media="all" />
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800%7CYanone+Kaffeesatz:200,300,400,700"
        rel="stylesheet">
    <link rel="shortcut icon" href="{{ asset('assets/images/logo.png') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700;800&family=Rubik:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-3N114GTR9S"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'G-3N114GTR9S');
    </script>
    <style>
        .small.text-capitalize {
            font-size: 1.5rem;
            font-family: "Poppins", sans-serif;
        }

        .site-content .home-v1-slider .caption {
            font-size: 3rem;
        }

        @media(max-width: 600px) {
            .small.text-capitalize {
                font-size: 1rem;
                font-family: "Poppins", sans-serif;
                line-height: 1.5;
            }

            .ff-sunset-boulevard.text-orange.fw-normal {
                font-size: 2rem;
            }
        }

        .text-orange {
            color: #f58323 !important;
        }

        header#masthead {
            margin-top: 0px;
        }

        .site-content {
            margin-top: -60px !important;
        }

        body {
            margin: 0 !important;
            padding: 0 !important;
            overflow-x: hidden !important;
            /*font-family: 'Raleway', sans-serif;*/
            font-family: "Poppins", sans-serif;
        }

        .ff-poppins {
            font-family: "Poppins", sans-serif !important;
        }

        .fw-bold {
            font-weight: bold !important;
        }

        .text-light {
            color: #ffffff !important;
        }

        .header-v4 .site-branding a img {
            position: absolute;
            text-align: left;
            margin-top: 22px !important;
        }

        .site-content {
            margin-top: -130px;
        }

        /* Style for the overlay text */
        .stock-text-overlay {
            font-size: 18px;
            font-weight: bold;
            color: red;
            /* Customize the color as needed */
        }

        /* Style to show overlay when product is out of stock */
        .product-image.out-of-stock+.stock-overlay {
            display: flex;
            /* Show the overlay */
        }

        .header-v4 .site-branding a img {
            position: absolute;
            text-align: left;
            margin-top: -60px;
        }

        .page-template-template-homepage-v7 .site-header {
            position: fixed;
            text-align: center;
            z-index: 999;
            margin-top: 35px;
            margin-left: auto;
            margin-right: auto;
            width: 100%;
            transition: margin 0.3s ease;
        }

        .header-v4 {
            padding: 4px 0;
        }
    </style>
</head>

<body class="home-v7 page-template-template-homepage-v7 woocommerce-active">

    <div id="page" class="hfeed site">
        <header id="masthead" class="site-header header-v4 row">
            <div class="col-full align-items-center py-2 py-lg-4">
                <div class="site-branding py-2">
                    <a href="{{ url('/') }}" class="custom-logo-link" rel="home">
                        <img src="{{ asset('assets/images/logo.png') }}" class="logo w-50">
                    </a>
                </div>
            </div>
        </header>
        <div id="content" class="site-content" tabindex="-1">
            <div class="col-full">
                <div id="primary" class="">
                    <main id="main" class=" bottom-0">
                        <div class="home-v1-slider">
                            <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
                                <div class="item"
                                    style="background-image: linear-gradient(rgba(0, 0, 0, 0.482), rgba(0, 0, 0, 0.553)), url('https://res.cloudinary.com/rr6/image/upload/v1704284088/estreetdeli/jpqjibersko0bj1j8t5l.png');">
                                    <div class="caption fadeIn py-3">
                                        <div class="title">

                                            <div class="ff-sunset-boulevard text-orange fw-normal">
                                                @yield('message')
                                            </div>

                                            @hasSection('description')
                                                <div class="small text-capitalize">
                                                    @yield('description')
                                                </div>
                                            @endif
                                        </div>
                                        <a class="btn tertiary-btn mt-3" href="{{ url('/') }}" title="Order Now">
                                            Back to home
                                        </a>
                                    </div>

                                    <!-- /.caption -->
                                </div>
                            </div>
                            <!-- /.owl-carousel -->
                        </div>

                    </main>
                    <!-- #main -->
                </div>
                <!-- #primary -->
            </div>
            <!-- .col-full -->
        </div>



        <footer id="colophon" class="site-footer footer-v4 py-2">
            <div class="col-full">
                <div class="footer-row row vertical-align position-relative">
                    <div class="footer-logo">
                        <a href="{{ url('/') }}" class="custom-logo-link" rel="home">
                            <img class="m-auto m-lg-0" src="{{ asset('assets/images/logo.png') }}">
                        </a>
                    </div>
                    <div class="site-address">
                        <ul class="address">
                            <li>E Street Deli </li>
                            <li>654 Queen St W, Toronto, ON M6J 1E5 </li>
                            <li>Phone: +1 (416) 613-9372</li>
                        </ul>
                        <div class="position-absolute w-100 for-copy-right">
                            <p class="mb-0">&copy; <?php echo date('Y'); ?>-<?php echo date('Y') + 1; ?> E Street Deli. All rights
                                reserved.
                            </p>
                        </div>
                    </div>
                    <div class="footer-social-icons">
                        <span class="social-icon-text">Follow us</span>
                        <ul class="social-icons list-unstyled">
                            <li><a class="bi bi-facebook" target="_new"
                                    href="https://www.facebook.com/profile.php?id=61555480701185"></a></li>
                            <li><a class="bi bi-instagram" target="_new"
                                    href="https://instagram.com/estreetdeli.ca"></a></li>
                        </ul>

                    </div>

                </div>
            </div>
            <!-- .col-full -->
            <div class="for-responsive-copy ">
                <p class="mb-0 text-center">&copy; <?php echo date('Y'); ?> Estreetdeli.ca All rights are reserved.
                </p>
            </div>

        </footer>

    </div>

</body>

</html>
