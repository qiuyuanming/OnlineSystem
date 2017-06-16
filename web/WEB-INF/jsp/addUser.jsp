<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加产品</title>
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <fieldset>
            <legend>添加产品</legend>
            <form action="addUser">
                <span>用户编号：</span><input type="text" name="userId">
                <br><br>
                <span>用户名称：</span><input type="text" name="userName">
                <br><br>
                <span>密码：</span><input type="text" name="userPassword">
                <br><br>
                <span>性别：</span><input type="radio" name="userGender" value="男">男
                <input type="radio" name="userGender" value="女" checked="checked">女
                <br><br>
                <span>联系方式：<span><input type="text" name="userPhone">
                <br><br>
                <span>地址：</span><input type="text" name="userAddress">
                <br><br>
                <span>购物卡号：</span><input type="text" name="userAccount">
                <br><br>
                <span>卡内余额：</span><input type="text" name="userBalance">
                <br><br>
                <input type="submit" value="添 加">
            </form>
        </fieldset>
    </body>
</html>
