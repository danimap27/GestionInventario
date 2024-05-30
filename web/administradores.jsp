<%-- 
    Document   : administradores
    Created on : 12-may-2024, 20:26:17
    Author     : Dani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Administradores</title>
        <%@include file="importaciones.jsp" %>
    </head>
    <body>
        <%-- Notificaciones TODO--%>
        <%@include file="notificaciones.jsp" %>
        <%-- navBar --%>
        <%@include file="navBar.jsp" %>
        <%-- navLat --%>
        <%@include file="navLateral.jsp" %>
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
                                    <form>
                                        <div class="mdl-grid">
                                            <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
                                                <h5 class="text-condensedLight">Datos Administrador</h5>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" type="number" pattern="-?[0-9]*(\.[0-9]+)?" id="DNIAdmin">
                                                    <label class="mdl-textfield__label" for="DNIAdmin">DNI</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" type="text" pattern="-?[A-Za-záéíóúÁÉÍÓÚ ]*(\.[0-9]+)?" id="NameAdmin">
                                                    <label class="mdl-textfield__label" for="NameAdmin">Nombre</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" type="text" pattern="-?[A-Za-záéíóúÁÉÍÓÚ ]*(\.[0-9]+)?" id="LastNameAdmin">
                                                    <label class="mdl-textfield__label" for="LastNameAdmin">Apellidos</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" type="tel" pattern="-?[0-9+()- ]*(\.[0-9]+)?" id="phoneAdmin">
                                                    <label class="mdl-textfield__label" for="phoneAdmin">Telefono</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" type="email" id="emailAdmin">
                                                    <label class="mdl-textfield__label" for="emailAdmin">E-mail</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" type="text" id="addressAdmin">
                                                    <label class="mdl-textfield__label" for="addressAdmin">Direci&oacute;n</label>
                                                </div>
                                            </div>
                                            <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
                                                <h5 class="text-condensedLight">Cuenta</h5>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" type="text" pattern="-?[A-Za-z0-9áéíóúÁÉÍÓÚ]*(\.[0-9]+)?" id="UserNameAdmin">
                                                    <label class="mdl-textfield__label" for="UserNameAdmin">Usuario</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" type="password" id="passwordAdmin">
                                                    <label class="mdl-textfield__label" for="passwordAdmin">Password</label>
                                                </div>
                                                <h5 class="text-condensedLight">Elige Avatar</h5>
                                                <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-1">
                                                    <input type="radio" id="option-1" class="mdl-radio__button" name="options" value="avatar-male.png">
                                                    <img src="assets/img/avatar-male.png" alt="avatar" style="height: 45px; width: 45px; ">
                                                    <span class="mdl-radio__label">Avatar 1</span>
                                                </label>
                                                <br><br>
                                                <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-2">
                                                    <input type="radio" id="option-2" class="mdl-radio__button" name="options" value="avatar-female.png">
                                                    <img src="assets/img/avatar-female.png" alt="avatar" style="height: 45px; width: 45px; ">
                                                    <span class="mdl-radio__label">Avatar 2</span>
                                                </label>
                                                <br><br>
                                                <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-3">
                                                    <input type="radio" id="option-3" class="mdl-radio__button" name="options" value="avatar-male2.png">
                                                    <img src="assets/img/avatar-male2.png" alt="avatar" style="height: 45px; width: 45px; ">
                                                    <span class="mdl-radio__label">Avatar 3</span>
                                                </label>
                                                <br><br>
                                                <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="option-4">
                                                    <input type="radio" id="option-4" class="mdl-radio__button" name="options" value="avatar-female2.png">
                                                    <img src="assets/img/avatar-female2.png" alt="avatar" style="height: 45px; width: 45px; ">
                                                    <span class="mdl-radio__label">Avatar 4</span>
                                                </label>
                                            </div>
                                        </div>
                                        <p class="text-center">
                                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addAdmin">
                                                <i class="zmdi zmdi-plus"></i>
                                            </button>
                                        <div class="mdl-tooltip" for="btn-addAdmin">A&ntilde;adir Administrador</div>
                                        </p>
                                    </form>
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
                                    <%-- Crear accion para buscar administrador--%>
                                    <form action="buscarAdministradorAction">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                                            <label class="mdl-button mdl-js-button mdl-button--icon" for="searchAdmin">
                                                <i class="zmdi zmdi-search"></i>
                                            </label>
                                            <div class="mdl-textfield__expandable-holder">
                                                <input class="mdl-textfield__input" type="text" id="searchAdmin">
                                                <label class="mdl-textfield__label"></label>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="mdl-list">
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                <span>1. Nombre administrador</span>
                                                <span class="mdl-list__item-sub-title">DNI</span>
                                            </span>
                                            <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                        </div>
                                        <li class="full-width divider-menu-h"></li>
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                <span>2. Nombre administrador</span>
                                                <span class="mdl-list__item-sub-title">DNI</span>
                                            </span>
                                            <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                        </div>
                                        <li class="full-width divider-menu-h"></li>
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                <span>3. Nombre administrador</span>
                                                <span class="mdl-list__item-sub-title">DNI</span>
                                            </span>
                                            <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                        </div>
                                        <li class="full-width divider-menu-h"></li>
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                <span>4. Nombre administrador</span>
                                                <span class="mdl-list__item-sub-title">DNI</span>
                                            </span>
                                            <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                        </div>
                                        <li class="full-width divider-menu-h"></li>
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                <span>5. Nombre administrador</span>
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
