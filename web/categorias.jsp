<%-- 
    Document   : categorias
    Created on : 12-may-2024, 20:25:59
    Author     : Dani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Categorias</title>
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
                    <i class="zmdi zmdi-label"></i>
                </div>
                <div class="full-width header-well-text">
                    <p class="text-condensedLight">
                        TODO: descripción
                    </p>
                </div>
            </section>
            <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                <div class="mdl-tabs__tab-bar">
                    <a href="#tabNewCategory" class="mdl-tabs__tab is-active">NUEVA</a>
                    <a href="#tabListCategory" class="mdl-tabs__tab">LISTA</a>
                </div>
                <div class="mdl-tabs__panel is-active" id="tabNewCategory">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-primary text-center tittles">
                                    Nueva categoria
                                </div>
                                <div class="full-width panel-content">
                                    <s:form action="addCategoria" method="POST">
                                        <h5 class="text-condensedLight">Datos Categoria</h5>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" key="NameCategory" id="NameCategory" name="NameCategory" />
                                            <label class="mdl-textfield__label" for="NameCategory">Nombre</label>
                                        </div>
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <s:textfield cssClass="mdl-textfield__input" key="descriptionCategory" id="descriptionCategory" name="descriptionCategory" />
                                            <label class="mdl-textfield__label" for="descriptionCategory">Descripción</label>
                                        </div>
                                        <p class="text-center">
                                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addCategory">
                                                <i class="zmdi zmdi-plus"></i>
                                            </button>
                                        <div class="mdl-tooltip" for="btn-addCategory">Añadir categoria</div>
                                        </p>
                                    </s:form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mdl-tabs__panel" id="tabListCategory">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-success text-center tittles">
                                    Lista categorias
                                </div>
                                <div class="full-width panel-content">
                                    <%-- Crear accion para buscar categorias--%>
                                    <form action="buscarCategoriasAction">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                                            <label class="mdl-button mdl-js-button mdl-button--icon" for="searchCategory">
                                                <i class="zmdi zmdi-search"></i>
                                            </label>
                                            <div class="mdl-textfield__expandable-holder">
                                                <input class="mdl-textfield__input" type="text" id="searchCategory">
                                                <label class="mdl-textfield__label"></label>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="mdl-list">
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-label mdl-list__item-avatar"></i>
                                                <span>1. Nombre categoria</span>
                                                <span class="mdl-list__item-sub-title">Descripcion</span>
                                            </span>
                                            <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                        </div>
                                        <li class="full-width divider-menu-h"></li>
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-label mdl-list__item-avatar"></i>
                                                <span>2. Nombre categoria</span>
                                                <span class="mdl-list__item-sub-title">Descripcion</span>
                                            </span>
                                            <a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
                                        </div>
                                        <li class="full-width divider-menu-h"></li>
                                        <div class="mdl-list__item mdl-list__item--two-line">
                                            <span class="mdl-list__item-primary-content">
                                                <i class="zmdi zmdi-label mdl-list__item-avatar"></i>
                                                <span>3. Nombre categoria</span>
                                                <span class="mdl-list__item-sub-title">Descripcion</span>
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