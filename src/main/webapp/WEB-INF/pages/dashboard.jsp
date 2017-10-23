<!doctype html>
<%@ page contentType="text/html; charset=utf-8"%>
<html>

<head>
    <meta charset="UTF-8">
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Table</title>

    <meta name="description" content="Free Admin Template Based On Twitter Bootstrap 3.x">
    <meta name="author" content="">

    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />

    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">

    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="assets/css/main.css">

    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="assets/lib/metismenu/metisMenu.css">

    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="assets/lib/onoffcanvas/onoffcanvas.css">

    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="assets/lib/animate.css/animate.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/css/dataTables.bootstrap.min.css">
    <style>
        @font-face {
            font-family: 'iconfont';  /* project id 444600 */
            src: url('//at.alicdn.com/t/font_444600_mot3jg1520t9ms4i.eot');
            src: url('//at.alicdn.com/t/font_444600_mot3jg1520t9ms4i.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_444600_mot3jg1520t9ms4i.woff') format('woff'),
            url('//at.alicdn.com/t/font_444600_mot3jg1520t9ms4i.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_444600_mot3jg1520t9ms4i.svg#iconfont') format('svg');
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
    <link href="build/toastr.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>

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

                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </header>

                <div class="topnav">
                    <div class="btn-group">
                        <a href="/TurnToMainPage" data-toggle="tooltip" data-original-title="Exit" data-placement="bottom" class="btn btn-metis-1 btn-sm">
                            <i class="iconfont">&#xe673;</i>
                        </a>
                    </div>

                </div>

                <div class="collapse navbar-collapse navbar-ex1-collapse">

                    <!-- .nav -->
                    <!--<ul class="nav navbar-nav">
                        <li>
                            <a href="dashboard.html">Dashboard</a>
                        </li>
                        <li class="active">
                            <a href="#">Tables</a>
                        </li>

                    </ul>-->
                    <!-- /.nav -->
                </div>
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
            <!-- /.search-bar -->
            <!--<div class="main-bar">
                <h3>
                    <i class="fa fa-table"></i>&nbsp;
                    Table
                </h3>
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
                    <img class="media-object img-thumbnail user-img" alt="User Picture" src="http://lorempixel.com/64/64">
                </a>

                <div class="media-body" id="inferarea">
                    <h5 class="media-heading">&nbsp;&nbsp;Archie</h5>
                    <ul class="list-unstyled user-info">
                        <li> <br>
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
                <!--Begin Datatables-->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <header>
                                <div class="icons"><i class="fa fa-table"></i></div>
                                <h5>Discussion Table</h5>
                            </header>
                            <div id="collapse4" class="body">
                                <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th ><i class="iconfont">&#xe607;</i></th>
                                        <th >Discussion Group</th>
                                        <th>Instructor</th>
                                        <th>Topic</th>
                                        <th>Timestamp</th>
                                    </tr>
                                    </thead>
                                    <tbody id="discussionTable">
                                    <%--<tr>--%>
                                        <%--<td align="center">--%>
                                            <%--<a class="btn btn-default"><i class="iconfont">&#xe624;</i></a>--%>
                                            <%--<a class="btn btn-danger"><i class="iconfont">&#xe600;</i></a>--%>
                                        <%--</td>--%>
                                        <%--<td class="hidden-xs">1</td>--%>
                                        <%--<td>John Doe</td>--%>
                                        <%--<td>Science</td>--%>
                                        <%--<td>2017</td>--%>
                                    <%--</tr>--%>
                                    </tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                        <div class="box">
                            <header>
                                <div class="icons"><i class="fa fa-table"></i></div>
                                <h5>Entry Table</h5>
                            </header>
                            <div id="collapse5" class="body">
                                <table id="stripedTable" class="table table-bordered table-condensed table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th ><i class="iconfont">&#xe607;</i></th>
                                        <th>Entryid</th>
                                        <th>Username</th>
                                        <th>Entryname</th>
                                        <th>Discussion</th>
                                        <th>Date</th>
                                        <th>Entryinfer</th>>
                                    </tr>
                                    </thead>
                                    <tbody id="entryTable">
                                    <%--<tr>--%>
                                    <%--<td align="center">--%>
                                    <%--<a class="btn btn-default"><i class="iconfont">&#xe624;</i></a>--%>
                                    <%--<a class="btn btn-danger"><i class="iconfont">&#xe600;</i></a>--%>
                                    <%--</td>--%>
                                    <%--<td class="hidden-xs">1</td>--%>
                                    <%--<td>John Doe</td>--%>
                                    <%--<td>Science</td>--%>
                                    <%--<td>2017</td>--%>
                                    <%--</tr>--%>
                                    </tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->


            </div>
            <!-- /#content -->


            <!-- /#right -->
        </div>
        <!-- /#wrap -->
    </div>
</div>
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
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.26.6/js/jquery.tablesorter.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>

<!--Bootstrap -->
<script src="assets/lib/bootstrap/js/bootstrap.js"></script>
<!-- MetisMenu -->
<script src="assets/lib/metismenu/metisMenu.js"></script>
<!-- onoffcanvas -->
<script src="assets/lib/onoffcanvas/onoffcanvas.js"></script>
<!-- Screenfull -->
<script src="assets/lib/screenfull/screenfull.js"></script>

<!-- Metis core scripts -->
<script src="assets/js/core.js"></script>
<!-- Metis demo scripts -->
<script src="assets/js/app.js"></script>
<script src="build/toastr.min.js"></script>
<script>
    toastr.options.positionClass = 'toast-top-center';
    function deleteEntry(thisObj,idcount)
    {
        var entryid=document.getElementById("entryid"+idcount).innerText;
        $.ajax(
            {
                type: "POST" ,
                url: "/DeteteEntry" ,
                data: "entryid=" +entryid,
                success: function (data)
                {
                    toastr.success('Delete Success');
                    setTimeout(function(){window.location.href="/TurnToManagePage";},2000);
                }
            })

    }
    function deleteDiscussion(thisObj,idcount)
    {
        var discussionname=document.getElementById("discussionname"+idcount).innerText;
        $.ajax(
            {
                type: "POST" ,
                url: "/DeteteDiscussion" ,
                data: "discussionname=" +discussionname,
                success: function (data)
                {
                    toastr.success('Delete Success');
                    setTimeout(function(){window.location.href="/TurnToManagePage";},2000);
                }
            })

    }
</script>
<script>
    $(function() {


        var username="<%=session.getAttribute("username")%>";
        var usertype="<%=session.getAttribute("usertypename")%>";
        var eleH=$("#inferarea h5");

        var eleL=$("#inferarea li");
        eleH[0].innerHTML="&nbsp;&nbsp;"+username;
        eleL[1].innerHTML="&nbsp;&nbsp;"+usertype;

        $.ajax(
            {
                type: "POST",
                url: "/GetAllDiscussionByInstructor",
                data: "username=" + username,
                success: function (data) {

                    var count = Object.keys(data).length;  //传过来数据长度
                    console.log("数据长度:  " + count);
                    for (var x = 0; x < count; x++) {
                        var row = document.createElement("tr"); //创建行

                        for (var y = 0; y < 5; y++) {
                            if (y == 0) {
                                var td1 = document.createElement("td"); //创建单元格
                                td1.align="center";
                                 var a1= document.createElement("a");
                                var i1= document.createElement("i");
                                var a2= document.createElement("a");
                                var i2= document.createElement("i");
                                a2.setAttribute("onclick", "deleteDiscussion(this,"+x+")");
                                 a1.title="Terminate";
                                a2.title="Delete";
                                 a1.className='btn btn-default';
                                a2.className='btn btn-danger';
                                i1.className='iconfont';
                                i2.className='iconfont';
                                a1.appendChild(i1);
                                a2.appendChild(i2);
                               // i1.appendChild(document.createTextNode("&#xe624;"));
                                i1.innerHTML="&#xe6e1";
                                i2.innerHTML="&#xe600";

                                //i2.appendChild(document.createTextNode("&#xe600;"));
//                                $("#discussionTable").trigger("create");//为单元格添加内容
//                                var a1=' <a class="btn btn-default"><i class="iconfont">&#xe624;</i></a>';
//                                var a2='<a class="btn btn-dange"><i class="iconfont">&#xe600;</i></a>';

                                td1.appendChild(a1);
                                td1.append(" ");
                                td1.appendChild(a2);

                                row.appendChild(td1); //将单元格添加到行内

                            }
                            else if (y == 1) {
                                var td1 = document.createElement("td"); //创建单元格
                                td1.id='discussionname'+x;
                                td1.appendChild(document.createTextNode(data[x].discussionname)); //为单元格添加内容

                                row.appendChild(td1); //将单元格添加到行内
                            }
                            else if (y == 2) {
                                var td1 = document.createElement("td"); //创建单元格

                                td1.appendChild(document.createTextNode(data[x].instructor)); //为单元格添加内容

                                row.appendChild(td1); //将单元格添加到行内
                            }
                            else if (y == 3) {
                                var td1 = document.createElement("td"); //创建单元格

                                td1.appendChild(document.createTextNode(data[x].topic)); //为单元格添加内容

                                row.appendChild(td1); //将单元格添加到行内
                            }
                            else if (y == 4) {
                                var td1 = document.createElement("td"); //创建单元格

                                td1.appendChild(document.createTextNode(data[x].date)); //为单元格添加内容

                                row.appendChild(td1); //将单元格添加到行内
                            }

                        }
                        document.getElementById("discussionTable").append(row); //将行添加到<tbody>中
                    }
//                    $('#dataTable1').dataTable( {
//                        paging: ture,
//                        searching: ture
//                    } );
                    Metis.MetisTable();
                    Metis.metisSortable();
                }
            })

        $.ajax(
            {
                type: "POST",
                url: "/GetAllEntry",
//                data: "username=" + username,
                success: function (data) {

                    var count = Object.keys(data).length;  //传过来数据长度
                    console.log("数据长度:  " + count);
                    for (var x = 0; x < count; x++) {
                        var row = document.createElement("tr"); //创建行

                        for (var y = 0; y < 7; y++) {
                            if (y == 0) {
                                var td1 = document.createElement("td"); //创建单元格
                                td1.align="center";
                                var a1= document.createElement("a");
                                var i1= document.createElement("i");
                                var a2= document.createElement("a");
                                var i2= document.createElement("i");
                                a1.title="Terminate";
                                a2.title="Delete";
                                a2.setAttribute("onclick", "deleteEntry(this,"+x+")");
                                a1.className='btn btn-default';
                                a2.className='btn btn-danger';

                                i1.className='iconfont';
                                i2.className='iconfont';
                                a1.appendChild(i1);
                                a2.appendChild(i2);
                                // i1.appendChild(document.createTextNode("&#xe624;"));
                                i1.innerHTML="&#xe6e1";
                                i2.innerHTML="&#xe600";

                                //i2.appendChild(document.createTextNode("&#xe600;"));
//                                $("#discussionTable").trigger("create");//为单元格添加内容
//                                var a1=' <a class="btn btn-default"><i class="iconfont">&#xe624;</i></a>';
//                                var a2='<a class="btn btn-dange"><i class="iconfont">&#xe600;</i></a>';

                                td1.appendChild(a1);
                                td1.append(" ");
                                td1.appendChild(a2);

                                row.appendChild(td1); //将单元格添加到行内

                            }
                            else if (y == 1) {
                                var td1 = document.createElement("td"); //创建单元格
                                        td1.id='entryid'+x;
                                td1.appendChild(document.createTextNode(data[x].entryid)); //为单元格添加内容

                                row.appendChild(td1); //将单元格添加到行内
                            }
                            else if (y == 2) {
                                var td1 = document.createElement("td"); //创建单元格

                                td1.appendChild(document.createTextNode(data[x].username)); //为单元格添加内容

                                row.appendChild(td1); //将单元格添加到行内
                            }
                            else if (y == 3) {
                                var td1 = document.createElement("td"); //创建单元格

                                td1.appendChild(document.createTextNode(data[x].entryname)); //为单元格添加内容

                                row.appendChild(td1); //将单元格添加到行内
                            }
                            else if (y == 4) {
                                var td1 = document.createElement("td"); //创建单元格

                                td1.appendChild(document.createTextNode(data[x].discussion)); //为单元格添加内容

                                row.appendChild(td1); //将单元格添加到行内
                            }
                            else if (y == 5) {
                                var td1 = document.createElement("td"); //创建单元格

                                td1.appendChild(document.createTextNode(data[x].date)); //为单元格添加内容

                                row.appendChild(td1); //将单元格添加到行内
                            }
                            else if (y == 6) {
                                var td1 = document.createElement("td"); //创建单元格

                                td1.appendChild(document.createTextNode(data[x].entryinfer)); //为单元格添加内容

                                row.appendChild(td1); //将单元格添加到行内
                            }

                        }
                        document.getElementById("entryTable").append(row); //将行添加到<tbody>中
                    }
//                    Metis.MetisTable();
//                    Metis.metisSortable();
//                    $('#dataTable2').dataTable( {
//                        paging: ture,
//                        searching: ture
//                    } );
                }
            })


    });


</script>

<script src="assets/js/style-switcher.js"></script>
</body>

</html>