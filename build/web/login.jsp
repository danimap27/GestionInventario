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
        <%@include file="utils/importaciones.jsp" %>
        <title>Login</title>
    </head>
    <body class="cover">
        <div class="container-login">
            <p class="text-center" style="font-size: 80px;">
                <i class="zmdi zmdi-account-circle"></i>
            </p>
            <p class="text-center text-condensedLight">Entrar en tu cuenta</p>
            <s:form action="home.jsp" method="POST">
                <s:textfield class="mdl-textfield__input" id="userName" label="Usuario"/>
                    <s:textfield class="mdl-textfield__input" type="password" id="pass"/>
                <s:submit type="submit" id="SingIn"  class="mdl-button mdl-js-button mdl-js-ripple-effect" style="color: #3F51B5; "/>
            </s:form>
        </div>
    </body>
</html>
