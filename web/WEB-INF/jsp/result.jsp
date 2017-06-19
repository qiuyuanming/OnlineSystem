
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <fieldset>
            <legend>用户列表</legend>
            <table>
                <c:forEach  items="${List}" var="u" >
                   ${u.users.userName}
                   ${u.users.userGender}
                   ${u.users.userPhone}
                   ${u.users.userAddress}
                   ${u.oList.orderTime}<br/><br/>
                </c:forEach>
            </table>
        </fieldset>
    </body>
</html>
