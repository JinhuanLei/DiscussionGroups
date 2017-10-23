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
    <%--<link href="/css/jumbotron.css" rel="stylesheet">--%>
    <link rel="stylesheet" type="text/css" href="css/cardtransisition.css" />
    <link rel="stylesheet" type="text/css" href="css/userinfer.css" />
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
        .modal P{
            color: black;
            font-size: 1em;
        }

        #infoMenu li a {
            color: #444;
        }
        /* Lazy loading background
* --------------------------------------- */

        #section0 {
            background-image: url(images/fp1.jpg);
        }
        .RbtnMargin { margin-left: 5px; }
        @font-face {
            font-family: 'iconfont';  /* project id 444600 */
            src: url('//at.alicdn.com/t/font_444600_a1bc4p99iap58kt9.eot');
            src: url('//at.alicdn.com/t/font_444600_a1bc4p99iap58kt9.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_444600_a1bc4p99iap58kt9.woff') format('woff'),
            url('//at.alicdn.com/t/font_444600_a1bc4p99iap58kt9.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_444600_a1bc4p99iap58kt9.svg#iconfont') format('svg');
        }

        .iconfont {
            font-family: "iconfont";
            font-size: 16px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
            padding-left: 0
        }
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
            <button type="button" class="btn btn-warning" onclick="{location.href='/TurnToDiscussionPage?discussion=Machine Learning'}">View The Details</button>
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
        <div>
            <ul class="nav navbar-nav">
                <li id="li3"><a href="#">Instructor</a></li>
                <li id="li4"><a href="#">Beginner</a></li>
                <li id="li5"><a href="#">Intermediate User</a></li>
                <li id="li6"><a href="#">Expert User</a></li>
                <li id="li7"><a href="#" data-toggle="modal" title="Help" data-target="#HelpModal"><i class="iconfont">&#xe697;</i></a></li>
            </ul>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <div id="downbar">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">User <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li id="manageli">
                                <a id="action-1" href="/TurnToManagePage">Manage Discussion</a>
                            </li>

                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal">Account Information</a>
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


<div class="modal fade" id="HelpModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                <h3 class="modal-title" id="lineModalLabel">Help Manual</h3>
            </div>
            <div class="modal-body">

                <p>Beginners
                    • These users are assumed to be freshmen students and they are allowed to participate only the discussion
                    for one course. Accordingly, each beginner account includes the course in which the beginner has
                    registered. For example, a beginner might have registered for “CS 120 Software Design I”; so this person
                    is allowed to search and view a discussion as well as to add a text to a discussion (text only and not
                    any image) but it must be associated with the course “CS 120 Software Design I”. Notice that a course
                    may have multiple discussions each having a different topic, and/or date and time. So a beginner may
                    participate in more than one discussion for the same course.
                    • A beginner should be able to view his/her account details which shows username and the course he/she
                    has registered in but not the password.
                    • A beginner may ask for help on how to select a discussion, to add a text or to view account details</p>
                <hr>
                <p>Intermediate users
                    • These users are assumed to be sophomores or juniors who have been around for a while and have some
                    experience in using the discussion groups. The same help facility provided to the beginners must also
                    be available for intermediate users although they might not use it often.
                    • An intermediate user is allowed to participate in more than one discussion (search and view discussions
                    as well as add text to the discussions - again text only but no image) but for only those courses in which
                    the user has registered. Consequently, their accounts must include the courses in which the user has
                    registered.
                    • An intermediate user should be able to view his/her account details to see what courses he/she has
                    registered. Again, the display should only show the username and the courses, but not the password.</p>

            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                </button>
                <h4 class="modal-title" id="myModalLabel">More About Yourself</h4>
            </div>
            <div class="modal-body">
                <center>
                    <img src="http://lorempixel.com/140/140" name="aboutme" width="140" height="140" border="0" class="img-circle"></a>
                    <h3 class="media-heading">Joe Sixpack </h3><h5><small>USA</small></h5>
                    <span><strong>Skills: </strong></span>
                    <span class="label label-warning">CS</span>
                    <span class="label label-info">AI</span>
                    <span class="label label-info">Machine Learning</span>
                    <span class="label label-success">Discrete Math</span>
                </center>
                <hr>
                <center>
                    <p class="text-left"><strong>Information: </strong></p>
                      <p>  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sem dui, tempor sit amet commodo a, vulputate vel tellus.</p>
                    <p>      </p>
                    <br>
                </center>
            </div>
            <div class="modal-footer">
                <center>
                    <button type="button" class="btn btn-default" data-dismiss="modal">I've heard enough about myself</button>
                </center>
            </div>
        </div>
    </div>
</div>


<div class="container">

    <div class="row">

        <div class="block col-md-4" id="groupname1">
            <div class="card transition" id="discussion1">

                <h2 class="transition" ></h2>
                <p> Instructor:</p>
                <br />
                <p> TimeStamps:</p>

                <div class="cta-container transition">
                    <div class="row pre-scrollable" style="height:0px; padding-bottom:50%">
                        <ul class="list-group" >
                            <li class="list-group-item"><a href="#" class="list-group-item">Join Discussion</a></li>
                            <li class="list-group-item"><a href="#" class="list-group-item">View Discussion</a></li>
                        </ul>

                    </div>
                    <!--<a href="#" class="cta">Join the group</a>-->
                </div>
                <div class="card_circle transition"></div>

            </div>
        </div>

        <div class="block col-md-4" id="groupname2">
            <div class="card transition" id="discussion2">
                <h2 class="transition" ></h2>
                <p> Instructor:</p>
                <br />
                <p> TimeStamps:</p>

                <div class="cta-container transition">
                    <div class="row pre-scrollable" style="height:0px; padding-bottom:50%">
                        <ul class="list-group" >
                            <li class="list-group-item"><a href="#" class="list-group-item">Join Discussion</a></li>
                            <li class="list-group-item"><a href="#" class="list-group-item">View Discussion</a></li>
                        </ul>

                    </div>
                    <!--<a href="#" class="cta">Join the group</a>-->
                </div>
                <div class="card_circle transition"></div>

            </div>
        </div>

        <div class="block col-md-4" id="groupname3">
            <div class="card transition" id="discussion3">
                <h2 class="transition" ></h2>
                <p> Instructor:</p>
                <br />
                <p> TimeStamps:</p>

                <div class="cta-container transition">
                    <div class="row pre-scrollable" style="height:0px; padding-bottom:50%">
                        <ul class="list-group" >
                            <li class="list-group-item"><a href="#" class="list-group-item">Join Discussion</a></li>
                            <li class="list-group-item"><a href="#" class="list-group-item">View Discussion</a></li>
                        </ul>

                    </div>
                    <!--<a href="#" class="cta">Join the group</a>-->
                </div>
                <div class="card_circle transition">

                </div>

            </div>
        </div>

    </div>
    <br /><br /><br /><br /><br /><br /><br />
    <button class="btn btn-primary pull-right RbtnMargin" type="button">View More Discussion</button>
</div>

<br>
<br> <br> <br> <br> <br>
<hr style="height:5px;border:none;border-top:5px groove skyblue;" />
<br>

<br>
<br>
<br>
Preapared By Jinhuan Lei
<script>
    $(function() {
        $.ajax(
            {
                type: "POST" ,
                url: "/LoadDiscussionData" ,
                success: function (data)
                {

                    for(var x=0; x<3;x++)
                    {
                        var eleH=$("#discussion"+(x+1)+"  h2");
//                        var eleB= $(".card_circle transition");
                        var eleP=$("#discussion"+(x+1)+" p");
//                        eleB.background="url('http://lorempixel.com/400/200/cat')";
                        var a1= document.createElement("a");

                        a1.href="/TurnToDiscussionPage?discussion="+data[x].discussionname;
                        a1.innerHTML=data[x].discussionname;
                        eleH[0].appendChild(a1);
                        eleP[0].innerHTML="Instructor: "+data[x].instructor;
                        eleP[1].innerHTML="TimeStamps: "+data[x].date;

                        eleH.trigger("create");
                    }
//                    var eleH=$("#service1 h2");
//                    var eleP=$("#service1 p");
//                    console.log(data.servicename);
//                      eleH.text(data[x].servicename);
//                      eleP[0].innerHTML=data.introduction;
                }
            })

        var username="<%=session.getAttribute("username")%>";
        var type="<%=session.getAttribute("usertype")%>";   //判断是否是admin 管理员 或user
        var typename="<%=session.getAttribute("usertypename")%>";
        var navbar=document.getElementById("downbar");
        var loginbutton=document.getElementById("submitform");
        var manageAutho=document.getElementById("manageli");   //Manage Discussion
        var eleH=$("#myModal h3");
        var eleP=$("#myModal p");
        eleH[0].innerHTML=username;
        eleP[1].innerHTML="User Major: Computer Science";
        eleP[2].innerHTML="User Type: "+typename;


        var li3=document.getElementById("li3");
        var li4=document.getElementById("li4");
        var li5=document.getElementById("li5");
        var li6=document.getElementById("li6");
        var li7=document.getElementById("li7");
        li3.style.display="none";
        li4.style.display="none";
        li5.style.display="none";
        li6.style.display="none";
        li7.style.display="none";

        console.log("username"+username+"usertype"+type);
//        if(username!="")   //exist


        if (username!="null")
        {
            var presentType= document.getElementById("li"+type);
            presentType.style.display="block";
            navbar.style.display="block";
            loginbutton.style.display="none";
//            elePa[0].innerHTML=username;
//            elePa[1].innerHTML=typename;
            if(type==3)
            {
                manageAutho.style.display="block";

            }
            else
            {
                manageAutho.style.display="none";
            }

            if(type==4||type==5)
            {
                li7.style.display="block";
            }

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