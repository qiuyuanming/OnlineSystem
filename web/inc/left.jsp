<%-- 
    Document   : left
    Created on : 2017-6-20, 21:54:08
    Author     : 123456
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>首页左侧导航</title>
        <link rel="stylesheet" type="text/css" href="../css/public.css" />
        <script type="text/javascript" src="../js/jquery.min.js"></script>
        <script type="text/javascript" src="../js/public.js"></script>
    <head></head>

    <body id="bg">
        <!-- 左边节点 -->
        <div class="container">

            <div class="leftsidebar_box">
                <a href="../jsp page/main.jsp" target="main"><div class="line">
                        <img src="../jsp page/img/coin01.png" />&nbsp;&nbsp;首页
                    </div></a>
                <!-- <dl class="system_log">
                <dt><img class="icon1" src="../img/coin01.png" /><img class="icon2"src="../img/coin02.png" />
                        首页<img class="icon3" src="../img/coin19.png" /><img class="icon4" src="../img/coin20.png" /></dt>
        </dl> -->
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="../jsp page/img/coin03.png" /><img class="icon2"
                                                                          src="../jsp page/img/coin04.png" /> 订单管理<img class="icon3"
                                                                          src="../jsp page/img/coin19.png" /><img class="icon4"
                                                                          src="../jsp page/img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="../jsp page/img/coin111.png" /><img class="coin22"
                                                                            src="../jsp page/img/coin222.png" /><a class="cks" href="../jsp page/order.jsp"
                                                                            target="main">订单管理</a><img class="icon5" src="../jsp page/img/coin21.png" />
                    </dd>
                </dl>

                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="../jsp page/img/coin07.png" /><img class="icon2"
                                                                          src="../jsp page/img/coin08.png" />菜单管理<img class="icon3"
                                                                          src="../jsp page/img/coin19.png" /><img class="icon4"
                                                                          src="../jsp page/img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="../jsp page/img/coin111.png" /><img class="coin22"
                                                                            src="../jsp page/img/coin222.png" /><a href="../jsp page/menu.jsp" target="main"
                                                                            class="cks">菜单管理</a><img class="icon5" src="../jsp page/img/coin21.png" />
                    </dd>
                </dl>
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="../jsp page/img/coin05.png" /><img class="icon2"
                                                                          src="../jsp page/img/coin06.png" /> 产品管理<img class="icon3"
                                                                          src="../jsp page/img/coin19.png" /><img class="icon4"
                                                                          src="../jsp page/img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="../jsp page/img/coin111.png" /><img class="coin22"
                                                                            src="../jsp page/img/coin222.png" /><a href="../jsp page/product.jsp"
                                                                            target="main" class="cks">产品管理</a><img class="icon5"
                                                                            src="../jsp page/img/coin21.png" />
                    </dd>
                </dl>
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="../jsp page/img/coin10.png" /><img class="icon2"
                                                                          src="../jsp page/img/coin09.png" /> 用户管理<img class="icon3"
                                                                          src="../jsp page/img/coin19.png" /><img class="icon4"
                                                                          src="../jsp page/img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="../jsp page/img/coin111.png" /><img class="coin22"
                                                                            src="../jsp page/../img/coin222.png" /><a href="../jsp page/user1.jsp"
                                                                            target="main" class="cks">用户管理</a><img class="icon5"
                                                                            src="../jsp page/img/coin21.png" />
                    </dd>
                </dl>
                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="../jsp page/img/coin11.png" /><img class="icon2"
                                                                          src="../jsp page/img/coin12.png" /> 分类管理<img class="icon3"
                                                                          src="../jsp page/img/coin19.png" /><img class="icon4"
                                                                          src="../jsp page/img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="../jsp page/img/coin111.png" /><img class="coin22"
                                                                            src="../jsp page/img/coin222.png" /><a href="../jsp page/sort.jsp" target="main"
                                                                            class="cks">分类管理</a><img class="icon5" src="../jsp page/img/coin21.png" />
                    </dd>
                </dl>

                <dl class="system_log">
                    <dt>
                        <img class="icon1" src="../jsp page/img/coinL1.png" /><img class="icon2"
                                                                          src="../jsp page/img/coinL2.png" /> 系统管理<img class="icon3"
                                                                          src="../jsp page/img/coin19.png" /><img class="icon4"
                                                                          src="../jsp page/img/coin20.png" />
                    </dt>
                    <dd>
                        <img class="coin11" src="../jsp page/img/coin111.png" /><img class="coin22"
                                                                            src="../jsp page/img/coin222.png" /><a href="../jsp page/changepwd.jsp"
                                                                            target="main" class="cks">修改密码</a><img class="icon5"
                                                                            src="../jsp page/img/coin21.png" />
                    </dd>
                    <dd>
                        <img class="coin11" src="../jsp page/img/coin111.png" /><img class="coin22"
                                                                            src="../jsp page/img/coin222.png" /><a class="cks">退出</a><img
                                                                            class="icon5" src="../jsp page/img/coin21.png" />
                    </dd>
                </dl>

            </div>

        </div>
    </body>

</html>
