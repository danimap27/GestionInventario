<%-- 
    Document   : navBar
    Created on : 30-may-2024, 12:09:56
    Author     : Dani
--%>

<!--NAV bar-->
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
