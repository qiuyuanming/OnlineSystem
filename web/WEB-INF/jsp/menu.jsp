

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>菜单管理</title>
        <link rel="stylesheet" type="text/css" href="../css/css.css" />
        <link rel="stylesheet" type="text/css" href="../css/manhuaDate.1.0.css">
        <link rel="stylesheet" type="text/css" href="../css/public.css" />
        <script type="text/javascript" src="../js/jquery.min.js"></script>
        <script type="text/javascript" src="../js/manhuaDate.1.0.js"></script>
        <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
        <script type="text/javascript" src="../js/public.js"></script>
        <script type="text/javascript">
            $(function () {
                $("input.mh_date").manhuaDate({
                    Event: "click", //可选               
                    Left: 0, //弹出时间停靠的左边位置
                    Top: -16, //弹出时间停靠的顶部边位置
                    fuhao: "-", //日期连接符默认为-
                    isTime: false, //是否开启时间值默认为false
                    beginY: 1949, //年份的开始默认为1949
                    endY: 2100//年份的结束默认为2049
                });
            });
        </script>
        <script src="../js/jquery-3.2.0.min.js"></script>
        <script>
            //Json
            function deleteMenu(mid) {
                //发送一个ajax请求
                $.ajax({
                    url: 'deleteMenu', //deleteMenu?menuId=1
                    type: 'GET', //提交请求的方法类型GET或POST等
                    data: 'menuId=' + mid, //请求数据
                    success: function () { //请求成功的话执行的js语句
                        $("tr#" + mid).remove();
                    }
                });
            }
        </script>
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

            <div class="page">
                <!-- vip页面样式 -->
                <div class="vip">
                    <div class="conform">
                        <form>

                            <div class="cfD">
                                <input class="addUser" type="text" placeholder="输入菜单名" />
                                <button class="button">搜索</button>
                                <a class="addA addA1" href="forAddMenu">新增菜单+</a> 
                            </div>
                        </form>
                    </div>
                    <!-- vip 表格 显示 -->
                    <div class="conShow">
                        <table border="1" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="66px" class="tdColor tdC">菜单编号</td>
                                <td width="66px" class="tdColor tdC">菜单名</td>
                                <td width="250px" class="tdColor">路径</td>
                                <td width="130px" class="tdColor">操作</td>
                            </tr>
                            <c:forEach items="${mList}" var="m">
                                <tr id="${m.menuId}">
                                    <td>${m.menuId}</td>
                                    <td>${m.menuName}</td>
                                    <td>${m.menuUrl}</td>
                                    <td><a href="forEditMenu?menuId=${m.menuId}"><img class="operation"
                                                                    src="../img/update.png"></a> <img class="operation delban"
                                                                       src="../img/delete.png"></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <!-- vip 表格 显示 end-->
                </div>
                <!-- vip页面样式end -->
            </div>

        </div>


        <!-- 删除弹出框 -->
        <div class="banDel">
            <div class="delete">
                <div class="close">
                    <a><img src="img/shanchu.png" /></a>
                </div>
                <p class="delP1">你确定要删除此条记录吗？</p>
                <p class="delP2">
                    <a href="javascript:deleteMenu('${m.menuId}');" class="ok yes">确定</a><a class="ok no">取消</a>
                </p>
            </div>
        </div>
        <!-- 删除弹出框  end-->
    </body>

    <script type="text/javascript">
    // 广告弹出框
        $(".delban").click(function () {
            $(".banDel").show();
        });
        $(".close").click(function () {
            $(".banDel").hide();
        });
        $(".no").click(function () {
            $(".banDel").hide();
        });
    // 广告弹出框 end
    </script>
</html>
