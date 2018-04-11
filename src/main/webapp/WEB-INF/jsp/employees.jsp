<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
</head>
<body>

<div>${message}</div>

<table>
  <tr>
    <th>编号</th>
    <th>姓名</th>
    <th>年龄</th>
    <th>性别</th>
  </tr>
  <tr th:each="employee : ${employees}">
    <td th:text="${employee.id}"></td>
    <td th:text="${employee.name}"></td>
    <td th:text="${employee.age}"></td>
    <td th:text="${employee.gender}"></td>
  </tr>
</table>

</body>
</html>
