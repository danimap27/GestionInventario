<%-- 
    Document   : productos
    Created on : 12-may-2024, 20:26:48
    Author     : Dani
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Productos</title>
        <%@include file="utils/importaciones.jsp"%>
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
                    <i class="zmdi zmdi-washing-machine"></i>
                </div>
                <div class="full-width header-well-text">
                    <p class="text-condensedLight">
                        TODO: Descripcion
                    </p>
                </div>
            </section>
            <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
                <div class="mdl-tabs__tab-bar">
                    <a href="#tabNewProduct" class="mdl-tabs__tab is-active">NUEVO</a>
                    <a href="#tabListProducts" class="mdl-tabs__tab">LISTA</a>
                </div>
                <div class="mdl-tabs__panel is-active" id="tabNewProduct">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--12-col-desktop">
                            <div class="full-width panel mdl-shadow--2dp">
                                <div class="full-width panel-tittle bg-primary text-center tittles">
                                    Nuevo producto
                                </div>
                                <div class="full-width panel-content">
                                    <s:form method="POST" action="">
                                        <div class="mdl-grid">
                                            <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
                                                <h5 class="text-condensedLight">Informacion básica</h5>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" type="number" key="BarCode" id="BarCode" name="BarCode" />
                                                    <label class="mdl-textfield__label" for="BarCode">Codigo</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" key="NameProduct" id="NameProduct" name="NameProduct" />
                                                    <label class="mdl-textfield__label" for="NameProduct">Nombre</label>
                                                </div>
                                                    <%-- ARREGLAR
                                                <div class="mdl-textfield mdl-js-textfield">
                                                    <s:select cssClass="mdl-textfield__input" name="category" list="categories" headerKey="" headerValue="Seleccionar categoria" />
                                                </div>
                                                    --%>
                                                <h5 class="text-condensedLight">Stock y Precios</h5>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" type="number" key="StrockProduct" id="StrockProduct" name="StrockProduct" />
                                                    <label class="mdl-textfield__label" for="StrockProduct">Stock</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" key="PriceProduct" id="PriceProduct" name="PriceProduct" />
                                                    <label class="mdl-textfield__label" for="PriceProduct">Precio</label>
                                                </div>
                                            </div>
                                            <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--6-col-desktop">
                                                <h5 class="text-condensedLight">Proveedor, modelo y marca</h5>
                                                <%-- ARREGLAR
                                                <div class="mdl-textfield mdl-js-textfield">
                                                    <s:select cssClass="mdl-textfield__input" name="supplier" list="suppliers" headerKey="" headerValue="Seleccionar Proveedor" />
                                                </div>
                                                --%>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" key="modelProduct" id="modelProduct" name="modelProduct" />
                                                    <label class="mdl-textfield__label" for="modelProduct">Modelo</label>
                                                </div>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" key="markProduct" id="markProduct" name="markProduct" />
                                                    <label class="mdl-textfield__label" for="markProduct">Marca</label>
                                                </div>
                                                <h5 class="text-condensedLight">Otros datos</h5>
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <s:textfield cssClass="mdl-textfield__input" type="date" key="date" name="date" label=""/>
                                                    <label class="mdl-textfield__label" for="date">Fecha</label>
                                                </div>
                                                <%-- ARREGLAR
                                                <div class="mdl-textfield mdl-js-textfield">
                                                    <s:select cssClass="mdl-textfield__input" name="status" list="statuses" headerKey="" headerValue="Seleccionar estado" />
                                                </div>
                                                --%>
                                                <div class="mdl-textfield mdl-js-textfield">
                                                    <s:file cssClass="mdl-textfield__input" name="fileUpload" />
                                                </div>
                                            </div>
                                        </div>
                                        <p class="text-center">
                                            <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addProduct">
                                                <i class="zmdi zmdi-plus"></i>
                                            </button>
                                        <div class="mdl-tooltip" for="btn-addProduct">Añadir producto</div>
                                        </p>
                                    </s:form>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mdl-tabs__panel" id="tabListProducts">
                    <div class="mdl-grid">
                        <div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--12-col-desktop">
                            <form action="#">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
                                    <label class="mdl-button mdl-js-button mdl-button--icon" for="searchProduct">
                                        <i class="zmdi zmdi-search"></i>
                                    </label>
                                    <div class="mdl-textfield__expandable-holder">
                                        <input class="mdl-textfield__input" type="text" id="searchProduct">
                                        <label class="mdl-textfield__label"></label>
                                    </div>
                                </div>
                            </form>
                            <nav class="full-width menu-categories">
                                <ul class="list-unstyle text-center">
                                    <li><a href="#!">Category 1</a></li>
                                    <li><a href="#!">Category 2</a></li>
                                    <li><a href="#!">Category 3</a></li>
                                    <li><a href="#!">Category 4</a></li>
                                </ul>
                            </nav>
                            <div class="full-width text-center" style="padding: 30px 0;">
                                <div class="mdl-card mdl-shadow--2dp full-width product-card">
                                    <div class="mdl-card__title">
                                        <img src="assets/img/fontLogin.jpg" alt="product" class="img-responsive">
                                    </div>
                                    <div class="mdl-card__supporting-text">
                                        <small>Stock</small><br>
                                        <small>Category</small>
                                    </div>
                                    <div class="mdl-card__actions mdl-card--border">
                                        Product name
                                        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
                                            <i class="zmdi zmdi-more"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="mdl-card mdl-shadow--2dp full-width product-card">
                                    <div class="mdl-card__title">
                                        <img src="assets/img/fontLogin.jpg" alt="product" class="img-responsive">
                                    </div>
                                    <div class="mdl-card__supporting-text">
                                        <small>Stock</small><br>
                                        <small>Category</small>
                                    </div>
                                    <div class="mdl-card__actions mdl-card--border">
                                        Product name
                                        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
                                            <i class="zmdi zmdi-more"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="mdl-card mdl-shadow--2dp full-width product-card">
                                    <div class="mdl-card__title">
                                        <img src="assets/img/fontLogin.jpg" alt="product" class="img-responsive">
                                    </div>
                                    <div class="mdl-card__supporting-text">
                                        <small>Stock</small><br>
                                        <small>Category</small>
                                    </div>
                                    <div class="mdl-card__actions mdl-card--border">
                                        Product name
                                        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
                                            <i class="zmdi zmdi-more"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="mdl-card mdl-shadow--2dp full-width product-card">
                                    <div class="mdl-card__title">
                                        <img src="assets/img/fontLogin.jpg" alt="product" class="img-responsive">
                                    </div>
                                    <div class="mdl-card__supporting-text">
                                        <small>Stock</small><br>
                                        <small>Category</small>
                                    </div>
                                    <div class="mdl-card__actions mdl-card--border">
                                        Product name
                                        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
                                            <i class="zmdi zmdi-more"></i>
                                        </button>
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
