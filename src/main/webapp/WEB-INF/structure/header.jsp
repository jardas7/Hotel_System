<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../../Scripts/jquery.unobtrusive-ajax.min.js"></script>

    <link href="../../css/bootstrap.min.css" rel="stylesheet">

    <link href="../../css/modern-business.css" rel="stylesheet">

    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <p><img src="../../img/log.png" width="200" height="45" /></p>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a class="blog-nav-item active" href="/">Domů</a>
                </li>
                <li>
                    <a class="blog-nav-item active" href="/galerie">Galerie</a>
                </li>
                <li>
                    <a class="blog-nav-item" href="/kontakt">Kontakt</a>
                </li>
                <li>
                    <a class="blog-nav-item" href="/prihlaseni">Login</a>
                </li>
                <!--
               @if (@User.Identity.Name != string.Empty)
               {
               <li>
                   <a class="blog-nav-item" href="@Url.Action("Index", "Books")">Výpis Rezervací</a>
               </li>
               }
               @if (@User.IsInRole("administrator"))
               {
               <li>
                   <a class="blog-nav-item" href="@Url.Action("Index", "Uzivatele")">Správa uživatelů</a>
               </li>
               }
               @if (@User.Identity.Name == string.Empty)
               {
               <li>
                   <a class="blog-nav-item" href="@Url.Action("Logout", "Login")">Přihlášení</a>
               </li>
               }
                -->
            </ul>
        </div>
    </div>
</nav>
<br />

</html>