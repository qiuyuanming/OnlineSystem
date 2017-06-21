<%-- 
    Document   : menuadd
    Created on : 2017-6-20, 21:40:38
    Author     : 123456
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>行家添加</title>
        <link rel="stylesheet" type="text/css" href="../css/css.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
    </head>
    <body>
        <div id="pageAll">
            <div class="pageTop">
                <div class="page">
                    <img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
                            href="#">菜单管理</a>&nbsp;-</span>&nbsp;添加管理
                </div>
            </div>
            <div class="page ">
                <!-- 上传广告页面样式 -->
                <div class="banneradd bor">
                    <div class="baTopNo">
                        <span>菜单添加</span>
                    </div>
                    <div class="baBody">

                        <div class="bbD">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;菜单编号：<input type="text"
                                                                            class="input3" />
                        </div>
                        <div class="bbD">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;菜单名称：<input type="text"
                                                                            class="input3" />
                        </div>
                        <div class="bbD">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;菜单路径：<input type="text"
                                                                            class="input3" />
                        </div>


                        <div class="bbD">
                            <p class="bbDP">
                                <button class="btn_ok btn_yes" href="#">确认修改</button>
                                <a class="btn_ok btn_no" href="menu.jsp">取消</a>
                            </p>
                        </div>
                    </div>
                </div>

                <!-- 上传广告页面样式end -->
            </div>
        </div>
    </body>

</html>
