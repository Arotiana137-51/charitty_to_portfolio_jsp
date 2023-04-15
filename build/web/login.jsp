<%-- 
    Document   : login
    Created on : 23 mars 2022, 22:52:16
    Author     : Arotiana's
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0048)https://colorlib.com/etc/lf/Login_v15/index.html -->
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="noindex, follow">


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


    </head>
    <body >

        <div class="container" style="align-content: center;">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header"><h3>Login pour les administrateurs</h3></div>

                        <div class="card-body">
                            <form method= "POST" action="<%=request.getContextPath()%>/listDonateur">


                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-lab el text-md-right">Votre addresse Email</label>

                                    <div class="col-md-6">
                                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" id="email" value="<c:out value='${Foundraiser.mail}' />" required autocomplete="email" autofocus>


                                        <span class="invalid-feedback" role="alert" type="hidden">
                                            <strong></strong>
                                        </span>

                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="password" class="col-md-4 col-form-label text-md-right">Votre mot de passe</label>

                                    <div class="col-md-6">
                                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" id="password" value="<c:out value='${Foundraiser.password}' />" required autocomplete="current-password">


                                        <span class="invalid-feedback" role="alert" type="hidden">
                                            <strong></strong>
                                        </span>

                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-6 offset-md-4">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="remember" id="remember">

                                            <label class="form-check-label" for="remember">
                                                Se souvenir de moi
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row mb-0">
                                    <div class="col-md-8 offset-md-4">
                                        <button type="submit" class="btn btn-primary  btn_login">
                                            Login
                                        </button>

                                    </div>
                                </div>
                            </form>

                            <button type="button" class="btn btn-info" href="<%= request.getContextPath()%>/index" onclick="red()" >
                                Annuler
                            </button>
<!--data-toggle="modal" data-target="#exampleModal"-->
                        </div>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel"></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <h4> Accès refusé</h4>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss='modal'>Close</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="resources/js/jquery.min.js">

        </script>


        <script>
            function red() {
                document.location = "<%= request.getContextPath()%>/index; %>"
            }

            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'UA-23581568-13');
            $(document).ready(function () {
                $(".btn_login").click(function () {
                    var mail = $("#email").val();
                    var pass = $("#password").val();
                    $.ajax({
                        type: 'ajax',
                        url: 'Foundraising/loginTest',
                        data: {
                            mail: mail,
                            pass: pass
                        },
                        method: 'get',
                        datatype: JSON,
                        async: false,
                        success: function (data) {
                            var obj = jQuery.parseJSON(data);
                            alert(obj['reponse']);
                        },
                        error: function (data) {
                           // alert(data);
                        }
                    });
                });
            });
        </script>
        <script defer="" src="./Login V15_files/v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon="{&quot;rayId&quot;:&quot;6f07907769f50532&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2021.12.0&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>


    </body>
    <html>
