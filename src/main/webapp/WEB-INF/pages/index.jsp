<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Discussion Group</title>
    <meta name="author" content="Alvaro Trigo Lopez" />
    <meta name="description" content="fullPage full-screen normal scrolling with autoScrolling." />
    <meta name="keywords"  content="fullpage,jquery,demo,screen,fullscreen,lazyload,lazy,passive,load,src,data-src,media" />
    <meta name="Resource-type" content="Document" />

    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/jquery.fullPage.css" />
    <link rel="stylesheet" type="text/css" href="css/examples.css" />

    <link rel="stylesheet" type="text/css" href="css/cardtransisition.css" />
    <style>

        /* Style for our header texts
        * --------------------------------------- */
        h1{
            font-size: 5em;
            font-family: arial,helvetica;
            color: #444;
            margin:0;
        }
        .intro p{
            color: #444;
        }

        /* Centered texts in each section
        * --------------------------------------- */
        .section{
            text-align:center;
        }


        /* Bottom menu
        * --------------------------------------- */
        #infoMenu li a {
            color: #444;
        }

        /* Lazy loading background
        * --------------------------------------- */
        #section0{
            background-image: url(../../images/fp1.jpg);
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
            <h1>Lazy load</h1>
            <p>Just use `data-src` or `data-srcset` for any media elements.</p>
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
                <form class="navbar-form navbar-right" id="loginButton" action="/maintoindex">

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
                <h2 class="transition">Awesome Headline</h2>
                <p>Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla.</p>
                <div class="cta-container transition">
                    <a href="#" class="cta">Join the group</a>
                </div>
                <div class="card_circle transition"></div>

            </div>
        </div>


        <div class="block col-md-4">
            <div class="card transition">
                <h2 class="transition">Awesome Headline</h2>
                <p>Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla.</p>
                <div class="cta-container transition">
                    <a href="#" class="cta">Join the group</a>
                </div>
                <div class="card_circle transition"></div>

            </div>
        </div>

        <div class="block col-md-4">
            <div class="card transition">
                <h2 class="transition">Awesome Headline</h2>
                <p>Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla.</p>
                <div class="cta-container transition">
                    <a href="#" class="cta">Join the group</a>
                </div>
                <div class="card_circle transition"></div>

            </div>
        </div>

    </div>
</div>

<br>
<br>  <br>  <br>  <br>  <br>
<hr style="height:10px;border:none;border-top:10px groove skyblue;" />
作者：胡盈波
链接：https://www.zhihu.com/question/21644198/answer/22392394
来源：知乎
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

为了更明显点，我们来看个例子：margin实现块元素水平居中。Cool，这么简单就实现了水平居中。不过你可能也发现了不论是 margin: auto; 还是 margin: 0 auto; 效果都是一样的，都是让 #demo 水平居中了，但纵向并没有任何变化。大家都知道 margin 是复合属性，也就是说 margin: auto; 其实相当于 margin: auto auto auto auto;，margin: 0 auto;相当于 margin: 0 auto 0 auto;，四个值分别对应上右下左。至于CSS中的上、右、下、左顺序就不做赘述了。根据规范，margin-top: auto; 和 margin-bottom: auto;，其计算值为0。这也就解释了为什么 margin: auto; 等同于 margin: 0 auto;。但仅此而已吗？让我们来看看规范描述：原文：On the A edge and C edge, the used value of ‘auto’ is 0.翻译：如果场景是A和C，那么其 auto 计算值为 0。更详细请参阅：margin properties由此可见，它们还与书写模式 writing-mode 和 文档流方向 direction 有关。所以我们说 margin: auto; 等同于 margin: 0 auto; 是不太精准的，因为还有前置条件。了解这些很重要，这有助于理解 margin 属性的设计意图。OK，聊了这么多，我们回到默认的 writing-mode: horizontal-tb; 和 direction: ltr; 的情况继续往下，后面的话题都基于这个前提。为什么auto能实现水平居中？这是因为水平方向的 auto，其计算值取决于可用空间（剩余空间）。原文：On the B edge and D edge, the used value depends on the available space.翻译：如果场景是B和D，那么其 auto 计算值取决于可用空间。编辑于 2016-02-0216


<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>