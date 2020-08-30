<%--
  Created by IntelliJ IDEA.
  User: bamboo
  Date: 2020/8/29
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>删除</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/delete" method="post" enctype="application/x-www-form-urlencoded">
    <table border="solid 1px red;" cellspacing="0px" cellpadding="5px" width="600px" >
        <thead>
        <tr style="text-align: center;">
            <td><input type="checkbox" id="checkAll"/></td>
            <th>ID</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><input type="checkbox" class="checkSimple"/></td>
            <td><input type="text" name="id" id="id"></td>
            <td><input type="submit" id="delete" value="删除"/></td>
        </tr>
        </tbody>
    </table>
<%--    <p style="color: red">${delete}</p>
    <a href="${pageContext.request.contextPath}/select">返回</a>--%>
</form>
</body>
</html>

