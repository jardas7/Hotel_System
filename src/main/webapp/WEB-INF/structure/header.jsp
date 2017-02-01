<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <script src="../../js/jquery-3.1.1.js"></script>
    <script src="../../js/jquery-3.1.1.min.js"></script>
    <script src="../../js/bootstrap.js"></script>
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
                    <a class="blog-nav-item active" href="/Galerie">Galerie</a>
                </li>
                <li>
                    <a class="blog-nav-item" href="/Kontakt">Kontakt</a>
                </li>
                <sec:authorize access="hasAnyRole('ADMIN','USER')">
                <li>
                    <a class="blog-nav-item" href="/Rezervace">Rezervace</a>
                </li>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ADMIN')">
                <li>
                    <a class="blog-nav-item" href="/Uzivatele">Uživatelé</a>
                </li>
                </sec:authorize>
                <sec:authorize access="isAnonymous()">
                    <li>
                        <a class="blog-nav-item" href="/login">Přihlášení</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ADMIN', 'USER')">
                    <li>
                        <a class="blog-nav-item" href="/logout">Odhlásit se  (<sec:authentication property="principal.username"/>)</a>
                    </li>
                </sec:authorize>
            </ul>
        </div>
    </div>
</nav>
<br />

</html>