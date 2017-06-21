<%-- 
    Document   : productCategoryList
    Created on : 2017-6-20, 2:45:08
    Author     : nifflers
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>产品的全部分类</title>
        <link rel="stylesheet" href="../css/style.css" >
        <script src="../js/jquery-3.2.0.min.js"></script>
        <script>
            function deleteProductCategory() {
                $.ajax({
                    url: 'deleteProductCategory', //delete it.
                    type: 'GET',
                    data: 'productCategoryId' + uid,
                    success: function () {
                        $("tr#" + uid).remove();
                    }
                });
            }
        </script>
    </head>

    <body>
        <fieldset>
            <legend>分类列表</legend>
            <table>
                <tr class="head">
                    <th>用户编号</th>
                    <th>用户名称</th>
                    <th>密码</th>
                </tr>
                <c:forEach items="${productCategory}" var="p">
                    <tr id="${p.procateCategoryID}">
                        <td>${p.procateCategoryID}</td>
                        <td>${p.procateCategoryName}</td>
                    </tr>
                </c:forEach>
            </table>
        </fieldset>
    </body>
</html>
