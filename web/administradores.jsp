<%-- 
    Document   : administradores
    Created on : 12-may-2024, 20:26:17
    Author     : Dani
--%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Administradores</title>
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
                    <i class="zmdi zmdi-account"></i>
                </div>
                <div class="full-width header-well-text">
                    <p class="text-condensedLight">
                        TODO: descripción
                    </p>
                </div>
            </section>
            <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                <div class="mdl-tabs__tab-bar">
                    <a href="#tabNewAdmin" class="mdl-tabs__tab is-active">NUEVO</a>
                    <a href="#tabListAdmin" class="mdl-tabs__tab">LISTA</a>
                </div>
                <div class="mdl-tabs__panel is-active" id="tabNewAdmin">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--12-col-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-primary text-center tittles">
                                    Nuevo Administrador
                                </div>
                                <div class="full-width panel-content">
                                    <s:form action="addAdministrador" method="POST">
                                        <div class="mdl-grid">
                                            <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
                                                <h5 class="text-condensedLight">Datos Administrador</h5>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" type="number" key="DNIAdmin" id="DNIAdmin" name="DNIAdmin" />
                                                    <label class="mdl-textfield__label" for="DNIAdmin">DNI</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" key="NameAdmin" id="NameAdmin" name="NameAdmin" />
                                                    <label class="mdl-textfield__label" for="NameAdmin">Nombre</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" key="LastNameAdmin" id="LastNameAdmin" name="LastNameAdmin" />
                                                    <label class="mdl-textfield__label" for="LastNameAdmin">Apellidos</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" type="tel" key="phoneAdmin" id="phoneAdmin" name="phoneAdmin" />
                                                    <label class="mdl-textfield__label" for="phoneAdmin">Telefono</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" type="email" key="emailAdmin" id="emailAdmin" name="emailAdmin" />
                                                    <label class="mdl-textfield__label" for="emailAdmin">E-mail</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" key="addressAdmin" id="addressAdmin" name="addressAdmin" />
                                                    <label class="mdl-textfield__label" for="addressAdmin">Dirección</label>
                                                </div>
                                            </div>
                                            <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
                                                <h5 class="text-condensedLight">Cuenta</h5>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" key="UserNameAdmin" id="UserNameAdmin" name="UserNameAdmin" />
                                                    <label class="mdl-textfield__label" for="UserNameAdmin">Usuario</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:password cssClass="mdl-textfield__input" key="passwordAdmin" id="passwordAdmin" name="passwordAdmin" />
                                                    <label class="mdl-textfield__label" for="passwordAdmin">Password</label>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="text-center">
                                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addAdmin">
                                                <i class="zmdi zmdi-plus"></i>
                                            </button>
                                        <div class="mdl-tooltip" for="btn-addAdmin">Añadir Administrador</div>
                                        </p>
                                    </s:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mdl-tabs__panel" id="tabListAdmin">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-success text-center tittles">
                                    Lista Administradores
                                </div>

                                <div class="full-width panel-content">
                                    <s:form action="listarAdministradores" method="POST">
                                        <div class="mdl-list"> 
                                            <s:action name="listarAdministradores">
                                                <%-- Mostrar cada administrador --%>
                                                <s:iterator value="administradores">
                                                    <div class="mdl-list__item mdl-list__item--two-line">
                                                        <span class="mdl-list__item-primary-content">
                                                            <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                            <span><s:property value="nombre" /></span>
                                                            <span class="mdl-list__item-sub-title"><s:property value="dni" /></span>
                                                        </span>
                                                        <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                                    </div>
                                                    <li class="full-width divider-menu-h"></li>
                                                    </s:iterator>
                                                </s:action>
                                            <input class="mdl-textfield__input" type="submit" id="mostrarLista" value="Pulse para mostrar lista de Administradores">
                                        </div>
                                    </s:form>
                                    <%-- Crear accion para buscar administrador--%>
                                    <s:form action="listarAdministradores" method="POST">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                                            <label class="mdl-button mdl-js-button mdl-button--icon" for="searchAdmin">
                                                <i class="zmdi zmdi-search"></i>
                                            </label>
                                            <div class="mdl-textfield__expandable-holder">
                                                <input class="mdl-textfield__input" type="text" id="searchAdmin">
                                                <label class="mdl-textfield__label"></label>
                                            </div>
                                        </div>
                                    </s:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        document.getElementById('mostrarLista').addEventListener('click', function () {
            this.style.display = 'none';
        });
    </script>       
</body>
</html>
