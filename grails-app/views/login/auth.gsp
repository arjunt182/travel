<%--
  Created by IntelliJ IDEA.
  User: arjun
  Date: 5/15/17
  Time: 3:23 PM
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Travel Management System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    %{--<script src="myscripts.js"></script>--}%
    <asset:stylesheet href="styleLogin.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body class="inquiry-body">
<div class="container-fluid">
    <div>
        <div class="login-container">
            <div class="header-bg">
                <h1 class="text-center form-title">LOGIN</h1>
            </div>
            <div class="body-bg">
                <form method="POST" action= ${createLink(uri: '/login/authenticate')}>
                    <g:if test='${flash.message}'>
                        <div class="alert alert-danger fade in alert-dismissable">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                            ${flash.message}
                        </div>
                    </g:if>
                    <div class="input-group input-login">
                        <span class="input-group-addon field-bg">
                            <asset:image src="user.png"/>
                        </span>
                        <input id="username" type="text" class="form-control login-field" name="username" placeholder="Username">
                    </div>
                    <div class="input-group input-login">
                        <span class="input-group-addon field-bg">
                            <asset:image src="password.png"/>
                        </span>
                        <input id="password" type="password" class="form-control login-field" name="password" placeholder="Password">
                    </div>
                    <ul class="list-inline text-center">
                        %{--   <li><asset:image src="cross.png"/></li>
                           <li><p class="no-match">Password and username don’t match</p></li>--}%
                    </ul>
                    <div class="text-center">
                        <input type="submit" class="btn primary-bg colorwhite btn-login" value="Sign In" style="background-color: #2e6da4">
                    </div>
                    %{--<p class="pw-forgot">Forgot Password?</p>--}%
                    <g:link  controller="login" action="forgot">Forgot Password?</g:link>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>

