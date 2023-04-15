<%-- 
    Document   : index
    Created on : 9 mars 2022, 22:27:55
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
        
        <link rel="stylesheet" type="text/css" href="resources/font-awesome/css/font-awesome.min.css">


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



                <div class="fh5co-hero">
                    <div class="fh5co-overlay"></div>
                    <div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(resources/images/cover_bg_1.jpg);">
                        <div class="desc animate-box">
                            <h2><strong>Omeo</strong> ireo <strong>zaza sahirana</strong></h2>
                            <span>Donate to the poor children</span>
                            <span><a class="btn btn-primary btn-lg" href="<%= request.getContextPath()%>/visaPayment">Anome zao</a></span>
                        </div>
                    </div>

                </div>
                <!-- end:header-top -->
                <div id="fh5co-features">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">

                                <div class="feature-left">
                                    <span class="icon">
                                        <i class="icon-profile-male"></i>
                                    </span>
                                    <div class="feature-copy">
                                        <h3>Become a volouter</h3>
                                        <p>Mandraisa anjara mivantana amin'ny fanampiana </p>
                                        <p><a href="#">Learn More</a></p>
                                    </div>
                                </div>

                            </div>

                            <div class="col-md-4">
                                <div class="feature-left">
                                    <span class="icon">
                                        <i class="icon-happy"></i>
                                    </span>
                                    <div class="feature-copy">
                                        <h3>Mahafaly ny manome</h3>
                                        <p>Mahasambatra kokoa ny manome noho ny mandray</p>
                                        <p><a href="#">Bebe kokoa</a></p>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-4">
                                <div class="feature-left">
                                    <span class="icon">
                                        <i class="icon-wallet"></i>
                                    </span>
                                    <div class="feature-copy">
                                        <h3>Fanomezana</h3>
                                        <p>Tsy misy very izay omenao.</p>
                                        <p><a href="#">Learn More</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="fh5co-feature-product" class="fh5co-section-gray">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center heading-section">
                                <h3>Mahavonjy aina ny fanomezanao.</h3>
                                <p>Mety tsy ho ampoizinao ny zava-bitan'ny fanomezanao, ahavitana mamahana zaza 3 ny 5$.Ampy iantohana ny fianarany mandritra ny 1 taona ny 20$</p>
                            </div>
                        </div>

                        <div class="row row-bottom-padded-md">
                            <div class="col-md-12 text-center animate-box">
                                <p><img src="resources/images/us.jpg"  class="img-responsive"></p>
                            </div>
                            <div class="col-md-6 text-center animate-box">
                                <p><img src="resources/images/cover_bg_2.jpg"  class="img-responsive"></p>
                            </div>
                            <div class="col-md-6 text-center animate-box">
                                <p><img src="resources/images/cover_bg_3.jpg"  class="img-responsive"></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="feature-text">
                                    <h3>Fitiavana</h3>
                                    <p>Hery manosika ny rehetra iaina sy ivelona. Omeo amin'izany ireo zaza ireo.</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="feature-text">
                                    <h3>Fahamoram-po</h3>
                                    <p>Manova zavatra maro.</p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="feature-text">
                                    <h3>Fiantrana</h3>
                                    <p>manatsara ny fiaraha-monina, mampihena ny tsy fahandriam-pahalemana. Manampy anao ihany koa</p>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>


                <div id="fh5co-portfolio">
                    <div class="container">

                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 text-center heading-section animate-box">
                                <h3>Santionany amin'ny asanay</h3>
                                <p>We are a dedicated group of individuals who believe that no child should ever have to go hungry. Unfortunately, this is not the reality for many children in our world today. According to the World Health Organization, an estimated 149 million children under the age of 5 suffer from chronic malnutrition globally. That's why we've made it our mission to fight child hunger and improve the lives of these children and their families..</p>
                            </div>
                        </div>


                        <div class="row row-bottom-padded-md">
                            <div class="col-md-12">
                                <ul id="fh5co-portfolio-list">

                                    <li class="two-third animate-box" data-animate-effect="fadeIn" style="background-image: url(resources/images/cover_bg_1.jpg); ">
                                        <a href="#" class="color-3">
                                            <div class="case-studies-summary">
                                                <span>Mizara fitiavana</span>
                                                <h2>Mahavita asa maro izay omenao</h2>
                                            </div>
                                        </a>
                                    </li>

                                    <li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(resources/images/cover_bg_3.jpg); ">
                                        <a href="#" class="color-4">
                                            <div class="case-studies-summary">
                                                <span>Mizara fitiavana</span>
                                                <h2>Mahasoa kokoa ny manome noho ny mandray</h2>
                                            </div>
                                        </a>
                                    </li>

                                    <li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(resources/images/cover_bg_1.jpg); "> 
                                        <a href="#" class="color-5">
                                            <div class="case-studies-summary">
                                                <span>Mizara fitiavana</span>
                                                <h2>Mahasoa kokoa ny manome noho ny mandray</h2>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="two-third animate-box" data-animate-effect="fadeIn" style="background-image: url(resources/images/cover_bg_3.jpg); ">
                                        <a href="#" class="color-6">
                                            <div class="case-studies-summary">
                                                <span>Mizara fitiavana</span>
                                                <h2>Mahasoa kokoa ny manome noho ny mandray</h2>
                                            </div>
                                        </a>
                                    </li>
                                </ul>		
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 col-md-offset-4 text-center animate-box">
                                <a href="#" class="btn btn-primary btn-lg">See Gallery</a>
                            </div>
                        </div>


                    </div>
                </div>



                <div id="fh5co-content-section" class="fh5co-section-gray">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                                <h3>Ireo Tsara sitrapo</h3>
                                <p>I am writing to express my gratitude for the opportunity to support your organization through my recent donation. As a passionate advocate for the important work you do, I am thrilled to have been able to make a contribution to further your efforts..</p>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="fh5co-testimonial text-center animate-box">
                                    <figure>
                                        <img src="resources/images/person_1.jpg" alt="user">
                                    </figure>
                                    <blockquote>
                                        <p>&ldquo;I was impressed to learn about the impact that your organization has made in the community, and I am honored to have played a small role in supporting your mission. Your work to [insert specific programs or initiatives] is truly making a difference in the lives of those you serve.&rdquo;</p>
                                    </blockquote>
                                    <span>Herinantenaina.</span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="fh5co-testimonial text-center animate-box">
                                    <figure>
                                        <img src="resources/images/person_2.jpg" alt="user">
                                    </figure>
                                    <blockquote>
                                        <p>&ldquo;I hope my donation has helped in some way to further your important work, and I look forward to hearing about the continued success of your programs and initiatives. Please keep up the great work, and thank you again for the opportunity to support your organization.&rdquo;</p>
                                    </blockquote>
                                    <span>Bill Gates</span>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="fh5co-testimonial text-center animate-box">
                                    <figure>
                                        <img src="resources/images/person_3.jpg" alt="user">
                                    </figure>
                                    <blockquote>
                                        <p>&ldquo;I am also pleased to see how efficiently and effectively your organization utilizes its resources to achieve your goals. Seeing the tangible results of my donation has given me great satisfaction and reinforces my belief in the importance of supporting organizations like yours.d.&rdquo;</p>
                                    </blockquote>
                                    <span>Jef Bezos </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- fh5co-content-section -->

                <div id="fh5co-services-section">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                                <h3>Ireot tetikasanay</h3>
                                <p>Our project focuses on several key areas to help combat child hunger. One of our main initiatives is to provide nutritious meals to children in need. We work with local schools and community organizations to identify children who are at risk of hunger and provide them with healthy, balanced meals to ensure they have the energy and nutrients they need to grow and thrive..</p>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row text-center">
                            <div class="col-md-4 col-sm-4">
                                <div class="services animate-box">
                                    <span><i class="icon-heart"></i></span>
                                    <h3>Fiompiana</h3>
                                    <p>Another important aspect of our project is advocating for policies and programs that support child nutrition and food security. We believe that governments and policymakers have a critical role to play in addressing the root causes of child hunger, and we work to raise awareness and influence policy decisions at the local, national, and international levels..</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="services animate-box">
                                    <span><i class="icon-heart"></i></span>
                                    <h3>Fampitaovana</h3>
                                    <p>Another important aspect of our project is advocating for policies and programs that support child nutrition and food security. We believe that governments and policymakers have a critical role to play in addressing the root causes of child hunger, and we work to raise awareness and influence policy decisions at the local, national, and international levels..</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="services animate-box">
                                    <span><i class="icon-heart"></i></span>
                                    <h3>Fampiantranoana</h3>
                                    <p>Another important aspect of our project is advocating for policies and programs that support child nutrition and food security. We believe that governments and policymakers have a critical role to play in addressing the root causes of child hunger, and we work to raise awareness and influence policy decisions at the local, national, and international levels..</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="services animate-box">
                                    <span><i class="icon-heart"></i></span>
                                    <h3>Fanabeazana fototra</h3>
                                    <p>Another important aspect of our project is advocating for policies and programs that support child nutrition and food security. We believe that governments and policymakers have a critical role to play in addressing the root causes of child hunger, and we work to raise awareness and influence policy decisions at the local, national, and international levels..</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="services animate-box">
                                    <span><i class="icon-heart"></i></span>
                                    <h3>Famatsiana rano fisotro madio</h3>
                                    <p>Another important aspect of our project is advocating for policies and programs that support child nutrition and food security. We believe that governments and policymakers have a critical role to play in addressing the root causes of child hunger, and we work to raise awareness and influence policy decisions at the local, national, and international levels..</p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="services animate-box">
                                    <span><i class="icon-heart"></i></span>
                                    <h3>Fitafy</h3>
                                    <p>Another important aspect of our project is advocating for policies and programs that support child nutrition and food security. We believe that governments and policymakers have a critical role to play in addressing the root causes of child hunger, and we work to raise awareness and influence policy decisions at the local, national, and international levels..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- END What we do -->


                <div id="fh5co-blog-section" class="fh5co-section-gray">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                                <h3>Vaovao</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row row-bottom-padded-md">
                            <div class="col-lg-4 col-md-4 col-sm-6">
                                <div class="fh5co-blog animate-box">
                                    <a href="#"><img class="img-responsive" src="resources/images/cover_bg_1.jpg" alt=""></a>
                                    <div class="blog-text">
                                        <div class="prod-title">
                                            <h3><a href="#">Fitsaboana Beraketa</a></h3>
                                            <span class="posted_by">Sep. 15th</span>
                                            <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
                                            <p>Hunger and pain, deep povrety,Another important aspect of our project is advocating for policies and programs that support child nutrition and food security. We believe that governments and policymakers have a critical role to play in addressing the root causes of child hunger, and we work to raise awareness and influence policy decisions at the local, national, and international levels..</p>
                                            <p><a href="#">Fanazavana fanampiny...</a></p>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6">
                                <div class="fh5co-blog animate-box">
                                    <a href="#"><img class="img-responsive" src="resources/images/feeding.jpg" alt=""></a>
                                    <div class="blog-text">
                                        <div class="prod-title">
                                            <h3><a href="#">Ady amin'ny tsy fanjarian'tsakafo</a></h3>
                                            <span class="posted_by">Sep. 15th</span>
                                            <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
                                            <p>Another important aspect of our project is advocating for policies and programs that support child nutrition and food security. We believe that governments and policymakers have a critical role to play in addressing the root causes of child hunger, and we work to raise awareness and influence policy decisions at the local, national, and international levels..</p>
                                            <p><a href="#">Fanazavana fanampiny...</a></p>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                            <div class="clearfix visible-sm-block"></div>
                            <div class="col-lg-4 col-md-4 col-sm-6">
                                <div class="fh5co-blog animate-box">
                                    <a href="#"><img class="img-responsive" src="resources/images/cover_bg_3.jpg" alt=""></a>
                                    <div class="blog-text">
                                        <div class="prod-title">
                                            <h3><a href="#">Fitsaboana any betroka</a></h3>
                                            <span class="posted_by">Sep. 15th</span>
                                            <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
                                            <p> lorem ipsum sit dolor amet.Vokalia and Consonantia, there live the blind texts.Vokalia and Consonantia, there live the blind texts.</p>
                                            <p><a href="#">Bebe kokoa...</a></p>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                            <div class="clearfix visible-md-block"></div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 col-md-offset-4 text-center animate-box">
                                <a href="#" class="btn btn-primary btn-lg">Ny pejinay</a>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- fh5co-blog-section -->
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
                                    <p> <a href="https://aportfolio.vercel.app/" target="_blank">Crée avec java EE 8 </a></p>
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

        <!-- Main JS -->
        <script src="resources/js/main.js"></script>

    </body>
</html>


