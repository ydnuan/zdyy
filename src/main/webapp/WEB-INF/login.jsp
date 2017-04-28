<%--
  Created by IntelliJ IDEA.
  User: Yr
  Date: 2017/4/7
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 登录</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>
</head>
<script>
    var username = $("#userName").val();
    var userpwd = $("#userPwd").val();
    if(username==""){
        $("#userName").val('');
        $("#userName").atter("placeholder","请输入姓名");
    }
    if(userpwd==""){
        $("#userpwd").val('');
        $("#userpwd").atter("placeholder","请输入密码");
    }
    var map=${map};
    if(map!=null){
        if (map.errCode==1){
            $("#userName").val('');
            $("#userName").atter("placeholder","请输入姓名");
        }
        if (map.errCode==3){
            $("#userName").val('');
            $("#userName").atter("placeholder","用户名不正确，请重新输入");
        }
        if (map.errCode==2){
            $("#userpwd").val('');
            $("#userpwd").atter("placeholder","请输入密码");
        }
        if (map.errCode==4){
            $("#userpwd").val('');
            $("#userpwd").atter("placeholder","密码不正确");
        }
    }
</script>

<body class="gray-bg">

<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">H+</h1>

        </div>
        <h3>欢迎使用 H+</h3>

        <form class="m-t" role="form" action="uer/checkUser">
            <div class="form-group">
                <input type="email" id="userName" class="form-control" placeholder="用户名" required="">
            </div>
            <div class="form-group">
                <input type="password" id="userPwd" class="form-control" placeholder="密码" required="">
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>


            <p class="text-muted text-center"> <a href="login.html#"><small>忘记密码了？</small></a> | <a href="register.html">注册一个新账号</a>
            </p>

        </form>
    </div>
</div>
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.6"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>


<!-- Mirrored from www.zi-han.net/theme/hplus/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:18:23 GMT -->
</html>
