<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8"%>
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

                </ul>
            </div>

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
                        <input type="text" id="username" class="form-control" placeholder="Username">
                        <input type="password" id="password" class="form-control" placeholder="Password">

                        <div class="form-group">
                            <label class="control-label col-lg-4">Select User Type</label>

                            <div class="col-lg-8">
                                <select class="form-control" id="usertype">
                                    <option></option>
                                    <option>Beginners</option>
                                    <option>Intermediate User</option>
                                    <option>Expert User</option>
                                    <option>Instructor</option>

                                </select>
                            </div>

                        </div>
                        <br>
                        <br>

                        <input type="submit" class="form-control" value="Submit" onclick="Login()"/>
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
function Login()
{
    var username =document.getElementById("username").value;
    var password =document.getElementById("password").value;
    var usertype=$("#usertype").val();
    $.ajax(
        {
            type: "POST" ,
            url: "/loginFunction" ,
            data: "username=" +username+"&password=" +password+"&usertype="+usertype ,
            dataType: "text" ,
            success: function (data)
            {
               //alert(data+(data=="-1"));
               console.log("value:"+data);
                alert(data);
                if(data=="-1")
                {
                   // alert("没变色");
                    var error = document.getElementById("Loginerror");
                    error.style.visibility="visible";
//                    return;
                }

                else
                {
                    //alert("tiao");
                    window.location.href="/TurnToMainPage";
                }
            }
        }
    );

}
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
