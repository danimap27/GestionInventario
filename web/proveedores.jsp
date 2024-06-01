<%-- 
    Document   : proveedores
    Created on : 12-may-2024, 20:24:54
    Author     : Dani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Productos</title>
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
                    <i class="zmdi zmdi-truck"></i>
                </div>
                <div class="full-width header-well-text">
                    <p class="text-condensedLight">
                        TODO: Descripcion
                    </p>
                </div>
            </section>
            <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                <div class="mdl-tabs__tab-bar">
                    <a href="#tabNewProvider" class="mdl-tabs__tab is-active">NUEVO</a>
                    <a href="#tabListProvider" class="mdl-tabs__tab">LISTA</a>
                </div>
                <div class="mdl-tabs__panel is-active" id="tabNewProvider">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-primary text-center tittles">
                                    Nuevo Proveedor
                                </div>
                                <div class="full-width panel-content">
                                    <form>
                                        <h5 class="text-condensedLight">Datos Proveedor</h5>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input class="mdl-textfield__input" type="number" pattern="-?[0-9]*(\.[0-9]+)?" id="DNIProvider">
                                            <label class="mdl-textfield__label" for="DNIProvider">DNI</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input class="mdl-textfield__input" type="text" pattern="-?[A-Za-z0-9 ]*(\.[0-9]+)?" id="NameProvider">
                                            <label class="mdl-textfield__label" for="NameProvider">Nombre</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input class="mdl-textfield__input" type="text" id="addressProvider">
                                            <label class="mdl-textfield__label" for="addressProvider">Direccion</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input class="mdl-textfield__input" type="tel" pattern="-?[0-9+()- ]*(\.[0-9]+)?" id="phoneProvider">
                                            <label class="mdl-textfield__label" for="phoneProvider">Numero</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input class="mdl-textfield__input" type="email" id="emailProvider">
                                            <label class="mdl-textfield__label" for="emailProvider">E-mail</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input class="mdl-textfield__input" type="text" id="webProvider">
                                            <label class="mdl-textfield__label" for="webProvider">Web</label>
                                        </div>
                                        <p class="text-center">
                                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addProvider">
                                                <i class="zmdi zmdi-plus"></i>
                                            </button>
                                        <div class="mdl-tooltip" for="btn-addProvider">A&ntilde;adir proveedor</div>
                                        </p>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mdl-tabs__panel" id="tabListProvider">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-success text-center tittles">
                                    Lista Proveedores
                                </div>
                                <div class="full-width panel-content">
                                    <form action="#">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                                            <label class="mdl-button mdl-js-button mdl-button--icon" for="searchProvider">
                                                <i class="zmdi zmdi-search"></i>
                                            </label>
                                            <div class="mdl-textfield__expandable-holder">
                                                <input class="mdl-textfield__input" type="text" id="searchProvider">
                                                <label class="mdl-textfield__label"></label>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="mdl-list">
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-truck mdl-list__item-avatar"></i>
                                                <span>1. Nombre proveedor</span>
                                                <span class="mdl-list__item-sub-title">DNI</span>
                                            </span>
                                            <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                        </div>
                                        <li class="full-width divider-menu-h"></li>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
