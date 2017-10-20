<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Discussion Group</title>
    <meta name="author" content="Alvaro Trigo Lopez" />
    <meta name="description" content="fullPage full-screen normal scrolling with autoScrolling." />
    <meta name="keywords" content="fullpage,jquery,demo,screen,fullscreen,lazyload,lazy,passive,load,src,data-src,media" />
    <meta name="Resource-type" content="Document" />

    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="css/examples.css" />
    <link href="/css/jumbotron.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/cardtransisition.css" />
    <style>
        /* Style for our header texts
* --------------------------------------- */

        body {
            background: url(images/background1.JPG);
        }

        h1 {
            font-size: 5em;
            font-family: arial, helvetica;
            color: #444;
            margin: 0;
        }

        .intro p {
            color: #444;
        }
        /* Centered texts in each section
* --------------------------------------- */

        .section {
            text-align: center;
        }
        /* Bottom menu
* --------------------------------------- */

        #infoMenu li a {
            color: #444;
        }
        /* Lazy loading background
* --------------------------------------- */

        #section0 {
            background-image: url(images/fp1.jpg);
        }
        .RbtnMargin { margin-left: 5px; }
    </style>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>

    <script type="text/javascript" src="js/scrolloverflow.js"></script>

    <!--<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">-->
    <!--<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>-->
    <!--<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>-->

    <script type="text/javascript" src="js/jquery.fullPage.js"></script>
    <script type="text/javascript" src="js/examples.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $('#fullpage').fullpage({
                autoScrolling: false,
                fitToSection: false
            });
        });
    </script>

</head>

<body>

<div id="fullpage">
    <div class="section " id="section0">
        <div class="slide">
            <!--<img data-srcset="img/fp1.jpg"/>-->
            <h1>Join Our Group</h1>
            <p>Discussion Group for Machine Learning (20++ members)</p>
            <br />
            <button type="button" class="btn btn-warning">View The Details</button>
        </div>
    </div>

</div>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">UWL Discussion Group</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <div id="downbar">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">User <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a id="action-1" href="#">Manager</a>
                            </li>

                            <li>
                                <a href="#">Setting</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="/logoutFuntion">Log Out</a>
                            </li>

                        </ul>
                    </li>
                </ul>
            </div>
            <div id="submitform">
                <form class="navbar-form navbar-right" id="loginButton" action="/TurnToLoginPage">

                    <button type="submit" class="btn btn-success">Sign in</button>

                </form>
            </div>
        </div>

    </div>
</nav>

<div class="container">

    <div class="row">

        <div class="block col-md-4">
            <div class="card transition">
                <h2 class="transition">Kasi' Group</h2>
                <p> Instructor:</p>
                <br />
                <p> TimeStamps:</p>

                <div class="cta-container transition">
                    <div class="row pre-scrollable" style="height:0px; padding-bottom:50%">
                        <ul class="list-group" >
                            <li class="list-group-item"><a href="#" class="list-group-item">Entry 1</a></li>
                            <li class="list-group-item"><a href="#" class="list-group-item">Entry 2</a></li>
                            <li class="list-group-item"><a href="#" class="list-group-item">Entry 3</a></li>
                            <li class="list-group-item">
                                <span class="badge">new</span> <a href="#" class="list-group-item">Entry 4</a>
                            </li>

                        </ul>
                        <!--



                        <a href="#" class="list-group-item">Entry 3</a>
                        <a href="#" class="list-group-item">Entry 4</a>-->
                    </div>
                    <!--<a href="#" class="cta">Join the group</a>-->
                </div>
                <div class="card_circle transition"></div>

            </div>
        </div>

        <div class="block col-md-4">
            <div class="card transition">
                <h2 class="transition">Awesome Headline</h2>
                <p>Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla.</p>
                <div class="cta-container transition">

                </div>
                <div class="card_circle transition"></div>

            </div>
        </div>

        <div class="block col-md-4">
            <div class="card transition">
                <h2 class="transition">Awesome Headline</h2>
                <p>Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla.</p>
                <div class="cta-container transition">

                </div>
                <div class="card_circle transition"></div>

            </div>
        </div>

    </div>
    <br /><br /><br /><br /><br /><br /><br />
    <button class="btn btn-primary pull-right RbtnMargin" type="button">View More Discussion</button>
</div>

<br>
<br> <br> <br> <br> <br>
<hr style="height:10px;border:none;border-top:10px groove skyblue;" />
<br>

<br>
<br>
<br>
Preapared By Jinhuan Lei
<script>
    $(function() {
        var username="<%=session.getAttribute("username")%>";
        var type="<%=session.getAttribute("usertype")%>";   //判断是否是admin 管理员 或user
        var navbar=document.getElementById("downbar");
        var loginbutton=document.getElementById("submitform");
        console.log("username"+username+(username!="null"));
//        if(username!="")   //exist
        if (username!="null")
        {
            navbar.style.display="block";
            loginbutton.style.display="none";
        }
        else
        {

            navbar.style.display="none";
            loginbutton.style.display="block";
        }

    });

</script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>