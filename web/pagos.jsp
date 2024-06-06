<%-- 
    Document   : pagos
    Created on : 12-may-2024, 20:25:07
    Author     : Dani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Pagos</title>
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
                    <i class="zmdi zmdi-card"></i>
                </div>
                <div class="full-width header-well-text">
                    <p class="text-condensedLight">
PAGOS			</p>
                </div>
            </section>
            <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                <div class="mdl-tabs__tab-bar">
                    <a href="#tabNewPayment" class="mdl-tabs__tab is-active">Nuevo</a>
                    <a href="#tabListPayment" class="mdl-tabs__tab">LISTA</a>
                </div>
                <div class="mdl-tabs__panel is-active" id="tabNewPayment">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-primary text-center tittles">
                                    Nuevo M&eacute;todo de pago
                                </div>
                                <div class="full-width panel-content">
                                    <s:form action="addPago" method="POST">
                                        <h5 class="text-condensedLight">Datos de Pago</h5>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" key="namePayment" name="namePayment" id="NamePayment" />
                                            <label class="mdl-textfield__label" for="NamePayment">Nombre</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" key="descriptionPayment" name="descriptionPayment" id="descriptionPayment" />
                                            <label class="mdl-textfield__label" for="descriptionPayment">Descripcion</label>
                                        </div>
                                        <p class="text-center">
                                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addPayment">
                                                <i class="zmdi zmdi-plus"></i>
                                            </button>
                                        <div class="mdl-tooltip" for="btn-addPayment">Añadir pago</div>
                                        </p>
                                    </s:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mdl-tabs__panel" id="tabListPayment">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-success text-center tittles">
                                    List Payments
                                </div>
                               <div class="full-width panel-content">
                                    <s:form action="listarPagos" method="POST">
                                        <div class="mdl-list"> 
                                            <s:action name="listarPagos">
                                                <%-- Mostrar cada pago --%>
                                                <s:iterator value="pagos">
                                                    <div class="mdl-list__item mdl-list__item--two-line">
                                                        <span class="mdl-list__item-primary-content">
                                                            <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                            <span><s:property value="nombre" /></span>
                                                            <span class="mdl-list__item-sub-title"><s:property value="descripcion" /></span>
                                                            <span class="mdl-list__item-sub-title"><s:property value="id" /></span>
                                                        </span>
                                                        <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                                    </div>
                                                    <li class="full-width divider-menu-h"></li>
                                                    </s:iterator>
                                                </s:action>
                                            <input style="
                                                display: inline-block;
                                                padding: 10px 20px;
                                                font-size: 16px;
                                                font-weight: bold;
                                                color: white;
                                                background-color: rgb(63, 144, 63);
                                                border: none;
                                                border-radius: 5px;
                                                cursor: pointer;
                                                text-align: center;
                                                text-decoration: none;
                                            " 
                                            class="mdl-textfield__input" type="submit" id="mostrarLista" value="Pulse para mostrar lista de Pagos">
                                        </div>
                                    </s:form>
                                    <%-- Crear accion para buscar administrador--%>
                                    <s:form action="obtenerPagoMedianteID" method="POST">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                                            <label class="mdl-button mdl-js-button mdl-button--icon" for="searchPago">
                                                <i class="zmdi zmdi-search"></i>
                                            </label>
                                            <div class="mdl-textfield__expandable-holder">
                                                <input class="mdl-textfield__input" type="text" id="searchPago" name="id">
                                                <label class="mdl-textfield__label"></label>
                                            </div>
                                        </div>
                                    </s:form>
                                    <span class="mdl-list__item-primary-content" style="display: flex; align-items: center; margin-top: 10px;">
                                        <i class="zmdi zmdi-account mdl-list__item-avatar" style="margin-right: 10px; font-size: 24px;"></i>
                                        <div style="flex-direction: column;">
                                            <span style="font-weight: bold; font-size: 18px; color: #333;"><s:property value="pagoA.nombre" /></span>
                                            <span class="mdl-list__item-sub-title" style="color: #666; font-size: 14px;"><s:property value="pagoA.id" /></span>
                                        </div>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
