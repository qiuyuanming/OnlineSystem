<%-- 
    Document   : sort
    Created on : 2017-6-20, 21:42:05
    Author     : 123456
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>话题管理</title>
        <link rel="stylesheet" type="text/css" href="../css/css.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <!-- <script type="text/javascript" src="js/page.js" ></script> -->
    </head>

    <body>
        <div id="pageAll">
            <div class="pageTop">
                <div class="page">
                    <img src="img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
                            href="#">公共管理</a>&nbsp;-</span>&nbsp;分类管理
                </div>
            </div>

            <div class="page">
                <!-- topic页面样式 -->
                <div class="topic">
                    <div class="conform">
                        <form>

                            <div class="cfD">
                                <input class="addUser" type="text" placeholder="产品类型名称" />
                                <button class="button">搜索</button>
                                <a class="addA addA1" href="sortadd.jsp">添加分类+</a>
                            </div>
                        </form>
                    </div>
                    <!-- topic表格 显示 -->
                    <div class="conShow">
                        <table border="1" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="66px" class="tdColor tdC">商品类型编号</td>
                                <td width="200px" class="tdColor">商品类型名称</td>
                                <td width="130px" class="tdColor">操作</td>
                            </tr>
                            <tr>
                                <td>001</td>
                                <td>奶粉类</td>
                                <td><a href="sortadd.html"><img class="operation"
                                                                src="img/update.png"></a> <img class="operation delban"
                                                                   src="img/delete.png"></td>
                            </tr>
                        </table>
                        <div class="paging"><button class="button">导出报表</button></div>
                    </div>
                    <!-- topic 表格 显示 end-->
                </div>
                <!-- topic页面样式end -->
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
                    <a href="#" class="ok yes">确定</a><a class="ok no">取消</a>
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
