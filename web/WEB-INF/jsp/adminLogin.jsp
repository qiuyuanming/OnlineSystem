<%-- 
    Document   : foot
    Created on : 2017-6-20, 21:50:07
    Author     : 123456
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>登录</title>
        <link rel="stylesheet" type="text/css" href="../css/public.css" />
        <link rel="stylesheet" type="text/css" href="../css/page.css" />
        <script type="text/javascript" src="../js/jquery.min.js"></script>
        <script type="text/javascript" src="../js/public.js"></script>
    </head>
    <body>

        <!-- 登录页面头部 -->
        <div class="logHead">
            <img src="../img/headLogo.png" />
        </div>
        <!-- 登录页面头部结束 -->

        <!-- 登录body -->
        <form>
        <div class="logDiv">
            <img class="logBanner" src="../img/logBanner.png" />
            <div class="logGet">
                <!-- 头部提示信息 -->
                <div class="logD logDtip">
                    <p class="p1">登录</p>
                    <p class="p2">管理人员登录</p>
                </div>
                <!-- 输入框 -->
                <div class="lgD">
                    <img class="img1" src="../img/logName.png" /><input type="text"
                                                                     placeholder="输入用户名" />
                </div>
                <div class="lgD">
                    <img class="img1" src="../img/logPwd.png" /><input type="text"
                                                                    placeholder="输入用户密码" />
                </div>
                <div class="logC">
                    <button>登 录</button>
                </div>
                <div class="lgD">
                        <span>${msg}</span>
                    </div>
            </div>
        </div>
        </form>
    </body>

</html>
