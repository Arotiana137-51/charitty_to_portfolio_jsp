<%-- 
    Document   : contact
    Created on : 9 mars 2022, 23:12:43
    Author     : Arotiana's
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Foundraising</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">



        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico">

        <!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'> -->

        <!-- Animate.css -->
        <link rel="stylesheet" href="resources/css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="resources/css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="resources/css/bootstrap.css">
        <!-- Superfish -->
        <link rel="stylesheet" href="resources/css/superfish.css">

        <link rel="stylesheet" href="resources/css/style.css">


        <!-- Modernizr JS -->
        <script src="resources/js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="resources/js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>
        <div id="fh5co-wrapper">
            <div id="fh5co-page">
                <div class="header-top">
                    <div class="container">
                        <div class="row">

                            <div class="col-md-12 col-sm-12 text-right fh5co-social">
                                <a href="#" class="grow"><i class="icon-facebook2"></i></a>
                                <a href="#" class="grow"><i class="icon-twitter2"></i></a>
                                <a href="#" class="grow"><i class="icon-instagram2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <header id="fh5co-header-section" class="sticky-banner">
                    <div class="container">
                        <div class="nav-header">
                            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
                            <h1 id="fh5co-logo"><a href="index.html">Fifanampiana</a></h1>
                            <!-- START #fh5co-menu-wrap -->
                            <nav id="fh5co-menu-wrap" role="navigation">
                                <ul class="sf-menu" id="fh5co-primary-menu">
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>
                                        <a href="#" class="fh5co-sub-ddown">Mandraisa anjara</a>
                                        <ul class="fh5co-sub-menu">
                                            <li><a href="<%= request.getContextPath()%>/visaPayment">Donate</a></li>
                                            <li><a href="<%= request.getContextPath()%>/foundraise">Fundraise</a></li>
                                            <li><a href="<%= request.getContextPath()%>/AdminStatus">Lisitry ny nanome</a></li>

                                        </ul>
                                    </li>
                                    <li><a href="<%= request.getContextPath()%>/report">Tetikasa</a></li>
                                    <li><a href="<%= request.getContextPath()%>/about">About</a></li>
                                    <li><a href="<%= request.getContextPath()%>/blog">Blog</a></li>
                                    <li class="active"><a href="<%= request.getContextPath()%>/contact">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>



                <div class="fh5co-hero">
                    <div class="fh5co-overlay"></div>
                    <div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(resources/images/cover_bg_2.jpg);">
                        <div class="desc animate-box">
                            <h2><strong>Contact</strong> Us</h2>
                            <span>Ahafahanao mifandray aminay</span>
                            <span><a class="btn btn-primary btn-lg" href="#">Donate Now</a></span>
                        </div>
                    </div>

                </div>

                <div id="fh5co-contact" class="animate-box">
                    <div class="container">
                        <form action="#">
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="section-title">Ny toerana misy anay</h3>
                                    <p> lorem Another important aspect of our project is advocating for policies and programs that support child nutrition and food security. We believe that governments and policymakers have a critical role to play in addressing the root causes of child hunger, and we work to raise awareness and influence policy decisions at the local, national, and international levels..</p>
                                    <ul class="contact-info">
                                        <li><i class="icon-location-pin"></i>198 M 128 Isoraka Antananarivo MDG</li>
                                        <li><i class="icon-phone2"></i>+ 261 34 25 698 79</li>
                                        <li><i class="icon-mail"></i><a href="#">info@foudraising.com</a></li>
                                        
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Anarana">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Email">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <textarea name="message" class="form-control" id="message" cols="30" rows="7" placeholder="Hafatra"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="submit" value="Andefa afatra" class="btn btn-primary">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- END fh5co-contact -->
                <div id="map" class="fh5co-map"></div>
                <!-- END map -->


                <footer>
                    <div id="footer">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 text-center">
                                    <p class="fh5co-social-icons">
                                        <a href="#"><i class="icon-twitter2"></i></a>
                                        <a href="#"><i class="icon-facebook2"></i></a>
                                        <a href="#"><i class="icon-instagram"></i></a>
                                        <a href="#"><i class="icon-dribbble2"></i></a>
                                        <a href="#"><i class="icon-youtube"></i></a>
                                    </p>

                                </div>
                            </div>
                        </div>
                    </div>
                </footer>


            </div>
            <!-- END fh5co-page -->

        </div>
        <!-- END fh5co-wrapper -->

        <!-- jQuery -->


        <script src="resources/js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="resources/js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="resources/js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="resources/js/jquery.waypoints.min.js"></script>
        <script src="resources/js/sticky.js"></script>

        <!-- Stellar -->
        <script src="resources/js/jquery.stellar.min.js"></script>
        <!-- Superfish -->
        <script src="resources/js/hoverIntent.js"></script>
        <script src="resources/js/superfish.js"></script>

        <!-- Google Map -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
        <script src="resources/js/google_map.js"></script>

        <!-- Main JS -->
        <script src="resources/js/main.js"></script>

    </body>
</html>


