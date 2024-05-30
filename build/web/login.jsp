<%-- 
    Document   : login
    Created on : 12-may-2024, 19:16:01
    Author     : Dani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/sweetalert2.css">
        <link rel="stylesheet" href="css/material.min.css">
        <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
        <script src="js/material.min.js" ></script>
        <script src="js/sweetalert2.min.js" ></script>
        <script src="js/jquery.mCustomScrollbar.concat.min.js" ></script>
        <script src="js/main.js" ></script>
    </head>
    <body class="cover">
        <div class="container-login">
            <p class="text-center" style="font-size: 80px;">
                <i class="zmdi zmdi-account-circle"></i>
            </p>
            <p class="text-center text-condensedLight">Entrar en tu cuenta</p>
            <s:form action="home.jsp" method="POST">
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <s:textfield class="mdl-textfield__input" id="userName"/>
                    <label class="mdl-textfield__label" for="userName">Usuario</label>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <s:textfield class="mdl-textfield__input" type="password" id="pass"/>
                    <label class="mdl-textfield__label" for="pass">Password</label>
                </div>
                <s:submit type="submit" id="SingIn"  class="mdl-button mdl-js-button mdl-js-ripple-effect" style="color: #3F51B5; float:right;"/>
            </s:form>
        </div>
    </body>
</html>
