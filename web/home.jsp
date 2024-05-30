<%-- 
    Document   : home
    Created on : 12-may-2024, 19:29:21
    Author     : Dani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Home</title>
        <%@include file="importaciones.jsp" %>
    </head>
    <body>
        <%-- Notificaciones TODO--%>
        <%@include file="notificaciones.jsp" %>
        <%-- navBar --%>
        <%@include file="navBar.jsp" %>
        <%-- navLat --%>
        <%@include file="navLateral.jsp" %>
        <%-- pageContent --%>
        <section class="full-width pageContent">
            <section class="full-width text-center" style="padding: 40px 0;">
                <h3 class="text-center tittles">MENU R&Aacute;PIDO</h3>
                <a href="administradores.jsp">
                    <article class="full-width tile">
                        <div class="tile-text">
                            <span class="text-condensedLight">
                                2<%--<%=nAdministradores%>--%><br>
                                <small>Administradores</small>
                            </span>
                        </div>
                        <i class="zmdi zmdi-account tile-icon"></i>
                    </article>
                </a>
                <a href="clientes.jsp">
                    <article class="full-width tile">
                        <div class="tile-text">
                            <span class="text-condensedLight">
                                71<%--<%=nClientes%>--%><br>
                                <small>Clientes</small>
                            </span>
                        </div>
                        <i class="zmdi zmdi-accounts tile-icon"></i>
                    </article>
                </a>
                <a href="proveedores.jsp">
                    <article class="full-width tile">
                        <div class="tile-text">
                            <span class="text-condensedLight">
                                5<%--<%=nProveedores%>--%><br>
                                <small>Proveedores</small>
                            </span>
                        </div>
                        <i class="zmdi zmdi-truck tile-icon"></i>
                    </article>
                </a>
                <a href="categorias.jsp">
                    <article class="full-width tile">
                        <div class="tile-text">
                            <span class="text-condensedLight">
                                9<%--<%=nCategorias%>--%><br>
                                <small>Categorias</small>
                            </span>
                        </div>
                        <i class="zmdi zmdi-label tile-icon"></i>
                    </article>
                </a>
                <a href="productos.jsp">
                    <article class="full-width tile">
                        <div class="tile-text">
                            <span class="text-condensedLight">
                                121<%--<%=nProductos%>--%><br>
                                <small>Productos</small>
                            </span>
                        </div>
                        <i class="zmdi zmdi-washing-machine tile-icon"></i>
                    </article>
                </a>
                <a href="ventas.jsp">
                    <article class="full-width tile">
                        <div class="tile-text">
                            <span class="text-condensedLight">
                                47<%--<%=nVentas%>--%><br>
                                <small>Ventas</small>
                            </span>
                        </div>
                        <i class="zmdi zmdi-shopping-cart tile-icon"></i>
                    </article>
                </a>
            </section>
        </section>
    </body>
</html>
