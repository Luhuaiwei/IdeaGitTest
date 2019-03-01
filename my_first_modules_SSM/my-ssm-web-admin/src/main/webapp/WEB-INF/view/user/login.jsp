<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/3
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <link rel="icon" href="/static/picture/favicon.ico">
    <title>登录页面</title>
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/signin.css" rel="stylesheet">
</head>

<body>
<div class="container">
    <form class="form-signin" action="/admin/login" method="post">
        <h2 class="form-signin-heading">请输入用户名密码登录</h2>
        <input type="text" id="inputtext" class="form-control" placeholder="请输入用户名" name="username" required autofocus>
        <input type="password" id="inputPassword" class="form-control" placeholder="请输入密码" name="password" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" name="remember-me" value="yes"> 7天内自动登录
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    </form>

</div>
</body>
</html>

