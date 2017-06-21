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
        <title>添加菜单</title>
        <link rel="stylesheet" type="text/css" href="css/css.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/public.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/public.js"></script>
    </head>
    <body>
        <!-- 头部 -->
        <div class="head">
            <div class="headL">
                <img class="headLogo" src="../img/headLogo.png" />
            </div>
        </div>
        <div class="container">

            <div class="leftsidebar_box">
                <a href="index.html" target="main"><div class="line">
                        <img src="../img/coin01.png" />&nbsp;&nbsp;首页
                    </div></a>
                <!-- <dl class="system_log">
                <dt><img class="icon1" src="../img/coin01.png" /><img class="icon2"src="../img/coin02.png" />
                        首页<img class="icon3" src="../img/coin19.png" /><img class="icon4" src="../img/coin20.png" /></dt>
        </dl> -->
                <a href="order.html">
                    <dl class="system_log">
                        <dt>
                            <img class="icon1" src="../img/coin03.png" /><img class="icon2"
                                                                              src="../img/coin04.png" /> 订单管理<img class="icon3"
                                                                              src="../img/coin19.png" /><img class="icon4"
                                                                              src="../img/coin20.png" />
                        </dt>
                        <dd>
                            <img class="coin11" src="../img/coin111.png" /><img class="coin22"
                                                                                src="../img/coin222.png" /><a class="cks" href="order.html"
                                                                                target="main">订单管理</a><img class="icon5" src="../img/coin21.png" />
                        </dd>
                    </dl>
                </a>
                <a href="showAllMenu">
                    <dl class="system_log">
                        <dt>
                            <img class="icon1" src="../img/coin07.png" /><img class="icon2"
                                                                              src="../img/coin08.png" />菜单管理<img class="icon3"
                                                                              src="../img/coin19.png" /><img class="icon4"
                                                                              src="../img/coin20.png" />
                        </dt>
                        <dd>
                            <img class="coin11" src="../img/coin111.png" /><img class="coin22"
                                                                                src="../img/coin222.png" /><a href="showAllMenu" target="main"
                                                                                class="cks">菜单管理</a><img class="icon5" src="../img/coin21.png" />
                        </dd>
                    </dl>
                </a>
                <a href="product.html">
                    <dl class="system_log">
                        <dt>
                            <img class="icon1" src="../img/coin05.png" /><img class="icon2"
                                                                              src="../img/coin06.png" /> 产品管理<img class="icon3"
                                                                              src="../img/coin19.png" /><img class="icon4"
                                                                              src="../img/coin20.png" />
                        </dt>
                        <dd>
                            <img class="coin11" src="../img/coin111.png" /><img class="coin22"
                                                                                src="../img/coin222.png" /><a href="product.html"
                                                                                target="main" class="cks">产品管理</a><img class="icon5"
                                                                                src="../img/coin21.png" />
                        </dd>
                    </dl>
                </a>
                <a href="user1.html">
                    <dl class="system_log">
                        <dt>
                            <img class="icon1" src="../img/coin10.png" /><img class="icon2"
                                                                              src="../img/coin09.png" /> 用户管理<img class="icon3"
                                                                              src="../img/coin19.png" /><img class="icon4"
                                                                              src="../img/coin20.png" />
                        </dt>
                        <dd>
                            <img class="coin11" src="../img/coin111.png" /><img class="coin22"
                                                                                src="../img/coin222.png" /><a href="user1.html"
                                                                                target="main" class="cks">用户管理</a><img class="icon5"
                                                                                src="../img/coin21.png" />
                        </dd>
                    </dl>
                </a>
                <a href="sort.html">
                    <dl class="system_log">
                        <dt>
                            <img class="icon1" src="../img/coin11.png" /><img class="icon2"
                                                                              src="../img/coin12.png" /> 分类管理<img class="icon3"
                                                                              src="../img/coin19.png" /><img class="icon4"
                                                                              src="../img/coin20.png" />
                        </dt>
                        <dd>
                            <img class="coin11" src="../img/coin111.png" /><img class="coin22"
                                                                                src="../img/coin222.png" /><a href="sort.html" target="main"
                                                                                class="cks">分类管理</a><img class="icon5" src="../img/coin21.png" />
                        </dd>
                    </dl>
                </a>

            </div>

        </div>
        <div id="pageAll" style="margin-left:220px">
            <div class="pageTop">
                <div class="page">
                    <img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
                            href="#">菜单管理</a>&nbsp;-</span>&nbsp;添加管理
                </div>
            </div>
            <form>
                <div class="page ">
                    <!-- 上传广告页面样式 -->
                    <div class="banneradd bor">
                        <div class="baTopNo">
                            <span>菜单添加</span>
                        </div>
                        <div class="baBody">

                            <div class="bbD">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;菜单编号：<input type="text" name="menuId"
                                                                                class="input3" />
                            </div>
                            <div class="bbD">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;菜单名称：<input type="text" name="menuName"
                                                                                class="input3" />
                            </div>
                            <div class="bbD">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;菜单路径：<input type="text" name="menuURL"
                                                                                class="input3" />
                            </div>


                            <div class="bbD">
                                <p class="bbDP">
                                    <input type="submit" class="btn_ok btn_yes" value="添 加">
                                    <a class="btn_ok btn_no" href="menu.html">取消</a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <!-- 上传广告页面样式end -->
                </div>
            </form>
            <h1>${msg}</h1>
        </div>
    </body>
</html>
