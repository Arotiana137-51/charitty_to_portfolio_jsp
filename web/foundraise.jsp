<%-- 
    Document   : foundraise
    Created on : 19 mars 2022, 16:41:51
    Author     : Arotiana's
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Animate.css -->
        <link rel="stylesheet" href="resources/css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="resources/css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="resources/css/bootstrap.css">
        <!-- Superfish -->
        <link rel="stylesheet" href="resources/css/superfish.css">

        <link rel="stylesheet" href="resources/css/style.css">

        <link rel="stylesheet" href="resources/font-awesome/css/font-awesome.min.css">

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

                <div class="card">
                    <div class="col-md-2 fh5co-section-gray"></div>
                         
                    <div class="card-container col-md-10 fh5co-section-gray" style="align-content: center">
                        <h3 class="card-title">Fangatahana famatsiam-bola</h3>
                        <form role="form" action="<%=request.getContextPath()%>/comunity" method ="get" >

                            <div class="form-group col-md-8">
                                <label for="inputEmail4">Email</label>
                                <input type="email" class="form-control" name="mail" required="required" value="<c:out value='${Foundraiser.email}' />" id="inputEmail4">
                            </div>
                            <div class="form-group col-md-8">
                                <label for="inputPassword4">Teny miafina</label>
                                <input type="password" class="form-control" name="password" required="required" value="<c:out value='${Foundraiser.password}' />" id="inputPassword4">
                            </div>

                            <div class="form-group  col-md-8">
                                <label for="inputName">Anarana</label>
                                <input type="text" class="form-control" id="inputNom" required="required" name="nom"placeholder="Ny anarana misoratra eo amin'ny karatra visa">
                            </div>
                            <div class="form-group  col-md-8">
                                <label for="inputProject">Tetikasa</label>
                                <input type="text" class="form-control" required="required" value="<c:out value='${Foundraiser.project}' />"id="inputProject" name="project" placeholder="Ny tetikasa kasainao anangonanan vola">
                            </div>
                            <div class="row col-md-8">
                            <div class="form-group col-md-4">
                                <label for="inputCity">Laharan'ny karatra visa</label>
                                <input type="number" class="form-control" id="visa" name="visa" required="required"  value="<c:out value='${Foundraiser.founderVisa}' />"><span class="fa-credit-card"></span>
                            </div>
                            </div>


                            <button type="submit" class="btn btn-primary col-md-5"><span class='icon-check' style="size: 100px;"></span></button>
                        </form>
                    </div>
                </div>
              
                                
            </div>
        </div>
                <!-- Modernizr JS -->
                <script src="resources/js/modernizr-2.6.2.min.js"></script>


                <script src="resources/js/jquery.min.js"></script>
                <!-- jQuery Easing -->
                <script src="resources/js/jquery.easing.1.3.js"></script>
                <!-- Bootstrap -->
                <script src="resources/js/bootstrap.min.js"></script>
                <!-- Waypoints -->
                <script src="resources/js/jquery.waypoints.min.js"></script>
                <script src="resources/js/sticky.js"></script>
                <!-- Main JS -->
                <script src="resources/js/main.js"></script>
                
                 <script>
            const button = document.querySelector('button');

            button.addEventListener('click', event => {
                // button.innerHTML = `Merci`;
                window.confirm("Bienvenu dans notre comunauté");
            });
        </script>
                </body>
                </html>
