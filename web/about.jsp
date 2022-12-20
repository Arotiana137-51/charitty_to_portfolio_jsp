<%-- 
    Document   : about
    Created on : 9 mars 2022, 22:40:14
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
							<li class="active"><a href="<%= request.getContextPath()%>/about">About</a></li>
							<li><a href="<%= request.getContextPath()%>/blog">Blog</a></li>
							<li><a href="<%= request.getContextPath()%>/contact">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
		
		

		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(resources/images/red-noses.jpg);">
				<div class="desc animate-box">
					<h2>Mahakasika  <strong>Anay</strong></h2>
					<span>Asa soa no ataonay</span>
					<span><a class="btn btn-primary btn-lg" href="visaPayment.jsp">Mandraisa anjara</a></span>
				</div>
			</div>

		</div>
		
		<div id="fh5co-feature-product" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center heading-section">
						<h3>Ny niandohanay.</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>

				<div class="row row-bottom-padded-md">
					<div class="col-md-12 text-center animate-box">
						<p><img src="resources/images/cover_bg_1.jpg"  class="img-responsive"></p>
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
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="feature-text">
							<h3>Fiantrana</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="feature-text">
							<h3>Fahatsoram-po</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
					</div>
				</div>

				
			</div>
		</div>

		
		<div id="fh5co-portfolio">
			<div class="container">

				<div class="row">
					<div class="col-md-6 col-md-offset-3 text-center heading-section animate-box">
						<h3>Sary vitsivitsy</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
					</div>
				</div>

				
				<div class="row row-bottom-padded-md">
					<div class="col-md-12">
						<ul id="fh5co-portfolio-list">

							<li class="two-third animate-box" data-animate-effect="fadeIn" style="background-image: url(resources/images/KatyPerry.jpg); ">
								<a href="#" class="color-3">
									<div class="case-studies-summary">
										<span>Mizara fitiavana</span>
										<h2>Donation is caring</h2>
									</div>
								</a>
							</li>
						
							<li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(resources/images/ladyDi.jpg); ">
								<a href="#" class="color-4">
									<div class="case-studies-summary">
										<span>Mizara fitiavana</span>
										<h2>Donation is caring</h2>
									</div>
								</a>
							</li>

							<li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(resources/images/TanzanianSchoolVisit.png); "> 
								<a href="#" class="color-5">
									<div class="case-studies-summary">
										<span>Mizara fitiavana</span>
										<h2>Donation is caring</h2>
									</div>
								</a>
							</li>
							<li class="two-third animate-box" data-animate-effect="fadeIn" style="background-image: url(resources/images/Bath.jpg); ">
								<a href="#" class="color-6">
									<div class="case-studies-summary">
										<span>Mizara fitiavana</span>
										<h2>Donation is caring</h2>
									</div>
								</a>
							</li>
						</ul>		
					</div>
				</div>

				<div class="row">
					<div class="col-md-4 col-md-offset-4 text-center animate-box">
						<a href="#" class="btn btn-primary btn-lg">Ijery sary</a>
					</div>
				</div>

				
			</div>
		</div>
		

		
		<div id="fh5co-content-section" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Ireo mpitarika</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="fh5co-team text-center animate-box">
							<figure>
								<img src="resources/images/person_1.jpg" alt="user">
							</figure>

							<div>
								<h3>Hery antenaina</h3>
								<p><span>Mpanorina</span></p>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
							
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-linkedin2"></i></a>
								<a href="#"><i class="icon-facebook3"></i></a>
							</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="fh5co-team text-center animate-box">
							<figure>
								<img src="resources/images/person_2.jpg" alt="user">
							</figure>
							<div>
								<h3>Bill gates</h3>
								<p><span>Mpamatsy vola</span></p>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-linkedin2"></i></a>
								<a href="#"><i class="icon-facebook3"></i></a>
							</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="fh5co-team text-center animate-box">
							<figure>
								<img src="resources/images/person_3.jpg" alt="user">
							</figure>
							<div>
								<h3>Fondation siteny</h3>
								<p><span>Mpisehatra ifotony</span></p>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-linkedin2"></i></a>
								<a href="#"><i class="icon-facebook3"></i></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- fh5co-content-section -->

		
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
							<p>Crée avec JEE</p>
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

