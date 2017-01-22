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
<style>
    #img2 > img {
        filter: gray; /* IE6-9 */
        -webkit-filter: grayscale(1); /* Google Chrome, Safari 6+ & Opera 15+ */
        -webkit-box-shadow: 0px 2px 6px 2px rgba(0, 0, 0, 0.75);
        -moz-box-shadow: 0px 2px 6px 2px rgba(0, 0, 0, 0.75);
        box-shadow: 0px 2px 6px 2px rgba(0, 0, 0, 0.75);
        margin-bottom: 20px;
    }

    #img2 > img:hover {
        filter: none; /* IE6-9 */
        -webkit-filter: grayscale(0); /* Google Chrome, Safari 6+ & Opera 15+ */
    }
</style>
<body>
<jsp:include page="../../WEB-INF/structure/header.jsp"/>
<div class="container">
    <div class="row">
        <p id="img2" class="col-md-3 col-sm-3 col-xs-6"><img class="img-responsive" src="../../img/im1.jpg" width="300"
                                                             height="200"/></p>
        <p id="img2" class="col-md-3 col-sm-3 col-xs-6"><img class="img-responsive" src="../../img/im2.jpg" width="300"
                                                             height="200"/></p>
        <p id="img2" class="col-md-3 col-sm-4 col-xs-6"><img class="img-responsive" src="../../img/im3.jpg" width="300"
                                                             height="200"/></p>
        <p id="img2" class="col-md-3 col-sm-4 col-xs-6"><img class="img-responsive" src="../../img/im4.jpg" width="300"
                                                             height="200"/></p>
    </div>
    <div class="row">
        <p id="img2" class="col-md-3 col-sm-4 col-xs-6"><img class="img-responsive" src="../../img/im5.jpg" width="300"
                                                             height="200"/></p>
        <p id="img2" class="col-md-3 col-sm-4 col-xs-6"><img class="img-responsive" src="../../img/im6.jpg" width="300"
                                                             height="200"/></p>
        <p id="img2" class="col-md-3 col-sm-4 col-xs-6"><img class="img-responsive" src="../../img/im7.jpg" width="300"
                                                             height="200"/></p>
        <p id="img2" class="col-md-3 col-sm-4 col-xs-6"><img class="img-responsive" src="../../img/im8.jpg" width="300"
                                                             height="200"/></p>
    </div>
    <div class="row">
        <p id="img2" class="col-md-3 col-sm-4 col-xs-6"><img class="img-responsive" src="../../img/im9.jpg" width="300"
                                                             height="200"/></p>
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