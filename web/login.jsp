<%-- 
    Document   : login
    Created on : 12-may-2024, 19:16:01
    Author     : Dani
--%>

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
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <s:textfield cssClass="mdl-textfield__input" key="userName" id="userName" name="userName" />
                    <label class="mdl-textfield__label" for="userName">Usuario</label>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                    <s:password cssClass="mdl-textfield__input" key="pass" id="pass" name="pass" />
                    <label class="mdl-textfield__label" for="pass">Password</label>
                </div>
                <button id="SignIn" class="mdl-button mdl-js-button mdl-js-ripple-effect" style="color: #3F51B5; float:right;">
                    Sign in <i class="zmdi zmdi-mail-send"></i>
                </button>
            </s:form>
        </div>
    </body>
</html>
