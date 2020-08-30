<%--
  Created by IntelliJ IDEA.
  User: bamboo
  Date: 2020/8/29
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加</title>
</head>
<body>
<div style="width:500px;margin:0px auto;text-align:center">
    <div style="text-align:center;margin-top:40px">
        <form action="${pageContext.request.contextPath}/add" method="post" enctype="application/x-www-form-urlencoded">
            <table border="solid 1px red;" cellspacing="0px" cellpadding="5px" width="600px" >
                <thead>
                <tr style="text-align: center;">
                    <td><input type="checkbox" id="checkAll"/></td>
                    <th>学号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="checkbox" class="checkSimple"/></td>
                    <td><input type="text" name="id" id="id"></td>
                    <td><input type="text" name="name" id="name"></td>
                    <td><input type="text" name="gender" id="gender"></td>
                    <td><input type="submit" id="add" value="添加"/></td>
                </tr>
                </tbody>
            </table>

        </form>
    </div>
</div>
</body>
</html>

