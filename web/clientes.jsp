<%-- 
    Document   : clientes
    Created on : 12-may-2024, 20:26:33
    Author     : Dani
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Clientes</title>
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
                    <i class="zmdi zmdi-accounts"></i>
                </div>
                <div class="full-width header-well-text">
                    <p class="text-condensedLight">
                        TODO: descripción
                    </p>
                </div>
            </section>
            <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                <div class="mdl-tabs__tab-bar">
                    <a href="#tabNewClient" class="mdl-tabs__tab is-active">NUEVO</a>
                    <a href="#tabListClient" class="mdl-tabs__tab">LISTA</a>
                </div>
                <div class="mdl-tabs__panel is-active" id="tabNewClient">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-primary text-center tittles">
                                    Nuevo Cliente
                                </div>
                                <div class="full-width panel-content">
                                    <s:form>
                                        <h5 class="text-condensedLight">Datos cliente</h5>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" type="number" key="DNIClient" id="DNIClient" name="DNIClient" />
                                            <label class="mdl-textfield__label" for="DNIClient">DNI</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" key="NameClient" id="NameClient" name="NameClient" />
                                            <label class="mdl-textfield__label" for="NameClient">Nombre</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" key="LastNameClient" id="LastNameClient" name="LastNameClient" />
                                            <label class="mdl-textfield__label" for="LastNameClient">Last Name</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" key="addressClient1" id="addressClient1" name="addressClient1" />
                                            <label class="mdl-textfield__label" for="addressClient1">Direccion</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" key="TODO" id="TODO" name="TODO" />
                                            <label class="mdl-textfield__label" for="TODO">TODO</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" type="tel" key="phoneClient" id="phoneClient" name="phoneClient" />
                                            <label class="mdl-textfield__label" for="phoneClient">Telefono</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" type="email" key="emailClient" id="emailClient" name="emailClient" />
                                            <label class="mdl-textfield__label" for="emailClient">E-mail</label>
                                        </div>
                                        <p class="text-center">
                                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addClient">
                                                <i class="zmdi zmdi-plus"></i>
                                            </button>
                                        <div class="mdl-tooltip" for="btn-addClient">Añadir cliente</div>
                                        </p>
                                    </s:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mdl-tabs__panel" id="tabListClient">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-success text-center tittles">
                                    Lista Clientes
                                </div>
                                <div class="full-width panel-content">
                                    <%-- Crear accion para buscar Clientes--%>
                                    <form action="buscarClienteAction">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                                            <label class="mdl-button mdl-js-button mdl-button--icon" for="searchClient">
                                                <i class="zmdi zmdi-search"></i>
                                            </label>
                                            <div class="mdl-textfield__expandable-holder">
                                                <input class="mdl-textfield__input" type="text" id="searchClient">
                                                <label class="mdl-textfield__label"></label>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="mdl-list">
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                <span>1. Nombre Cliente</span>
                                                <span class="mdl-list__item-sub-title">DNI</span>
                                            </span>
                                            <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                        </div>
                                        <li class="full-width divider-menu-h"></li>
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                <span>2. Nombre Cliente</span>
                                                <span class="mdl-list__item-sub-title">DNI</span>
                                            </span>
                                            <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                        </div>
                                        <li class="full-width divider-menu-h"></li>
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                <span>3. Nombre Cliente</span>
                                                <span class="mdl-list__item-sub-title">DNI</span>
                                            </span>
                                            <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                        </div>
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
