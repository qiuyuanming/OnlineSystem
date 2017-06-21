<%-- 
    Document   : head
    Created on : 2017-6-20, 21:53:56
    Author     : 123456
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>头部</title>
        <link rel="stylesheet" type="text/css" href="../css/public.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/public.js"></script>
    </head>

    <body>
        <!-- 头部 -->
        <div class="head">
            <div class="headL">
                <img class="headLogo" src="../jsp page/img/headLogo.png" />
            </div>
            <div class="headR">
                <p class="p1">
                    欢迎登录
                    <?php echo cookie('name')?>
                </p>

            </div>
            <!-- onclick="{if(confirm(&quot;确定退出吗&quot;)){return true;}return false;}" -->
        </div>

        <div class="closeOut">
            <div class="coDiv">
                <p class="p1">
                    <span>X</span>
                </p>
                <p class="p2">确定退出当前用户？</p>
                <P class="p3">
                    <a class="ok yes" href="#">确定</a><a class="ok no" href="#">取消</a>
                </p>
            </div>
        </div>



    </body>
</html>
