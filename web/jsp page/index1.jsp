<%-- 
    Document   : index1
    Created on : 2017-6-20, 21:35:42
    Author     : 123456
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>后台控制面板</title>
    </head>
    <frameset rows="100,*" cols="*" scrolling="No" framespacing="0"
              frameborder="no" border="0"> <frame src="../inc/head.jsp"
                                        name="headmenu" id="mainFrame" title="mainFrame"><!-- 引用头部 -->
            <!-- 引用左边和主体部分 --> <frameset rows="100*" cols="220,*" scrolling="No"
                                         framespacing="0" frameborder="no" border="0"> <frame
                    src="../inc/left.jsp" name="leftmenu" id="mainFrame" title="mainFrame">
                    <frame src="main.jsp" name="main" scrolling="yes" noresize="noresize"
                           id="rightFrame" title="rightFrame"></frameset></frameset><noframes></noframes>
                        </html>
