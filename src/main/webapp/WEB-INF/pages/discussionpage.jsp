<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    request.setAttribute("basePath", basePath);
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/cardtransisition.css" />
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <link href="css/addpicture.css" rel="stylesheet">
    <link href="css/timeline.css" rel="stylesheet">

    <link href="build/toastr.css" rel="stylesheet"/>
    <style>

        @font-face {
            font-family: 'iconfont';  /* project id 444600 */
            src: url('//at.alicdn.com/t/font_444600_wloo5a11rr7ldi.eot');
            src: url('//at.alicdn.com/t/font_444600_wloo5a11rr7ldi.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_444600_wloo5a11rr7ldi.woff') format('woff'),
            url('//at.alicdn.com/t/font_444600_wloo5a11rr7ldi.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_444600_wloo5a11rr7ldi.svg#iconfont') format('svg');
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

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/TurnToMainPage">UWL Discussion Group</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li id="li3"><a href="#">Instructor</a></li>
                <li id="li4"><a href="#">Beginner</a></li>
                <li id="li5"><a href="#">Intermediate User</a></li>
                <li id="li6"><a href="#">Expert User</a></li>
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

<div class="container" id="discussioncontent">
    <div class="row">
        <br /><br /><br />

        <h2>Discussion name</h2>

        <p>Created by: </p>
        <p>Topic:</p>
        <p>Timestamp:</p>
        <hr style="height:5px;border:none;border-top:5px groove skyblue;" />
        <div class="btn-group">

            <a  class="btn btn-success " title="Join our group" id="b1" onclick="Onsubscribe()"><i class="iconfont">&#xe602;</i></a>
            <a  class="btn btn btn-danger " title="Quit the group" id="b2" onclick="Offsubscribe()"><i class="iconfont">&#xe625;</i></a>
            <a href="#" class="btn btn-warning " data-toggle="modal" title="Add an entry" data-target="#createEntryModal" id="b3"><i class="iconfont">&#xe601;</i></a>
        </div>
    </div>

    <!-- line modal -->
    <div class="modal fade" id="createEntryModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h3 class="modal-title" id="lineModalLabel">My Entry</h3>
                </div>
                <div class="modal-body">

                    <!-- content goes here -->
                    <form action="/CreateEntry?discussion=${discussion}&username="+${sessionScope[username]} method="post" enctype="multipart/form-data" id="entryform">
                        <div class="form-group">
                            <label for="entrytitle">Entry Title</label>
                            <input type="text" class="form-control" id="entrytitle" name="entrytitle" >
                        </div>
                        <!--<div class="form-group">
                            <label for="exampleInputPassword1"></label>
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Entry Content">
                        </div>-->
                        <div class="form-group">
                            <label for="entryinfer" class="control-label ">Entry Content</label>

                            <textarea id="entryinfer" class="form-control" name="entryinfer"></textarea>

                        </div>



                        <legend>Add Images</legend>
                        <div class="entryimg"  id="entryimg">

                            <!-- image-preview-filename input [CUT FROM HERE]-->
                            <div class="input-group image-preview">
                                <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span> Clear
                    </button>
                                    <!-- image-preview-input -->
                    <div class="btn btn-default image-preview-input">
                        <span class="glyphicon glyphicon-folder-open"></span>
                        <span class="image-preview-input-title">Browse</span>
                        <input type="file" accept="image/png, image/jpeg, image/gif" name="file"/> <!-- rename it -->
                    </div>
                </span>
                            </div>

                        </div>
                        <br />
                        <input type="reset" class="btn btn-danger" data-dismiss="modal" value="Close"/>
                        <input type="submit" class="btn btn-primary" value="Post Entry"/>

                    </form>

                </div>
                <div class="modal-footer">

                </div>
            </div>
        </div>
    </div>

    <div class="qa-message-list" id="wallmessages">
        <br><hr>
<%--<div>--%>
    <%--<p> entry name</p>--%>
    <%--<p> username+ timestamp </p>--%>

    <%--<p> entry infer</p>--%>
    <%--<hr>--%>
<%--</div>--%>
        <%--<div class="message-item" id="m162">--%>
            <%--<div class="message-inner">--%>
                <%--<div class="message-head clearfix">--%>
                    <%--<div class="avatar pull-left">--%>
                        <%--<a href="./index.php?qa=user&qa_1=Oleg+Kolesnichenko"><img src="http://lorempixel.com/64/64"></a>--%>
                    <%--</div>--%>
                    <%--<div class="user-detail">--%>
                        <%--<h5 class="handle">Oleg Kolesnichenko</h5>--%>
                        <%--<div class="post-meta">--%>
                            <%--<div class="asker-meta">--%>
                                <%--<span class="qa-message-what"></span>--%>
                                <%--<span class="qa-message-when">--%>
												<%--<span class="qa-message-when-data">Jan 21</span>--%>
										<%--</span>--%>
                                <%--<span class="qa-message-who">--%>
												<%--<span class="qa-message-who-pad">by </span>--%>
										<%--<span class="qa-message-who-data"><a href="./index.php?qa=user&qa_1=Oleg+Kolesnichenko">Oleg Kolesnichenko</a></span>--%>
										<%--</span>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="qa-message-content">--%>
                    <%--Yo!--%>
                    <%--<br>--%>
                    <%--<img src="http://lorempixel.com/64/64">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>


    </div>
</div>

<script src="//cdnjs.cloudflare.com/ajax/libs/autosize.js/1.18.17/jquery.autosize.min.js"></script>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>

<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="build/toastr.min.js"></script>
<script type="text/html" id="theTemplate">
    <br>
    <br>
    <div class="message-item id=m344">
        <div class="message-inner">
            <div class="message-head clearfix">
                <div class="avatar pull-left">
                    <a href="./index.php?qa=user&qa_1=Oleg+Kolesnichenko"><img src="http://lorempixel.com/64/64"></a>
                </div>
                <div class="user-detail">
                    <h5 class="handle">Oleg Kolesnichenko</h5>
                    <div class="post-meta">
                        <div class="asker-meta">
                            <span class="qa-message-what"></span>
                            <span class="qa-message-when">
												<span class="qa-message-when-data">Jan 21</span>
										</span>
                            <span class="qa-message-who">
												<span class="qa-message-who-pad">by </span>
										<span class="qa-message-who-data"><a href="./index.php?qa=user&qa_1=Oleg+Kolesnichenko">Oleg Kolesnichenko</a></span>
										</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="qa-message-content">
                Yo!
                <br>
                <img src="">
            </div>
        </div>
    </div>
    </script>
<script>
    $(document).on('click', '#close-preview', function(){
        $('.image-preview').popover('hide');
        // Hover befor close the preview
        $('.image-preview').hover(
            function () {
                $('.image-preview').popover('show');
            },
            function () {
                $('.image-preview').popover('hide');
            }
        );
    });

    $(function() {
        // Create the close button
        var closebtn = $('<button/>', {
            type:"button",
            text: 'x',
            id: 'close-preview',
            style: 'font-size: initial;',
        });
        closebtn.attr("class","close pull-right");
        // Set the popover default content
        $('.image-preview').popover({
            trigger:'manual',
            html:true,
            title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
            content: "There's no image",
            placement:'bottom'
        });
        // Clear event
        $('.image-preview-clear').click(function(){
            $('.image-preview').attr("data-content","").popover('hide');
            $('.image-preview-filename').val("");
            $('.image-preview-clear').hide();
            $('.image-preview-input input:file').val("");
            $(".image-preview-input-title").text("Browse");
        });
        // Create the preview image
        $(".image-preview-input input:file").change(function (){
            var img = $('<img/>', {
                id: 'dynamic',
                width:250,
                height:200
            });
            var file = this.files[0];
            var reader = new FileReader();
            // Set preview image into the popover data-content
            reader.onload = function (e) {
                $(".image-preview-input-title").text("Change");
                $(".image-preview-clear").show();
                $(".image-preview-filename").val(file.name);
                img.attr('src', e.target.result);
                $(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
            }
            reader.readAsDataURL(file);

        });


        //self
        $.ajax(
            {
                type: "POST" ,
                url: "/LoadSpecificDiscussionData" ,
                data: "discussion="+"${discussion}",
                dataType: "text" ,
                success: function (data)
                {
//                 alert(data);
                    var dataObj=eval("("+data+")");    //sb bug
//                 alert(dataObj.discussionname);
                    var eleH=$("#discussioncontent h2");
                    var eleP=$("#discussioncontent p");
                    eleH[0].innerHTML=dataObj.discussionname;
                    eleP[0].append(dataObj.instructor);
                    eleP[1].append(dataObj.topic);
                    eleP[2].append(dataObj.date);
                }
            })

        $.ajax(
            {
                type: "POST" ,
                url: "/LoadEntryData" ,
                data: "discussion="+"${discussion}",
                dataType: "text" ,
                success: function (data)
                {
                    var parent = document.getElementById("wallmessages");


                    var dataObj=eval("("+data+")");
                    var count = Object.keys(dataObj).length;
//                alert(count);
                  for(var x=0;x<count;x++)
                    {
//                        var eleH=$("#theTemplate h5");
//                        var template = document.getElementById("theTemplate");
//                     template.innerHTML.getElementsByTagName("h5")[0].innerHTML=dataObj[x].entryname;
//
//                      wallmessages.insertAdjacentHTML("afterBegin",template.innerHTML);
                      var dialog = document.createElement('div');
                      if(dataObj[x].imagepath!=null)
                      {
                          var img=document.createElement("img");
                          img.src="${basePath}"+dataObj[x].imagepath;
//                          img.style.cssText="width:150px;height:200px;";
                      }

                      var p1= document.createElement("p");

                      p1.innerHTML=dataObj[x].entryname;
                      console.log(dataObj[x].entryname);
                      var p2= document.createElement("p");
                      p2.innerHTML=dataObj[x].username +" created at "+dataObj[x].date;

                      var p3= document.createElement("p");
                      p3.innerHTML=dataObj[x].entryinfer;
                      var hr=document.createElement("hr");
                      dialog.appendChild(p1);
                      dialog.appendChild(p2);
                      dialog.appendChild(p3);
                      dialog.appendChild(img);
                      dialog.appendChild(hr);

                      parent.appendChild(dialog);
                  }

                }
            })

    });
</script>
<script>
    toastr.options.positionClass = 'toast-top-center';



    //    function AddEntry() {
    //        var path= '';
    //        var entrytitle =document.getElementById("entrytitle").value;
    //        var entryinfer =document.getElementById("entryinfer").value;
    //        var entryinfer=document.getElementsByName("images");
    //
    //        entryinfer[0].select();
    //        path = document.selection.createRange().text;
    //        document.selection.empty();
    //        alert(path);
    //        $.ajax(
    //            {
    //                type: "POST" ,
    //                url: "/LoadDiscussionData" ,
    //                success: function (data)
    //                {
    //
    //
    //                }
    //            })
    //    }

    $(document).ready(function() {


        var username="<%=session.getAttribute("username")%>";
        var type="<%=session.getAttribute("usertype")%>";   //判断是否是admin 管理员 或user
        var typename="<%=session.getAttribute("usertypename")%>";
        var navbar=document.getElementById("downbar");
        var loginbutton=document.getElementById("submitform");
        var manageAutho=document.getElementById("manageli");

        var li3=document.getElementById("li3");
        var li4=document.getElementById("li4");
        var li5=document.getElementById("li5");
        var li6=document.getElementById("li6");
        var b1=document.getElementById("b1");
        var b2=document.getElementById("b2");
        var b3=document.getElementById("b3");
        var div1=document.getElementById("entryimg");
        div1.style.display="none";
        b2.style.display="none";
        b3.style.display="none";
        li3.style.display="none";
        li4.style.display="none";
        li5.style.display="none";
        li6.style.display="none";
        console.log("username"+username+"usertype"+type);

        if (username!="null")
        {
            var presentType= document.getElementById("li"+type);
            presentType.style.display="block";
            navbar.style.display="block";
            loginbutton.style.display="none";
           b3.style.display="block";
           if(type==3||type==6)
           {
               div1.style.display="block";
           }
        }
        else
        {

            navbar.style.display="none";
            loginbutton.style.display="block";
        }

        if(type==3)
        {
            manageAutho.style.display="block";

        }
        else
        {
            manageAutho.style.display="none";
        }

    })

    function Onsubscribe() {
        var b1=document.getElementById("b1");
        var b2=document.getElementById("b2");
        b1.style.display="none";
        b2.style.display="block";
    }
    function Offsubscribe() {
        var b1=document.getElementById("b1");
        var b2=document.getElementById("b2");
        b2.style.display="none";
        b1.style.display="block";
    }
</script>
</body>

</html>