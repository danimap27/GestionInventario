<%-- 
    Document   : home
    Created on : 12-may-2024, 19:29:21
    Author     : Dani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home</title>
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
        <section class="full-width container-notifications">
            <div class="full-width container-notifications-bg btn-Notification"></div>
            <section class="NotificationArea">
                <div class="full-width text-center NotificationArea-title tittles">Notificaciones <i class="zmdi zmdi-close btn-Notification"></i></div>
                <a href="#" class="Notification" id="notifation-unread-1">
                    <div class="Notification-icon"><i class="zmdi zmdi-accounts-alt bg-info"></i></div>
                    <div class="Notification-text">
                        <p>
                            <i class="zmdi zmdi-circle"></i>
                            <strong>Nuevo registro</strong> 
                            <br>
                            <small>Ahota</small>
                        </p>
                    </div>
                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-unread-1">Notification as UnRead</div> 
                </a>
                <a href="#" class="Notification" id="notifation-read-1">
                    <div class="Notification-icon"><i class="zmdi zmdi-cloud-download bg-primary"></i></div>
                    <div class="Notification-text">
                        <p>
                            <i class="zmdi zmdi-circle-o"></i>
                            <strong>Nueva venta</strong> 
                            <br>
                            <small>Hace 12 minutos</small>
                        </p>
                    </div>
                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-1">Notification as Read</div>
                </a>
                <a href="#" class="Notification" id="notifation-unread-2">
                    <div class="Notification-icon"><i class="zmdi zmdi-upload bg-success"></i></div>
                    <div class="Notification-text">
                        <p>
                            <i class="zmdi zmdi-circle"></i>
                            <strong>Producto agotado</strong> 
                            <br>
                            <small>Hace 30 minutos</small>
                        </p>
                    </div>
                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-unread-2">Notificaciones por leer</div>
                </a> 
                <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-2">Notificaciones leidas</div>
                </a>
            </section>
        </section>
        <%-- navBar --%>
        <div class="full-width navBar">
            <div class="full-width navBar-options">
                <i class="zmdi zmdi-more-vert btn-menu" id="btn-menu"></i>	
                <div class="mdl-tooltip" for="btn-menu">Menu</div>
                <nav class="navBar-options-list">
                    <ul class="list-unstyle">
                        <li class="btn-Notification" id="notifications">
                            <i class="zmdi zmdi-notifications"></i>
                            <div class="mdl-tooltip" for="notifications">Notificaciones</div>
                        </li>
                        <li class="btn-exit" id="btn-exit">
                            <i class="zmdi zmdi-power"></i>
                            <div class="mdl-tooltip" for="btn-exit">LogOut</div>
                        </li>
                        <li class="text-condensedLight noLink" ><small>User Name</small></li>
                        <li class="noLink">
                            <figure>
                                <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
                            </figure>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
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
