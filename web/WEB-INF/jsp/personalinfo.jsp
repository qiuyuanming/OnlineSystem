<%-- 
    Document   : personalinfo
    Created on : 2017-6-20, 17:16:03
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



        <![endif]--></head>

    <body>

        <div class="container">
            <div class="header">
                <div class="topmenu">
                    <div class="menu-hd">
                        <a href="#" target="_top" class="h">欢迎您,</a>
                        <a href="#" target="_top">用户名</a>
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
                     <li><a href="personalinfo.jsp">我的资料</a></li>
                    <li><a href="orderManagement.jsp">订单管理</a></li>
                    <li><a href="correctinfo.jsp">修改信息</a></li>
                    <li><a href="#">退出</a></li>
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
                        <div class="lable">用户名：*** </div>
                        <div class="lable"> 账户余额：*****</div>
                        <div class="lable"> 地址：*********</div>
                        <div class="lable"> 联系方式：********</div>
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
