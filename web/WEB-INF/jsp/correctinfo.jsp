<%-- 
    Document   : correctinfo
    Created on : 2017-6-20, 17:17:09
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>无标题文档</title>
        <link href="../css/person.css" rel="stylesheet" type="text/css"/>
        <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
        <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

        <link href="../css/personal.css" rel="stylesheet" type="text/css">
        <link href="../css/orstyle.css" rel="stylesheet" type="text/css">

        <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
        <script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>



    </head>

    <body>

        <div class="container">
            <div class="header">
                <div class="topmenu">
                    <div class="menu-hd">
                        <a href="#" target="_top" class="h">欢迎您,</a>
                        <a href="#" target="_top">${user.userName}</a>
                    </div>
                </div>

                <div class="logo"><a href="index.jsp"><img src="../images/logobig.png" height="90" id="Insert_logo" display:block; /></a> </div>

                <div class="search-bar">
                    <form>
                        <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                        <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
                    </form>
                </div>


            </div>
            <div class="sidebar1">
                <ul class="nav">
                    <li><a href="viewUser?userId=${user.userId}">我的资料</a></li>
                    <li><a href="orderManagement.jsp">订单管理</a></li>
                    <li><a href="forEditInfo?userId=${user.userId}">修改信息</a></li>
                </ul>
                <div class="left">


                </div>

                <!-- end .sidebar1 --></div>
            <div class="content">
                <div class="pannel">
                    <div class="ptop">
                    </div>
                    <div class="information">
                        <div class="touxiang"></div>
                        <form >
                            编&nbsp;号：<input type="text" style="background:#BABABA;" name="userId" readonly="true" value="${user.userId}" >
                            昵&nbsp;称：<input type="text"  name="userName" value="${user.userName}" />
                            密&nbsp;码：<input type="password" name="userPassword" value="${user.userPassword}"/>
                            性&nbsp;别：<input type="text" name="userGender" value="${user.userGender}">
                            地&nbsp;址：<input type="text" name="userAddress" value="${user.userAddress}"/>
                            手机号:<input type="text" name="userPhone" value="${user.userPhone}"/>
                            购物卡:<input type="text" name="userAccount" style="background:#BABABA;" readonly="true" value="${user.userAccount}">
                            余&nbsp;&nbsp;额：<input type="text" name="userBalance" style="background:#BABABA;" readonly="true" value="${user.userBalance}">
                            <input id="ai-topsearch" class="submit am-btn" value="提交" index="1" type="submit">

                        </form>
                    </div>


                </div>
                <div>
                </div>
                <div>
                </div>
            </div>

        </div>
        <div class="sidebar2">
        </div>

        <!-- end .container --></div>
</body>
</html>
