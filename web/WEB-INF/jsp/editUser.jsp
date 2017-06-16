
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>编辑用户</title>
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <fieldset>
            <legend>编辑用户</legend>
            <form action="editUser">
                <span>用户编号：</span><input type="text" name="userId" value="${user.userId}" >
                <br><br>
                <span>用户名称：</span><input type="text" name="userName" value="${user.userName}" >
                <br><br>
                <span>密码：</span><input type="text" name="userPassword" value="${user.userPassword}">
                <br><br>
                <span>性别：</span><input type="text" name="userGender" value="${user.userGender}">
                <br><br>
                <span>联系方式：<span><input type="text" name="userPhone" value="${user.userPhone}">
                <br><br>
                <span>地址：</span><input type="text" name="userAddress" value="${user.userAddress}">
                <br><br>
                <span>购物卡号：</span><input type="text" name="userAccount" value="${user.userAccount}">
                <br><br>
                <span>卡内余额：</span><input type="text" name="userBalance" value="${user.userBalance}">
                <br><br>
                <input type="submit" value="提交更改">
            </form>
        </fieldset>
    </body>
</html>
