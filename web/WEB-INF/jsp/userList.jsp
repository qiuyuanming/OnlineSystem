<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>用户添加管理</title>
        <link rel="stylesheet" type="text/css" href="../css/css.css" />
        <link rel="stylesheet" type="text/css" href="../css/public.css" />
        <script type="text/javascript" src="../js/public.js"></script>
        <script type="text/javascript" src="../js/jquery.min.js"></script>
        <script src="../js/jquery-3.2.0.min.js"></script>
        <script>
            //Json
            function deleteUser(uid) {
                //发送一个ajax请求
                $.ajax({
                    url: 'deleteUser', //deleteUser?userId=U001
                    type: 'GET', //提交请求的方法类型GET或POST等
                    data: 'userId=' + uid, //请求数据
                    success: function () { //请求成功的话执行的js语句
                        $("tr#" + uid).remove();
                    }
                });
            }
        </script>
    </head>


    <body>
        <div class="head">
            <div class="headL">
                <img class="headLogo" src="../img/headLogo.png" />
            </div>
        </div>
        <div class="container">
            <div class="leftsidebar_box">
                <a href="index.html" target="main"><div class="line">
                        <img src="../img/coin01.png" />&nbsp;&nbsp;首页
                    </div
                    ></a>
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
                <a href="menu.html">
                    <dl class="system_log">
                        <dt>
                            <img class="icon1" src="../img/coin07.png" /><img class="icon2"
                                                                              src="../img/coin08.png" />菜单管理<img class="icon3"
                                                                              src="../img/coin19.png" /><img class="icon4"
                                                                              src="../img/coin20.png" />
                        </dt>
                        <dd>
                            <img class="coin11" src="../img/coin111.png" /><img class="coin22"
                                                                                src="../img/coin222.png" /><a href="menu.html" target="main"
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
                <a href="showAllUsers">
                    <dl class="system_log">
                        <dt>
                            <img class="icon1" src="../img/coin10.png" /><img class="icon2"
                                                                              src="../img/coin09.png" /> 用户管理<img class="icon3"
                                                                              src="../img/coin19.png" /><img class="icon4"
                                                                              src="../img/coin20.png" />
                        </dt>
                        <dd>
                            <img class="coin11" src="../img/coin111.png" /><img class="coin22"
                                                                                src="../img/coin222.png" /><a href="showAllUsers"
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
        <div id="pageAll" style="margin-left:220px;">
            <div class="pageTop">
                <div class="page">
                    <img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
                            href="#">用户管理</a>&nbsp;-</span>&nbsp;添加管理
                </div>
            </div>

            <div class="page">
                <!-- banner页面样式 -->
                <div class="connoisseur">
                    <div class="conform">
                        <form>
                            <div class="cfD">
                                <input class="addUser" type="text" placeholder="输入用户名" />
                                <button class="button">搜索</button>
                                <a class="addA addA1" href="forAddUser">添加用户+</a>
                            </div>
                        </form>
                    </div>
                    <div class="conShow">
                        <table border="1" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="66px" class="tdColor tdC">用户编号</td>
                                <td width="170px" class="tdColor">用户名</td>
                                <td width="135px" class="tdColor">性别</td>
                                <td width="145px" class="tdColor">手机号码</td>
                                <td width="140px" class="tdColor">用户地址</td>
                                <td width="140px" class="tdColor">银行卡号</td>
                                <td width="145px" class="tdColor">用户账户余额</td>
                                <td width="130px" class="tdColor">操作</td>
                            </tr>
                            <c:forEach items="${uList}" var="u">
                                <tr>
                                <tr id="${u.userId}">
                                    <td>${u.userId}</td>
                                    <td>${u.userName}</td>
                                    <td>${u.userGender}</td>
                                    <td>${u.userPhone}</td>
                                    <td>${u.userAddress}</td>
                                    <td>${u.userAccount}</td>
                                    <td>${u.userBalance}</td>
                                    <td><a href="forEditUser?userId=${u.userId}"><img class="operation"
                                                                                      src="../img/update.png"></a>
                                        <a href="#"><img class="operation delban"
                                                         src="../img/delete.png"></a></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                    <!-- banner 表格 显示 end-->
                </div>
                <!-- banner页面样式end -->
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
                    <a href="javascript:deleteUser('${u.userId}');" class="ok yes">确定</a><a class="ok no">取消</a>
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