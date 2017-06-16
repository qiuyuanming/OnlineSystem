
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录成功</title>
        <link href="../css/style.css" rel="stylesheet ">
    </head>
    <body>
        <h1>${user.userName},欢迎登录婴儿商场！</h1>
        <hr>
        <h3>用户信息</h3>
        <p><span>编号：</span> ${user.userId}</p>
        <p><span>密码：</span> ${user.userPassword}</p>
        <p><span>性别：</span> ${user.userGender}</p>
        <p><span>手机号：</span> ${user.userPhone}</p>
        <p><span>地址：</span> ${user.userAddress}</p>
        <p><span>购物卡号：</span> ${user.userAccount}</p>
        <p><span>账户余额：</span> ${user.userBalance}</p>
    </body>
</html>
