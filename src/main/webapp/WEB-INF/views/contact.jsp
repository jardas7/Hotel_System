<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Hotelový systém">
    <meta name="author" content="Jaromír Hnik, Lenka Folprechtová">
    <link rel="icon" href="../../img/ico.png">
    <title>Hotelový systém</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../../Scripts/jquery.unobtrusive-ajax.min.js"></script>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="../../WEB-INF/structure/header.jsp"/>
<div class="container">
    <br/>
    <div class="row">
        <div class="col-md-8">
            <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d41004.07576495917!2d15.758170449999993!3d50.03469145000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x470dc94b239307b5%3A0x12d59894ccf624ae!2sPardubice%2C+Czech+Republic!5e0!3m2!1sen!2sus!4v1434989997683"></iframe>
        </div>
        <div class="col-md-4">
            <h3>Kde Nás Najdete</h3>
            <p>
                MAGNUM PALACE<br>Pardubice, Třída Míru 2800<br>
            </p>
            <p>
                <i class="fa fa-phone"></i>
                <abbr title="Telefon"></abbr>: 775410414
            </p>
            <p>
                <i class="fa fa-envelope-o"></i>
                <abbr title="Email"></abbr>: <a href="mailto:jaromir.hnik@gmail.com">jaromir.hnik@gmail.com</a>
            </p>
            <p>
                <i class="fa fa-clock-o"></i>
                <abbr title="Hours"></abbr>: Pondělí - Pátek: 9:00 až 17:00
            </p>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-lg-12">
            <h2 class="page-header">A proč si vybrat právě nás?</h2>
        </div>
        <div class="col-md-4">
            <div class="media">
                <div class="pull-left">
                            <span class="fa-stack fa-2x">
                                <i class="fa fa-circle fa-stack-2x text-primary"></i>
                                <i class="fa fa-tree fa-stack-1x fa-inverse"></i>
                            </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Ochota</h4>
                    <p>Pokud budete v hotelu cokoli potřebovat, stačí oslovit personál a rád Vám pomůže.</p>
                </div>
            </div>
            <div class="media">
                <div class="pull-left">
                            <span class="fa-stack fa-2x">
                                <i class="fa fa-circle fa-stack-2x text-primary"></i>
                                <i class="fa fa-car fa-stack-1x fa-inverse"></i>
                            </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Pozice</h4>
                    <p>Jelikož jsme téměř ve středu města, dostanete se všude do pár minut.</p>
                </div>
            </div>
            <div class="media">
                <div class="pull-left">
                            <span class="fa-stack fa-2x">
                                <i class="fa fa-circle fa-stack-2x text-primary"></i>
                                <i class="fa fa-support fa-stack-1x fa-inverse"></i>
                            </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Pomoc</h4>
                    <p>I kdyby jste nebyli zákazníky hotelu rádi Vám poradíme.</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="media">
                <div class="pull-left">
                            <span class="fa-stack fa-2x">
                                <i class="fa fa-circle fa-stack-2x text-primary"></i>
                                <i class="fa fa-database fa-stack-1x fa-inverse"></i>
                            </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Cena</h4>
                    <p>Jsme nejlevnější hotelový resort v pardubickém kraji.</p>
                </div>
            </div>
            <div class="media">
                <div class="pull-left">
                            <span class="fa-stack fa-2x">
                                <i class="fa fa-circle fa-stack-2x text-primary"></i>
                                <i class="fa fa-bank fa-stack-1x fa-inverse"></i>
                            </span>
                </div>
                <div class="media-body">
                    <h4 class="media-heading">Komfort</h4>
                    <p>U nás si skutečně odpočinete a zrelaxujete se na další den.</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<jsp:include page="../../WEB-INF/structure/footer.jsp"/>
<script src="../../js/jquery.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/clean-blog.min.js"></script>
<script src="../../Scripts/bootstrap.min.js"></script>
<script src="../../Scripts/jquery.validate.js"></script>
<script src="../../Scripts/jquery.validate.unobtrusive.min.js"></script>
</html>