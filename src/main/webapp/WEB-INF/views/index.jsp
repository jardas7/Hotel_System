<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Hotelový systém">
    <meta name="author" content="Jaromír Hnik, Lenka Folprechtová">
    <link rel="icon" href="../../img/ico.png">
    <title>Hotelový systém</title>
    <script src="../../js/jquery-3.1.1.js"></script>
    <script src="../../js/jquery-3.1.1.min.js"></script>
    <script src="../../js/bootstrap.js"></script>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="../../WEB-INF/structure/header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <br/>
            <br/>
            <img class="img-responsive" src="../../img/hot.jpg" alt="hotel">
        </div>
        <div class="col-md-6">
            <h2><b>O našem hotelu</b></h2>
            <p>Hotel Pardubice je situován v přímém centru Pardubic. Nabízíme kvalitní ubytování v Pardubicích s
                nadstandardními službami. V hotelu je vybudováno celkem 13 pokojů, (jedno - dvoulůžkových, apartmán,
                prezidentské apartmá) s venkovním posezením a možností grilování v letních měsících. Celková kapacita
                hotelu Pardubic je 32lůžek. Všechny pokoje jsou vybaveny vlastním sociálním zařízením se sprchovým
                koutem, mikrovlnou troubou, troubou, bezdrátovým internetem WI-FI, ledničkou, mrazákem a rychlovarnou
                konvicí.</p>
            <p>S cenou za ubytování od 250,- Kč/noc se řadíme mezi nejlevnější ubytování v Pardubicích. Nabízíme také
                možnost dlouhodobého ubytování za výhodné ceny. Nabídka našeho ubytování je bezkonkurenční ve smyslu
                kombinace kvality ubytování, lokality v Pardubicích a ceny. Dál už hledat nemusíte.</p>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header">Nabízené pokoje</h2>
        </div>
        <div class="col-lg-12">
            <ul id="myTab" class="nav nav-tabs nav-justified">
                <li class="active">
                    <a href="#service-one" data-toggle="tab"><i class="fa fa-tree"></i> Jednolůžkový</a>
                </li>
                <li class="">
                    <a href="#service-two" data-toggle="tab"><i class="fa fa-car"></i> Dvoulůžkový</a>
                </li>
                <li class="">
                    <a href="#service-three" data-toggle="tab"><i class="fa fa-support"></i> Apartmán</a>
                </li>
                <li class="">
                    <a href="#service-four" data-toggle="tab"><i class="fa fa-database"></i> Prezidentské</a>
                </li>
            </ul>
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="service-one">
                    <br/>
                    <div class="col-md-6">
                        <p>Jednolůžkový pokoj nabízí:</p>
                        <ul>
                            <li>
                                <strong>Komfort při cestách</strong>
                            </li>
                            <li>Jedno lůžko</li>
                            <li>Koupelna</li>
                            <li>Cena 250,- za noc</li>
                        </ul>
                        <p>Ideální pro samotáře na cestách.</p>
                        </br>

                    </div>
                    <div class="col-md-6">
                        <img class="img-responsive" src="../../img/11.JPG" width="480" height="480" alt="obrazek1">
                    </div>
                </div>
                <div class="tab-pane fade" id="service-two">
                    <br/>
                    <div class="col-md-6">
                        <p>Dvoulůžkový pokoj nabízí:</p>
                        <ul>
                            <li>
                                <strong>Pro pár ideální</strong>
                            </li>
                            <li>Dvě lůžka</li>
                            <li>Koupelna</li>
                            <li>Cena 500,- za noc</li>
                        </ul>
                        <p>Ideální pro zamilovaný pár.</p>
                    </div>
                    <div class="col-md-6">
                        <img class="img-responsive" src="../../img/22.jpg" width="480" height="480" alt="obrazek2">
                    </div>
                </div>
                <div class="tab-pane fade" id="service-three">
                    <br/>
                    <div class="col-md-6">
                        <p>Apartmán nabízí:</p>
                        <ul>
                            <li>
                                <strong>Luxus pro nenáročné</strong>
                            </li>
                            <li>Čtyři lůžka</li>
                            <li>2 Koupelny</li>
                            <li>Bar + Servis</li>
                            <li>Cena 1000,- za noc</li>
                        </ul>
                        <p>Ideální podnikatele na cestách.</p>
                    </div>
                    <div class="col-md-6">
                        <img class="img-responsive" src="../../img/33.jpg" width="480" height="480" alt="obrazek3">
                    </div>
                </div>
                <div class="tab-pane fade" id="service-four">
                    <br/>
                    <div class="col-md-6">
                        <p>Prezidentské apartmá nabízí:</p>
                        <ul>
                            <li>
                                <strong>Nevšední luxus</strong>
                            </li>
                            <li>Šest lůžek</li>
                            <li>3 Koupelny</li>
                            <li>Krásný výhled</li>
                            <li>Bar + Obsluha</li>
                            <li>Cena 3500,- za noc</li>
                        </ul>
                        <p>To nejlepší co máme.</p>
                    </div>
                    <div class="col-md-6">
                        <img class="img-responsive" src="../../img/44.jpg" width="480" height="480" alt="obrazek4">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header">Náš tým</h2>
        </div>
        <div class="col-md-4 text-center">
            <div class="thumbnail">
                <img class="img-responsive" src="../../img/ja.jpg" alt="Jarda">
                <div class="caption">
                    <h3>
                        Jaromír Hnik<br>
                        <small>Admin</small>
                    </h3>
                    <p>Admin, může editovat, mazat, přidávat.</p>
                    <ul class="list-inline">
                        <li>
                            <a href="https://www.facebook.com/jardas7"><i class="fa fa-2x fa-facebook-square"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-4 text-center">
            <div class="thumbnail">
                <img class="img-responsive" src="../../img/fim.jpg" alt="Fimka">
                <div class="caption">
                    <h3>
                        FIM UHK<br>
                        <small>Škola</small>
                    </h3>
                    <p>Škola, která nás to naučila.</p>
                    <ul class="list-inline">
                        <li>
                            <a href="https://www.facebook.com/fim.uhk.cz"><i
                                    class="fa fa-2x fa-facebook-square"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-4 text-center">
            <div class="thumbnail">
                <img class="img-responsive" src="../../img/len.jpg" alt="Lenka">
                <div class="caption">
                    <h3>
                        Lenka Folprechtová<br>
                        <small>Zaměstnanec</small>
                    </h3>
                    <p>Zaměstnanec, může přidávat a prohlížet.</p>
                    <ul class="list-inline">
                        <li>
                            <a href="https://www.facebook.com/lenka.folprechtova"><i
                                    class="fa fa-2x fa-facebook-square"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
<jsp:include page="../../WEB-INF/structure/footer.jsp"/>
</html>


