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
                                    <s:form action="listarCategorias" method="POST">
                                        <div class="mdl-list"> 
                                            <s:action name="listarCategorias">
                                                <%-- Mostrar cada administrador --%>
                                                <s:iterator value="categorias">
                                                    <div class="mdl-list__item mdl-list__item--two-line">
                                                        <span class="mdl-list__item-primary-content">
                                                            <i class="zmdi zmdi-account mdl-list__item-avatar"></i>
                                                            <span><s:property value="nombre" /></span>
                                                            <span class="mdl-list__item-sub-title"><s:property value="descripcion" /></span>
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
                                            class="mdl-textfield__input" type="submit" id="mostrarLista" value="Pulse para mostrar lista de Categorias">
                                        </div>
                                    </s:form>
                                    <%-- Crear accion para buscar administrador--%>
                                    <s:form action="obtenerCategoriaPorNombre" method="POST">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                                            <label class="mdl-button mdl-js-button mdl-button--icon" for="searchCate">
                                                <i class="zmdi zmdi-search"></i>
                                            </label>
                                            <div class="mdl-textfield__expandable-holder">
                                                <input class="mdl-textfield__input" type="text" id="searchCate" name="nombre">
                                                <label class="mdl-textfield__label"></label>
                                            </div>
                                        </div>
                                    </s:form>
                                    <span class="mdl-list__item-primary-content" style="display: flex; align-items: center; margin-top: 10px;">
                                        <i class="zmdi zmdi-account mdl-list__item-avatar" style="margin-right: 10px; font-size: 24px;"></i>
                                        <div style="flex-direction: column;">
                                            <span style="font-weight: bold; font-size: 18px; color: #333;"><s:property value="categoriaA.nombre" /></span>
                                            <span class="mdl-list__item-sub-title" style="color: #666; font-size: 14px;"><s:property value="categoriaA.descripcion" /></span>
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