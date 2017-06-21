<%-- 
    Document   : useradd
    Created on : 2017-6-20, 21:43:10
    Author     : 123456
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>添加用户</title>
        <link rel="stylesheet" type="text/css" href="../css/css.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
    </head>
    <body>
        <div id="pageAll">
            <div class="pageTop">
                <div class="page">
                    <img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
                            href="#">用户管理</a>&nbsp;-</span>&nbsp;添加管理
                </div>
            </div>
            <div class="page ">
                <!-- 会员注册页面样式 -->
                <div class="banneradd bor">
                    <div class="baTopNo">
                        <span>用户注册</span>
                    </div>
                    <div class="baBody">
                        <div class="bbD">
                            用户编号：<input type="text" class="input3" />
                        </div>
                        <div class="bbD">
                            用户名&nbsp;&nbsp;&nbsp;&nbsp;：<input type="password"
                                                               class="input3" />
                        </div>
                        <div class="bbD">
                            用户密码：<input type="password" class="input3" />
                        </div>
                        <div class="bbD">
                            性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<input type="password" class="input3" />
                        </div>
                        <div class="bbD">
                            联系方式：<input type="password" class="input3" />
                        </div>
                        <div class="bbD">
                            用户地址：<input type="password" class="input3" />
                        </div>
                        <div class="bbD">
                            银行卡号：<input type="password" class="input3" />
                        </div>
                        <div class="bbD">
                            账户余额：<input type="password" class="input3" />
                        </div>
                        <div class="bbD">
                            <p class="bbDP">
                                <button class="btn_ok btn_yes" href="#">提交</button>
                                <a class="btn_ok btn_no" href="user1.jsp">取消</a>
                            </p>
                        </div>
                    </div>
                </div>

                <!-- 会员注册页面样式end -->
            </div>
        </div>
    </body>
</html>
