<%--
  Created by IntelliJ IDEA.
  User: bamboo
  Date: 2020/8/30
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>部门列表</title>
</head>
<body>
<table border="solid 1px red;" cellspacing="0px" cellpadding="5px" width="600px" >
    <thead>
    <tr style="text-align: left;">
        <form action="add" method="post" enctype="application/x-www-form-urlencoded">
            <td colspan="3">
                <input type="submit" value="添加"/>
            </td>
        </form>

        <form action="" method="post" enctype="application/x-www-form-urlencoded">
            <td colspan="3">
                <input  type="submit" value="添加"/>
            </td>
        </form>
    </tr>
    <tr style="text-align: center;">
        <td><input type="checkbox" id="checkAll"/></td>
        <th>ID</th>
        <th>姓名</th>
        <th>性别</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${sc}" var="p">
        <tr style="text-align: center;">
            <td><label>
                <input type="checkbox" class="checkSimple" value="${ p.id }"/>
            </label></td>
            <th>${ p.id }</th>
            <th>${ p.name }</th>
            <th>${ p.gender }</th>
            <td><a href="update">修改</a></td>
            <td><a href="delete?id=${p.id}">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

