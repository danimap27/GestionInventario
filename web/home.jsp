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
        <%@include file="utils/importaciones.jsp" %>
    </head>
    <body>
        <%-- Notificaciones TODO--%>
        <%@include file="utils/notificaciones.jsp" %>
        <%-- navBar --%>
        <%@include file="utils/navBar.jsp" %>
        <%-- navLat --%>
        <%@include file="utils/navLateral.jsp" %>
        <%-- pageContent --%>

        <section class="full-width pageContent">
            <section class="full-width text-center" style="padding: 40px 0;">
                <h3 class="text-center tittles">MENU R&Aacute;PIDO</h3>
                <a href="administradores.jsp">
                    <article class="full-width tile">
                        <div class="tile-text">
                            <span class="text-condensedLight">
                                <span id="contadorAdministradores" class="text-condensedLight">Cargando...</span><br>
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
                                <span id="contadorClientes" class="text-condensedLight">Cargando...</span><br>
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
                                <span id="contadorProveedores" class="text-condensedLight">Cargando...</span><br>
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
                                <span id="contadorCategorias" class="text-condensedLight">Cargando...</span><br>
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
                                <span id="contadorProductos" class="text-condensedLight">Cargando...</span><br>
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
                                <span id="contadorVentas" class="text-condensedLight">Cargando...</span><br>
                                <small>Ventas</small>
                            </span>
                        </div>
                        <i class="zmdi zmdi-shopping-cart tile-icon"></i>
                    </article>
                </a>
            </section>
        </section>
                <script>
    function obtenerConteo(tabla, spanId) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                document.getElementById(spanId).innerText = this.responseText;
            }
        };
        xhttp.open("GET", "ContarElementosServlet?tabla=" + tabla, true);
        xhttp.send();
        
    }

    window.onload = function() {
        obtenerConteo("Administrador", "contadorAdministradores");
        obtenerConteo("Cliente", "contadorClientes");
        obtenerConteo("Proveedor", "contadorProveedores");
        obtenerConteo("Categoria", "contadorCategorias");
        obtenerConteo("Producto", "contadorProductos");
        obtenerConteo("Venta", "contadorVentas");
    };
</script>
    </body>
</html>
