<%-- 
    Document   : cusresult
    Created on : 2017-6-18, 15:34:28
    Author     : 盼盼
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
          <fieldset>
            <legend>用户列表</legend>
            <table>
                <c:forEach items="${cusList}" var="cus" >
                  ${cus.users.userName}
                  ${cus.product.productName}
                </c:forEach>
            </table>
        </fieldset>
</html>
