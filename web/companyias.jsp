<%-- 
    Document   : companyias
    Created on : 12-may-2024, 20:24:31
    Author     : Dani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Compa&ntilde;ias</title>
        <%@include file="utils/importaciones.jsp" %>
    </head>
    <body>
        <%-- Notificaciones TODO--%>
        <%@include file="utils/notificaciones.jsp" %>
        <%-- navBar --%>
        <%@include file="utils/navBar.jsp" %>
        <%-- navLat --%>
        <%@include file="utils/navLateral.jsp" %>
        <!-- pageContent -->
        <section class="full-width pageContent">
            <section class="full-width header-well">
                <div class="full-width header-well-icon">
                    <i class="zmdi zmdi-balance"></i>
                </div>
                <div class="full-width header-well-text">
                    <p class="text-condensedLight">
                        TODO: descripcion
                    </p>
                </div>
            </section>
            <div class="full-width divider-menu-h"></div>
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                    <div class="full-width panel mdl-shadow--2dp">
                        <div class="full-width panel-tittle bg-primary text-center tittles">
                            Nueva Compa&ntilde;ia                        
                        </div>
                        <div class="full-width panel-content">
                            <form>
                                <h5 class="text-condensedLight">Datos Compa&ntilde;ias</h5>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="number" pattern="-?[0-9]*(\.[0-9]+)?" id="DNICompany">
                                    <label class="mdl-textfield__label" for="DNICompany">DNI</label>
                                </div>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" pattern="-?[A-Za-z0-9áéíóúÁÉÍÓÚ ]*(\.[0-9]+)?" id="NameCompany">
                                    <label class="mdl-textfield__label" for="NameCompany">Nombre</label>
                                </div>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" id="addressCompany">
                                    <label class="mdl-textfield__label" for="addressCompany">Direcc´&iacute;</label>
                                </div>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="email" id="emailCompany">
                                    <label class="mdl-textfield__label" for="emailCompany">E-mail</label>
                                </div>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="text" id="urlCompany">
                                    <label class="mdl-textfield__label" for="urlCompany">Web</label>
                                </div>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="tel" pattern="-?[0-9+()- ]*(\.[0-9]+)?" id="phoneCompany">
                                    <label class="mdl-textfield__label" for="phoneCompany">Telefono</label>
                                </div>
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <input class="mdl-textfield__input" type="tel" pattern="-?[0-9+()- ]*(\.[0-9]+)?" id="faxCompany">
                                    <label class="mdl-textfield__label" for="faxCompany">Fax</label>
                                </div>
                                <p class="text-center">
                                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addCompany">
                                        <i class="zmdi zmdi-plus"></i>
                                    </button>
                                <div class="mdl-tooltip" for="btn-addCompany">A&ntilde;adir Compa&ntilde;ia</div>
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
