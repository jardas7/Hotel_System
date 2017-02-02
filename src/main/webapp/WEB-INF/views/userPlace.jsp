<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Hotelový systém">
    <meta name="author" content="Jaromír Hnik, Lenka Folprechtová">
    <link rel="icon" href="../../img/ico.png">
    <title>Hotelový systém</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<style>
    #imaginary_container {
        margin-top: 20%; /* Don't copy this */
    }

    .stylish-input-group .input-group-addon {
        background: white !important;
    }

    .stylish-input-group .form-control {
        border-right: 0;
        box-shadow: 0 0 0;
        border-color: #ccc;
    }

    .stylish-input-group button {
        border: 0;
        background: transparent;
    }

</style>

<body>
<jsp:include page="../../WEB-INF/structure/header.jsp"/>
<div class="container">
    <c:choose>

    <c:when test="${mode == 'MODE_USERS' || mode == 'MODE_RESERVATIONS'}">
        <div class="row">
            <div class="col-lg-12">
                <img class="img-responsive" src="../../img/search.png" alt="searching" style="margin:auto">
            </div>
        </div>
        <br/>
        <c:if test="${mode == 'MODE_USERS'}">
            <table class="table table-striped table-hover table-condensed">
                <thead>
                <tr>

                    <th>ID uživatele</th>
                    <th>Jméno Uživatele</th>
                    <th>Příjmení Uživatele</th>
                    <th>Login uživatele</th>
                    <th>Heslo Uživatele</th>
                    <th>Role Uživatele</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.surname}</td>
                        <td>${user.login}</td>
                        <td>${user.password}</td>
                        <td>${user.role}</td>
                        <td><a href="update-user?id=${user.id}"><span class="glyphicon glyphicon-pencil"></span></a>
                        </td>
                        <td><a href="delete-user?id=${user.id}"
                               onclick="return confirm('Opravdu chcete smazat uživatele ${user.name} ${user.surname} ?')"><span
                                class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a href="/add-user" class="btn btn-default pull-right">Vytvoření nového uživatele</a>
            <div class="clearfix"></div>
        </c:if>
        <c:if test="${mode == 'MODE_RESERVATIONS'}">
            <table class="table table-striped table-hover table-condensed">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Jméno Zákazníka</th>
                    <th>Pokoj</th>
                    <th>Email Zákazníka</th>
                    <th>Telefon</th>
                    <th>Poznámka</th>
                    <th>Příjezd</th>
                    <th>Odjezd</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="reservation" items="${reservations}">
                    <tr>
                        <td>${reservation.id}</td>
                        <td>${reservation.name}</td>
                        <td>${reservation.type}</td>
                        <td><a href="mailto:${reservation.email}">${reservation.email}</a></td>
                        <td>${reservation.tel}</td>
                        <td>${reservation.description}</td>
                        <td>${reservation.date1}</td>
                        <td>${reservation.date2}</td>
                        <td><a href="update-reservation?id=${reservation.id}"><span
                                class="glyphicon glyphicon-pencil"></span></a>
                        </td>
                        <td><a href="delete-reservation?id=${reservation.id}"
                               onclick="return confirm('Opravdu chcete smazat rezervaci zákazníka ${reservation.name} ?')"><span
                                class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a href="/add-reservation" class="btn btn-default pull-right">Vytvoření nové rezervace</a>
            <div class="clearfix"></div>
        </c:if>
    </c:when>

    <c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE' || mode == 'MODE_NEWRESERVATION' || mode == 'MODE_UPDATERESERVATION'}">
    <c:if test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
        <c:if test="${mode == 'MODE_NEW'}">
            <h2 class="text-center" style="margin-bottom: 4%">Vytvoření uživatele</h2>
            <img class="img-responsive" src="../../img/acc.png" alt="adding_acc" style="margin:auto" width="128"
                 height="128">
            <hr>
            <form class="form-horizontal" data-toggle="validator" action="save-user" accept-charset="UTF-8">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" name="id" value="${userEntity.id}"/>
                <div class="form-group has-feedback">
                    <label for="inputName" class="control-label">Jméno</label>
                    <input type="text" class="form-control" id="inputName" placeholder="Zadejte jméno nového uživatele"
                           name="name" value="${userEntity.name}" required>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback">
                    <label for="inputName" class="control-label">Příjmení</label>
                    <input type="text" class="form-control" id="inputName2"
                           placeholder="Zadejte příjmení nového uživatele"
                           name="surname" value="${userEntity.surname}" required>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback">
                    <label for="inputName" class="control-label">Login</label>
                    <input type="text" pattern="[A-Za-z]{3,}" class="form-control" id="inputLogin"
                           placeholder="Zadejte login uživatele ve tvaru 'příjmjm'. Př.: 'hnikja'"
                           name="login" value="${userEntity.login}" required>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback">
                    <label for="inputName" class="control-label">Heslo</label>
                    <input type="text" pattern=".{6,}" class="form-control" id="inputPassword"
                           placeholder="Zadejte heslo uživatele, které bude mít nejméně 6 znaků"
                           name="password" value="${userEntity.password}" required>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group">
                    <div class="radio">
                        <label>
                            <input type="radio" name="role" value="ROLE_ADMIN">
                            Administrátor
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="role" value="ROLE_USER" checked>
                            Zaměstnanec
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default pull-right">Potvrdit</button>
                    </div>
                </div>
            </form>
        </c:if>
        <c:if test="${mode == 'MODE_UPDATE'}">
            <h2 class="text-center" style="margin-bottom: 4%">Editace uživatele</h2>
            <img class="img-responsive" src="../../img/info.png" alt="adding_acc" style="margin:auto">
            <hr>
            <form class="form-horizontal" data-toggle="validator" action="saveUpdate-user" accept-charset="UTF-8">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" name="id" value="${user.id}"/>
                <div class="form-group has-feedback">
                    <label for="inputName" class="control-label">Jméno</label>
                    <input type="text" class="form-control" id="inputName" placeholder="Zadejte jméno nového uživatele"
                           name="name" value="${user.name}" required>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback">
                    <label for="inputName" class="control-label">Příjmení</label>
                    <input type="text" class="form-control" id="inputName2"
                           placeholder="Zadejte příjmení nového uživatele"
                           name="surname" value="${user.surname}" required>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback">
                    <label for="inputName" class="control-label">Login</label>
                    <input type="text" pattern="[A-Za-z]{3,}" class="form-control" id="inputLogin"
                           placeholder="Zadejte login uživatele ve tvaru 'příjmjm'. Př.: 'hnikja'"
                           name="login" value="${user.login}" required>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback">
                    <label for="inputName" class="control-label">Heslo</label>
                    <input type="text" pattern=".{6,}" class="form-control" id="inputPassword"
                           placeholder="Zadejte heslo uživatele, které bude mít nejméně 6 znaků"
                           name="password" value="${user.password}" required>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group">
                    <div class="radio">
                        <label>
                            <input type="radio" name="role" value="ROLE_ADMIN">
                            Administrátor
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="role" value="ROLE_USER" checked>
                            Zaměstnanec
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default pull-right">Potvrdit</button>
                    </div>
                </div>
            </form>
        </c:if>

    </c:if>
    <c:if test="${mode == 'MODE_NEWRESERVATION' || mode == 'MODE_UPDATERESERVATION'}">
    <c:if test="${mode == 'MODE_NEWRESERVATION'}">
    <h2 class="text-center" style="margin-bottom: 4%">Vytvoření rezervace</h2>
    <img class="img-responsive" src="../../img/acc.png" alt="adding_acc" style="margin:auto" width="128" height="128">
    <hr>
    <form class="form-horizontal" method="POST" data-toggle="validator" action="save-reservation">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </c:if>
        <c:if test="${mode == 'MODE_UPDATERESERVATION'}">
        <h2 class="text-center" style="margin-bottom: 4%">Editace rezervace</h2>
        <img class="img-responsive" src="../../img/info.png" alt="adding_acc" style="margin:auto">
        <hr>
        <form class="form-horizontal" method="POST" data-toggle="validator" action="saveUpdate-reservation">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </c:if>
            <input type="hidden" name="id" value="${reservation.id}"/>
            <div class="form-group has-feedback">
                <label for="inputName" class="control-label">Jméno</label>
                <input type="text" class="form-control" id="inputName3" placeholder="Zadejte jméno zákazníka"
                       name="name" value="${reservation.name}" pattern="[A-Za-zščřžýáíé\s]{4,}" required>
                <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
            </div>
            <div class="form-group has-feedback">
                <label for="inputName" class="control-label">Email</label>
                <input type="email" class="form-control" id="inputEmail" placeholder="Zadejte e-mail zákazníka"
                       name="email" value="${reservation.email}"
                       pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
                       required>
                <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
            </div>
            <div class="form-group has-feedback">
                <label for="inputName" class="control-label">Telefon</label>
                <input type="text" class="form-control" pattern="[0-9]{9,}" id="inputTel"
                       placeholder="Zadejte telefon zákazníka" value="${reservation.tel}"
                       name="tel" required>
                <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
            </div>
            <div class="form-group has-feedback">
                <label for="inputName" class="control-label">Popis Rezervace</label>
                <input type="text" class="form-control" id="inputDesc"
                       placeholder="Zadejte případný popis rezervace"
                       name="description" value="${reservation.description}">
                <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
            </div>
            <div class="form-group has-feedback">
                <label for="inputName" class="control-label">Datum příjezdu</label>
                <div class="input-group input-append date" id="datePicker">
                    <input type="text" class="form-control" name="date1" id="inputDate1"
                           placeholder="Zadejte datum příjezdu zákazníka" value="${reservation.date1}" required/>
                    <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar">
                                <span aria-hidden="true"></span>
                            </span></span>
                </div>

            </div>
            <div class="form-group has-feedback">
                <label for="inputName" class="control-label">Datum odjezdu</label>
                <div class="input-group input-append date" id="datePicker2">
                    <input type="text" class="form-control" name="date2" id="inputDate2"
                           placeholder="Zadejte datum odjezdu zákazníka" value="${reservation.date2}" required/>
                    <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar">
                                <span aria-hidden="true"></span>
                            </span></span>
                </div>
            </div>
            <div class="form-group">
                <div class="radio">
                    <label>
                        <input type="radio" name="type" value="1" checked>
                        Jednolůžkový
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="type" value="2">
                        Dvoulůžkový
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="type" value="3">
                        Apartmán
                    </label>
                </div>
                <div class="radio">
                    <label>
                        <input type="radio" name="type" value="4">
                        Prezidentské
                    </label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default pull-right">Potvrdit</button>
                </div>
            </div>
        </form>
        </c:if>
        </c:when>
        </c:choose>
</div>
<jsp:include page="../../WEB-INF/structure/footer.jsp"/>
</body>
<script src="../../js/jquery-3.1.1.js"></script>
<script src="../../js/jquery-3.1.1.min.js"></script>
<script src="../../js/bootstrap.js"></script>
<script src="../../js/validator.js"></script>
<script src="../../js/validator.min.js"></script>
<link rel="stylesheet"
      href="${pageContext.request.contextPath}//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css"/>
<link rel="stylesheet"
      href="${pageContext.request.contextPath}//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css"/>

<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

<script>
    $(document).ready(function () {
        $.fn.datepicker.dates['cs'] = {
            days: ["Neděle", "Pondělí", "Úterý", "Středa", "Čtvretk", "Pátek", "Sobota"],
            daysShort: ["Ne", "Po", "Út", "St", "Čt", "Pá", "So"],
            daysMin: ["Ne", "Po", "Út", "St", "Čt", "Pá", "So"],
            months: ["Leden", "Únor", "Březen", "Duben", "Květen", "Červen", "Červenec", "Srpen", "Září", "Říjen", "Listopad", "Prosinec"],
            monthsShort: ["Led", "Úno", "Bře", "Dub", "Kvě", "Čvn", "Čvnc", "Srp", "Zář", "Říj", "List", "Pro"],
            today: "Dnes",
            clear: "Vymazat",
            format: "mm/dd/yyyy",
            titleFormat: "MM yyyy", /* Leverages same syntax as 'format' */
            weekStart: 0
        }

        $('#datePicker')

            .datepicker({
                format: 'dd.mm.yyyy',
                language: 'cs'

            })


        $('#datePicker2')
            .datepicker({
                format: 'dd.mm.yyyy',
                language: 'cs'
            })

    });

</script>