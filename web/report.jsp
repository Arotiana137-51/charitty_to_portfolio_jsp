<%-- 
    Document   : foundraise
    Created on : 10 mars 2022, 00:27:57
    Author     : Arotiana's
--%>

<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
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

        <link rel="stylesheet" href="resources/css/progresscss.css">


        <!-- Modernizr JS -->
        <script src="resources/js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="resources/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <header id="fh5co-header-section" class="sticky-banner">
        <div class="container">
            <div class="nav-header">
                <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
                <h1 id="fh5co-logo"><a href="index.html">Fifanampiana</a></h1>
                <!-- START #fh5co-menu-wrap -->
                <nav id="fh5co-menu-wrap" role="navigation">
                    <ul class="sf-menu" id="fh5co-primary-menu">
                        <li class="active">
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
                        <li><a href="<%= request.getContextPath()%>/contact">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <body>
        <div class="sprocgesscontainer   fh5co-section-gray   animate-box fadeInUp animated">
            <div class='row '>
                <div class="progtext text-center ">
                    <h2>Toe-bolan'ny famatsiana rano</h2><br><span class='fa-hand-holding-water fa-5x'></span><br>
                    <p>Mila manatratra 25 000 000 mba anaovana toha-drano anondrahana tanim-boly,<br>ividianana paompy isintomana rano<br>sy ividianana  ireo fantsona</p>
                </div>
                <div class="specialprogress" id="water">
                    <div class ="specialprogress-done" data-done="<%out.print(session.getAttribute("water"));%>">
                        <% out.println(session.getAttribute("water") + "%");%>
                    </div>
                </div>
            </div>
        </div>
        <div class="sprocgesscontainer   fh5co-section-gray  animate-box fadeInUp animated">
            <div class='row ' >
                <div class="progtext  text-center">
                    <h2>Toe-bolan'ny fahasalamana</h2><br><span class='fa-hand-holding-medical fa-5x'></span><br>
                    <p>Mila manatratra 35 000 000 ho fampitaovana ireo mpitsabo tsy mandray karama,<br>sakafon'ny marary<br>sy ividianana  fanafody</p>
                </div>
                <div class="specialprogress" id="medic">
                    <div  id="medicdone" style="width:<%out.print(session.getAttribute("medic"));%>%; opacity: 1;transition: 4s ease;"  data-done="<%out.print(session.getAttribute("medic"));%>">
                        <% out.println(session.getAttribute("medic") + "%");%>
                    </div>
                </div>
            </div>
        </div>

        <div class="sprocgesscontainer   fh5co-section-gray  animate-box fadeInUp animated">
            <div class='row'>
                <div class="progtext  text-center">
                    <h2>Toe-bolan'ny fitafy</h2><br><span class='fa-tshirt fa-5x'></span><br>
                    <p>Mila manatratra 100 000 mba anomezana fitafy ireo sahirana,<br>ividianana mi    lina fanjairana<br>sy ividianana lamba hozairina</p>
                </div>
                <div class="specialprogress" id="chloth">
                    <div class ="specialprogress-done"  id="chlothdone"  data-done="<%out.print(session.getAttribute("chloth"));%>">
                        <% out.println(session.getAttribute("chloth") + "%");%>
                    </div>
                </div>
            </div>
        </div>


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
                            <p> <a href="https://unsplash.com/" target="_blank">Crée avec java EE 8 </a></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>



        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/main.js"></script>
        <!-- jQuery Easing -->
        <script src="resources/js/jquery.easing.1.3.js"></script>

        <!-- Bootstrap -->
        <script src="resources/js/progressjavascript.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="resources/js/jquery.waypoints.min.js"></script>
        <script src="resources/js/sticky.js"></script>

        <!-- Stellar -->
        <script src="resources/js/jquery.stellar.min.js"></script>
        <!-- Superfish -->
        <script src="resources/js/hoverIntent.js"></script>
        <script src="resources/js/superfish.js"></script>

        <!-- Main JS -->

    </body>
</html>
