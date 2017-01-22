<%@page contentType="text/html" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../Scripts/jquery-1.10.2.min.js"></script>
    <script src="../../Scripts/jquery.unobtrusive-ajax.min.js"></script>
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/modern-business.css" rel="stylesheet">
    <link href="../../font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<style>
    body, html {
        height: 100%;
        background-image: url("../../css/bck.jpg");
    }

    .card-container.card {
        max-width: 350px;
        padding: 40px 40px;
    }

    .btn {
        font-weight: 700;
        height: 36px;
        -moz-user-select: none;
        -webkit-user-select: none;
        user-select: none;
        cursor: default;
    }

    .card {
        background-color: #F7F7F7;
        /* just in case there no content*/
        padding: 20px 25px 30px;
        margin: 0 auto 25px;
        margin-top: 50px;
        /* shadows and rounded borders */
        -moz-border-radius: 2px;
        -webkit-border-radius: 2px;
        border-radius: 2px;
        -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    }

    .profile-img-card {
        width: 96px;
        height: 96px;
        margin: 0 auto 10px;
        display: block;
        -moz-border-radius: 50%;
        -webkit-border-radius: 50%;
        border-radius: 50%;
    }

    .profile-name-card {
        font-size: 16px;
        font-weight: bold;
        text-align: center;
        margin: 10px 0 0;
        min-height: 1em;
    }

    .reauth-email {
        display: block;
        color: #404040;
        line-height: 2;
        margin-bottom: 10px;
        font-size: 14px;
        text-align: center;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        -moz-box-sizing: border-box;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
    }

    .form-signin #inputEmail,
    .form-signin #inputPassword {
        direction: ltr;
        height: 44px;
        font-size: 16px;
    }

    .form-signin input[type=email],
    .form-signin input[type=password],
    .form-signin input[type=text],
    .form-signin button {
        width: 100%;
        display: block;
        margin-bottom: 10px;
        z-index: 1;
        position: relative;
        -moz-box-sizing: border-box;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
    }

    .form-signin .form-control:focus {
        border-color: rgb(104, 145, 162);
        outline: 0;
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgb(104, 145, 162);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgb(104, 145, 162);
    }

    .btn.btn-signin {
        /*background-color: #4d90fe; */
        background-color: rgb(104, 145, 162);
        /* background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));*/
        padding: 0px;
        font-weight: 700;
        font-size: 14px;
        height: 36px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
        border-radius: 3px;
        border: none;
        -o-transition: all 0.218s;
        -moz-transition: all 0.218s;
        -webkit-transition: all 0.218s;
        transition: all 0.218s;
    }

    .btn.btn-signin:hover,
    .btn.btn-signin:active,
    .btn.btn-signin:focus {
        background-color: rgb(12, 97, 33);
    }

    .forgot-password {
        color: rgb(104, 145, 162);
    }

    .forgot-password:hover,
    .forgot-password:active,
    .forgot-password:focus {
        color: rgb(12, 97, 33);
    }
</style>
<script type="text/javascript">
    $(document).ready(function () {
        // DOM ready

        // Test data
        /*
         * To test the script you should discomment the function
         * testLocalStorageData and refresh the page. The function
         * will load some test data and the loadProfile
         * will do the changes in the UI
         */
        // testLocalStorageData();
        // Load profile if it exits
        loadProfile();
    });

    function getLocalProfile(callback) {
        var profileImgSrc = localStorage.getItem("PROFILE_IMG_SRC");
        var profileName = localStorage.getItem("PROFILE_NAME");
        var profileReAuthEmail = localStorage.getItem("PROFILE_REAUTH_EMAIL");

        if (profileName !== null
            && profileReAuthEmail !== null
            && profileImgSrc !== null) {
            callback(profileImgSrc, profileName, profileReAuthEmail);
        }
    }

    function loadProfile() {
        if (!supportsHTML5Storage()) {
            return false;
        }
        // we have to provide to the callback the basic
        // information to set the profile
        getLocalProfile(function (profileImgSrc, profileName, profileReAuthEmail) {
            //changes in the UI
            $("#profile-img").attr("src", profileImgSrc);
            $("#profile-name").html(profileName);
            $("#reauth-email").html(profileReAuthEmail);
            $("#inputEmail").hide();
            $("#remember").hide();
        });
    }


    function supportsHTML5Storage() {
        try {
            return 'localStorage' in window && window['localStorage'] !== null;
        } catch (e) {
            return false;
        }
    }


    function testLocalStorageData() {
        if (!supportsHTML5Storage()) {
            return false;
        }
        localStorage.setItem("PROFILE_IMG_SRC", "//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120");
        localStorage.setItem("PROFILE_NAME", "César Izquierdo Tello");
        localStorage.setItem("PROFILE_REAUTH_EMAIL", "oneaccount@gmail.com");
    }
</script>

<body>
<jsp:include page="../../WEB-INF/structure/header.jsp"/>
<br/>
<div>
    <java:if test="">
        <p style="text-align: center"><b> @TempData["error"] </b></p>
    </java:if>
    @using (Html.BeginForm("SignIn", "Login", FormMethod.Post, new {@class = "form-signin"}))
    {
    <div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card"
                 src="http://media.cargocollective.com/1/0/16982/headerimg/Jxnblk-ShortHair-Circle.png"/>
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin">
                <label for="inputEmail" class="sr-only">Uživatelské jméno</label>
                <input type="text" id="inputEmail" class="form-control" placeholder="Uživatelské jméno" name="login"
                       required=autofocus>
                <label for="inputPassword" class="sr-only">Heslo</label>
                <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Heslo"
                       required>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Přihlásit se</button>
            </form>
        </div>
    </div>
    }
    <jsp:include page="../../WEB-INF/structure/footer.jsp"/>
</div>
</body>
</html>
