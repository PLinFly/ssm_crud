<%--
  Created by IntelliJ IDEA.
  User: bamboo
  Date: 2020/8/30
  Time: 19:15
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
<div style="width:500px;margin:0px auto;text-align:center">
    <div style="text-align:center;margin-top:40px">
        <table border="solid 1px red;" cellspacing="0px" cellpadding="5px" width="600px" style="text-align:center">
            <thead>
            <tr style="text-align: center;">
                <th>ID</th>
                <th>姓名</th>
                <th>性别</th>
                <td>修改</td>
                <td>删除</td>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${sc}" var="p">
                <tr style="text-align: center;">
                    <th>${ p.id }</th>
                    <th>${ p.name }</th>
                    <th>${ p.gender }</th>
                    <td><a href="list/${p.id}">修改</a></td>
                    <td><a href="delete/${p.id}">删除</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <div>
            <a href="?start=0">首  页</a>
            <a href="?start=${page.start-page.count}">上一页</a>
            <a href="?start=${page.start+page.count}">下一页</a>
            <a href="?start=${page.last}">末  页</a>
        </div>
        <%@include file="../jsp/addJSP.jsp"%>
    </div>
</div>
</body>
</html>