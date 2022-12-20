<%-- 
    Document   : visaPayment
    Created on : 10 mars 2022, 00:41:58
    Author     : Arotiana's
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Fandoavam-bola amin'ny karatra Visa</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="resources/font-awesome/css/font-awesome.min.css" />


    </head>
    <body>

        <div class="container">

            <div class="page-header">
                <h1>Misaotra betsaka<small>Ankasitrahanay tanteraka ny fanomezanao</small></h1>
            </div>

            <!-- Credit Card Payment Form - START -->

            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-md-4 col-md-offset-4">
                        <div class="panel panel-default" >
                            <div class="panel-heading">
                                <div class="row">
                                    <h3 class="text-center">Payment Details</h3>
                                    <img class="img-responsive cc-img" src="resources/images/creditcardicons.png">
                                </div>
                            </div>
                            <div class="panel-body">
                                <form role="form" action="<%= request.getContextPath()%>/insert" method="post" >
                                    <div class="row">

                                        <div class="col-xs-12">
                                            <div class="form-group">
                                                <label>TETIKASA</label>
                                                <div class="input-group">
                                                    <select class="form-control" style="border-radius: inherit" id="project" name="project">
                                                        <optgroup class="select-item">
                                                            <option value="water"> Water Project</option>
                                                            <option value="chloth"> Chlothing</option>
                                                            <option value="medic">  Medical</option>
                                                        </optgroup>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12">
                                            <div class="form-group">
                                                <label>LELAVOLA</label>
                                                <div class="input-group">
                                                    <input type="number" class="form-control" placeholder="write here the amount of your gift" id="montant"  name="montant" required="required" value="<c:out value='${Donateur.montant}' />" />
                                                    <span class="input-group-addon"><span class="fa fa-money"></span></span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <label>LAHARAN'NY KARATRA </label>
                                                    <div class="input-group">
                                                        <input type="number" class="form-control" placeholder="Valid Card Number" value="<c:out value='${Donateur.visa}' />"  id="visa" name="visa" required="required"/>
                                                        <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-7 col-md-7">
                                                <div class="form-group">
                                                    <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                                    <input id="month" name="month" type="month" class="form-control"  name="month" placeholder="MM / YY" />
                                                </div>
                                            </div>
                                            <div class="col-xs-5 col-md-5 pull-right">
                                                <div class="form-group">
                                                    <label>CV CODE</label>
                                                    <input type="number" class="form-control" placeholder="CVC" name="cvc" id="cvc"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <label>TOMPON'NY KARATRA</label>
                                                    <input type="text" class="form-control" placeholder="Card Owner Names-anaran'ny tompon'ny karatra" value="<c:out value='${Donateur.nom}' />" name="name" id="name" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <div class="form-group">
                                                    <label>MAIL(Mandatory)</label>
                                                    <input type="text" class="form-control" placeholder="mail" value="<c:out value='${Donateur.email}' />" name="mail"  id="mail"/>
                                                    <p>Mba ahafahanay mandefa tatitra any aminao dia soraty eto ny mailaka</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-xs-12">

                                                <button  id="submit" type="submit" class="btn btn-warning btn-lg btn-block" data-toggle="modal" data-target="#exampleModal" >Process payment/ Handoa vola</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>                    
                            </div>
                        </div>
                    </div>

                </div>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Mamerina ny fisaorana</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <h4> Alefan'ny Visa international any aminao ny rosia</h4>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss='modal'>Close</button>
                               
                            </div>
                        </div>
                    </div>
                </div>

                <style>
                    .cc-img {
                        margin: 0 auto;
                    }
                </style>
                <!-- Credit Card Payment Form - END -->

            </div>
        </div>

        <script type="text/javascript" src="resources/js/jquery.min.js"></script>
        <script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
      
    </body>
</html>
