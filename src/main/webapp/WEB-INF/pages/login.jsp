<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="css/login.css" type="text/css" />
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js";></script>;
    <style type="text/css">
        body {
            background: url(images/background1.JPG);
        }
        .input-group span.error{
            visibility:hidden;
            color:red;
            font-size:20px;
            font-style:italic;
            display:block;
            margin:auto;
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
            <a class="navbar-brand" href="#">UWL Discussion Group</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
            <div id="downbar">
                <ul class="nav navbar-nav navbar-right">
                    <!--<li class="dropdown">
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
                    </li>-->
                </ul>
            </div>
            <!--<div id="submitform">
                <form class="navbar-form navbar-right" id="loginButton" action="/maintoindex">

                    <button type="submit" class="btn btn-success">Sign in</button>

                </form>
            </div>-->
        </div>

    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">   <!-- textcentre-->
            <div class="search-box">
                <div class="caption">
                    <h3>Login the UWL Discussion Group</h3>

                </div>
                <form action="" class="loginForm">
                    <div class="input-group">
                        <input type="text" id="name" class="form-control" placeholder="Username">
                        <input type="password" id="paw" class="form-control" placeholder="Password">
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">User Type</button>

                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                <span class="caret"></span>
                                <span class="sr-only">切换下拉菜单</span>
                            </button>
                            <ul class="dropdown-menu" role="menu">

                                <li><a href="#">Beginners</a></li>
                                <li><a href="#">Intermediate User</a></li>
                                <li><a href="#">Expert User</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Instructor</a></li>
                            </ul>
                        </div>

                        <br>
                        <br>

                        <input type="submit" id="submit" class="form-control" value="Submit" onclick="Login()">
                        <span class="error" id="Loginerror">Please enter correct username and password!</span>
                        <span class="error" id="Typeerror">Please choose the usertype</span>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <div class="aro-pswd_info">
                <div id="pswd_info">
                    <h4>Password must be requirements</h4>
                    <ul>
                        <li id="letter" class="invalid">At least <strong>one letter</strong></li>
                        <li id="capital" class="invalid">At least <strong>one capital letter</strong></li>
                        <li id="number" class="invalid">At least <strong>one number</strong></li>
                        <li id="length" class="invalid">Be at least <strong>8 characters</strong></li>
                        <li id="space" class="invalid">be<strong> use [~,!,@,#,$,%,^,&,*,-,=,.,;,']</strong></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


<script>

</script>
<script>
    $(document).ready(function(){

        $('input[type=password]').keyup(function() {
            var pswd = $(this).val();

            //validate the length
            if ( pswd.length < 8 ) {
                $('#length').removeClass('valid').addClass('invalid');
            } else {
                $('#length').removeClass('invalid').addClass('valid');
            }

            //validate letter
            if ( pswd.match(/[A-z]/) ) {
                $('#letter').removeClass('invalid').addClass('valid');
            } else {
                $('#letter').removeClass('valid').addClass('invalid');
            }

            //validate capital letter
            if ( pswd.match(/[A-Z]/) ) {
                $('#capital').removeClass('invalid').addClass('valid');
            } else {
                $('#capital').removeClass('valid').addClass('invalid');
            }

            //validate number
            if ( pswd.match(/\d/) ) {
                $('#number').removeClass('invalid').addClass('valid');
            } else {
                $('#number').removeClass('valid').addClass('invalid');
            }

            //validate space
            if ( pswd.match(/[^a-zA-Z0-9\-\/]/) ) {
                $('#space').removeClass('invalid').addClass('valid');
            } else {
                $('#space').removeClass('valid').addClass('invalid');
            }

        }).focus(function() {
            $('#pswd_info').show();
        }).blur(function() {
            $('#pswd_info').hide();
        });

    });
</script>
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>

</html>
