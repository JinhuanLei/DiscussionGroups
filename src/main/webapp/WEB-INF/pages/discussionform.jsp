<!doctype html>
<html>

<head>
    <meta charset="UTF-8">
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Form Validation</title>

    <meta name="description" content="Free Admin Template Based On Twitter Bootstrap 3.x">
    <meta name="author" content="">

    <meta name="msapplication-TileColor" content="#5bc0de"/>
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png"/>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">


    <link href="build/toastr.css" rel="stylesheet"/>


    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="assets/css/main.css">

    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="assets/lib/metismenu/metisMenu.css">

    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="assets/lib/onoffcanvas/onoffcanvas.css">

    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="assets/lib/animate.css/animate.css">


    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.theme.min.css">
    <link rel="stylesheet"
          href="//cdnjs.cloudflare.com/ajax/libs/jQuery-Validation-Engine/2.6.4/validationEngine.jquery.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!--For Development Only. Not required -->
    <script>
        less = {
            env: "development",
            relativeUrls: false,
            rootpath: "/assets/"
        };
    </script>
    <link rel="stylesheet" href="assets/css/style-switcher.css">
    <link rel="stylesheet/less" type="text/css" href="assets/less/theme.less">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>
    <style>
        @font-face {
            font-family: 'iconfont';  /* project id 444600 */
            src: url('//at.alicdn.com/t/font_444600_k3gt73afnx4aq0k9.eot');
            src: url('//at.alicdn.com/t/font_444600_k3gt73afnx4aq0k9.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_444600_k3gt73afnx4aq0k9.woff') format('woff'),
            url('//at.alicdn.com/t/font_444600_k3gt73afnx4aq0k9.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_444600_k3gt73afnx4aq0k9.svg#iconfont') format('svg');
        }

        .iconfont {
            font-family: "iconfont";
            font-size: 16px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
            padding-left: 0;
        }


    </style>
</head>

<body class="  ">
<div class="bg-dark dk" id="wrap">
    <div id="top">
        <!-- .navbar -->
        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container-fluid">

                <a href="index.html" class="navbar-brand"><img src="images/Logo.png" alt=""></a>

                <!-- Brand and toggle get grouped for better mobile display -->
                <header class="navbar-header">

                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </header>

                <div class="topnav">
                    <div class="btn-group">
                        <a href="/TurnToMainPage" data-toggle="tooltip" data-original-title="Exit"
                           data-placement="bottom" class="btn btn-metis-1 btn-sm">
                            <i class="iconfont">&#xe673;</i>
                        </a>
                    </div>

                </div>

                <!--<div class="collapse navbar-collapse navbar-ex1-collapse">


                    <ul class="nav navbar-nav">
                        <li>
                            <a href="dashboard.html">Dashboard</a>
                        </li>
                        <li class="active">
                            <a href="#">Tables</a>
                        </li>

                    </ul>

                </div>-->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <!-- /.navbar -->
        <header class="head">
            <!--<div class="search-bar">
                <form class="main-search" action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Live Search ...">
                        <span class="input-group-btn">
                                                <button class="btn btn-primary btn-sm text-muted" type="button">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </span>
                    </div>
                </form>

            </div>-->

            <!--<div class="main-bar">
                <h4>
                   &nbsp;
                    Create Discussion Group
                </h4>
            </div>-->
            <!-- /.main-bar -->
        </header>
        <!-- /.head -->
    </div>
    <!-- /#top -->
    <div id="left">
        <div class="media user-media bg-dark dker">
            <div class="user-media-toggleHover">
                <span class="fa fa-user"></span>
            </div>
            <div class="user-wrapper bg-dark">
                <a class="user-link" href="">
                    <img class="media-object img-thumbnail user-img" alt="User Picture"
                         src="http://lorempixel.com/64/64">

                </a>

                <div class="media-body" id="inferarea">
                    <h5 class="media-heading">&nbsp;&nbsp;Archie</h5>
                    <ul class="list-unstyled user-info">
                        <li><br>
                            <small><i class="fa fa-calendar"></i></small>
                        </li>
                        <li>
                            <a href="">&nbsp;&nbsp;Administrator</a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

        <ul id="menu" class=".bg-light dker">
            <li class="nav-header">Menu</li>
            <li class="nav-divider"></li>

            <li>
                <a href="/TurnToManagePage">
                    <i class="fa fa-table"></i>
                    <span class="link-title">View Group</span>
                </a>
            </li>
            <li>
                <a href="/TurnToCreatePage">
                    <i class="fa fa-table"></i>
                    <span class="link-title">Create Discussion</span>
                </a>
            </li>
        </ul>
        <!-- /#menu -->
    </div>
    <!-- /#left -->
    <div id="content">
        <div class="outer">
            <div class="inner bg-light lter">
                <style>
                    .form-control.col-lg-6 {
                        width: 50% !important;
                    }
                </style>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <header>
                                <div class="icons"><i class="fa fa-th-large"></i></div>
                                <h5>Create Discussion</h5>
                                <!-- .toolbar -->
                                <div class="toolbar">
                                    <nav style="padding: 8px;">
                                        <a href="javascript:;" class="btn btn-default btn-xs collapse-box">
                                            <i class="fa fa-minus"></i>
                                        </a>
                                        <a href="javascript:;" class="btn btn-default btn-xs full-box">
                                            <i class="fa fa-expand"></i>
                                        </a>
                                        <a href="javascript:;" class="btn btn-danger btn-xs close-box">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </nav>
                                </div>            <!-- /.toolbar -->

                            </header>
                            <div id="collapseOne" class="body">
                                <br/><br/><br/>
                                <form action="#" class="form-horizontal" id="block-validate">

                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Discussion Name</label>
                                        <div class="col-lg-4">
                                            <input type="text" id="discussionname" name="required1" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-4">Topic</label>
                                        <div class="col-lg-4">
                                            <input type="text" id="topic" name="required2" class="form-control">
                                        </div>
                                    </div>

                                    <!--<div class="form-group">
                                        <label class="control-label col-lg-4">Digits Only</label>

                                        <div class="col-lg-4">
                                            <input type="text" id="digits" name="digits" class="form-control">
                                        </div>
                                    </div>-->


                                    <br/><br/><br/><br/><br/>
                                    <div class="form-actions no-margin-bottom">

                                    </div>
                                    <br/><br/><br/>

                                </form>
                                <input type="submit" value="Submit" class="btn btn-primary"
                                       onclick="addDiscussion()">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.outer -->
    </div>
    <!-- /#content -->


</div>
<!-- /#wrap -->

<footer class="Footer bg-dark dker">
    <p>2017 &copy; UWL Discussion Group</p>
</footer>
<!-- /#footer -->
<!-- #helpModal -->
<div id="helpModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                    aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                    culpa qui officia deserunt mollit anim id est laborum.
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- /#helpModal -->
<!--jQuery -->
<script src="assets/lib/jquery/jquery.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jQuery-Validation-Engine/2.6.4/jquery.validationEngine.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jQuery-Validation-Engine/2.6.4/languages/jquery.validationEngine-en.min.js"></script>

<!--Bootstrap -->
<script src="assets/lib/bootstrap/js/bootstrap.js"></script>
<!-- MetisMenu -->
<script src="assets/lib/metismenu/metisMenu.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.3/jquery.tagsinput.min.js"></script>
<!-- onoffcanvas -->
<script src="assets/lib/onoffcanvas/onoffcanvas.js"></script>
<!-- Screenfull -->
<script src="assets/lib/screenfull/screenfull.js"></script>

<script src="assets/lib/jquery-validation/jquery.validate.js"></script>

<!-- Metis core scripts -->
<script src="assets/js/core.js"></script>
<!-- Metis demo scripts -->
<script src="assets/js/app.js"></script>
<script src="build/toastr.min.js"></script>

<script>
    toastr.options.positionClass = 'toast-top-center';

    function addDiscussion() {
        var discussionname =document.getElementById("discussionname").value;
        var topic =document.getElementById("topic").value;
        var username = "<%=session.getAttribute("username")%>";
        $.ajax(
            {
                type: "POST" ,
                url: "/CreateDiscussion" ,
                data: "discussionname=" +discussionname+"&topic=" +topic+"&username="+username ,
                dataType: "text" ,
                success: function (data)
                {

                    toastr.success('Add Success');
                    setTimeout(function(){window.location.href="/TurnToManagePage";},2000);

                }
            })



    }
</script>
<script>
    $(function () {
        Metis.formValidation();

        var username = "<%=session.getAttribute("username")%>";
        var usertype = "<%=session.getAttribute("usertypename")%>";
        var eleH = $("#inferarea h5");

        var eleL = $("#inferarea li");
        eleH[0].innerHTML = "&nbsp;&nbsp;" + username;
        eleL[1].innerHTML = "&nbsp;&nbsp;" + usertype;

    });

</script>

<script src="assets/js/style-switcher.js"></script>
　
</body>

</html>
