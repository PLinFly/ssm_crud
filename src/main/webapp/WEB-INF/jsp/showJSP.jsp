<%--
  Created by IntelliJ IDEA.
  User: bamboo
  Date: 2020/8/29
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div>
    <table align='center' border='1' cellspacing='0'>
        <tr>
            <td>idaaaaaaaaaaaa</td>
            <td>nameaaaaaaaaaaa</td>
            <td>genderaaaaaaaaaa</td>
        </tr>
        <c:forEach items="${sc}" var="c" varStatus="st">
            <tr>
                <td>${c.id}</td>
                <td>${c.name}</td>
                <td>${c.gender}</td>

            </tr>
        </c:forEach>
    </table>
    <div style="text-align:center">
        <a href="?start=0">首  页</a>
        <a href="?start=${page.start-page.count}">上一页</a>
        <a href="?start=${page.start+page.count}">下一页</a>
        <a href="?start=${page.last}">末  页</a>
    </div>
</div>>