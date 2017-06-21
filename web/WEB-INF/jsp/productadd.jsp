<%-- 
    Document   : productadd
    Created on : 2017-6-20, 21:41:49
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
                            href="#">产品管理</a>&nbsp;-</span>&nbsp;添加管理
                </div>
            </div>
            <div class="page ">
                <!-- 上传广告页面样式 -->
                <div class="banneradd bor">
                    <div class="baTopNo">
                        <span>产品添加</span>
                    </div>
                    <div class="baBody">

                        <div class="bbD">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;产品编号：<input type="text"
                                                                            class="input3" />
                        </div>
                        <div class="bbD">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;产品名称：<input type="text"
                                                                            class="input3" />
                        </div>
                        <div class="bbD">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;产品价格：<input type="text"
                                                                            class="input3" />
                        </div>
                        <div class="bbD">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;库存数量：<input type="text"
                                                                            class="input3" />
                        </div>
                        <div class="bbD">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图片路径：<input type="text"
                                                                            class="input3" />
                        </div>
                        <div class="bbD">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;产品类型：<input type="text"
                                                                            class="input3" />
                        </div>
                        <div class="bbD">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;详细说明：<input type="text"
                                                                            class="input3" />
                        </div>


                        <div class="bbD">
                            <p class="bbDP">
                                <button class="btn_ok btn_yes" href="#">确认添加</button>
                                <a class="btn_ok btn_no" href="product.jsp">取消</a>
                            </p>
                        </div>
                    </div>
                </div>

                <!-- 上传广告页面样式end -->
            </div>
        </div>
    </body>
</html>
