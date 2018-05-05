<%@ page import="com.example.employeeapi.model.Employee" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/employees.css" rel="stylesheet">
    <title>员工列表asp</title>
</head>
<body>

<table>
  <tr>
    <th>编号</th>
    <th>姓名</th>
    <th>年龄</th>
    <th>性别</th>
  </tr>
  <%
      List<Employee> employeeList = (List) request.getAttribute("employeesList");
      if (employeeList.size() != 0) {
          for (int i = 0; i < employeesList.size(); i++) {
  %>
      <tr>
          <td><%=employeesList.get(i).getId() %>
          </td>
          <td><%=employeesList.get(i).getName() %>
          </td>
          <td><%=employeesList.get(i).getAge() %>
          </td>
          <td><%=employeesList.get(i).getGender()%>
          </td>
      </tr>
  <%
          }
      } else {
  %>
      <tr>
          <td colspan="6">数据库中没有数据！</td>
      </tr>
  <%
       }
  %>
</table>

</body>
</html>
