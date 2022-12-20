<%-- 
    Document   : AdminStatus
    Created on : 10 mars 2022, 00:31:19
    Author     : Arotiana's
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>User Management Application</title>
        <link rel="stylesheet" type="text/css" href="resources/dataTable/datatables.min.css">
        <link rel="stylesheet" href="resources/css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="resources/css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="resources/css/bootstrap.css">
        <!-- Superfish -->
        <link rel="stylesheet" href="resources/css/superfish.css">

        <link rel="stylesheet" href="resources/css/style.css">
    </head>
    <body>
  <div class="header-top">
                    <div class="container">
                        <div class="desc animate-box">
                            <h3 style="color: white">Administration des donateurs</h3>
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
                    <div class="container">
                        <div class="nav-header">
                            <h1 id="fh5co-logo">Liste des donateurs</h1>
                    
                        </div>
                    </div>
                </header>

        <br>

        <div class="row">
            <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

            <div class="container">
              
                <hr>
                <div class="container text-left">

                    
                </div>
                <br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Numero carte Visa</th>
                            <th>Nom</th>
                            <th>Email</th>
                            <th>Montant du don</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--   for (Todo todo: todos) {  -->
                        <c:forEach var="Donateur" items="${listDonateur}">

                            <tr>
                                <td><c:out value="${Donateur.visa}" /></td>
                                <td><c:out value="${Donateur.nom}" /></td>
                                <td><c:out value="${Donateur.mail}" /></td>
                                <td><c:out value="${Donateur.montant}" /></td>
                                <td><a href="edit?visa=<c:out value='${Donateur.visa}' />">Editer</a>
                                    &nbsp;&nbsp;&nbsp;&nbsp; <a
                                        href="delete?visa=<c:out value='${Donateur.visa}' />">Supprimer</a></td>
                            </tr>
                        </c:forEach>
                        <!-- } -->
                    </tbody>

                </table>
            </div>
        </div>
        <script src="resources/dataTable/datatables.min.js"></script>
    </body>
</html>
