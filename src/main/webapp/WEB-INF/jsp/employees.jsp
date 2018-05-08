<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
    <link type="text/css" rel="stylesheet" href="/css/index.css">

</head>
<body>

<div class="table-wrapper">
    <div class="table-hd clearfix">
        <span class="table-cell">编号</span>
        <span class="table-cell">姓名</span>
        <span class="table-cell">年龄</span>
        <span class="table-cell">性别</span>
    </div>
    <c:forEach items="${employees}" var="model" varStatus="status">
        <div class="table-row
        <c:if test='${status.index%2==0}'>even</c:if> clearfix">
            <span class="table-cell">${model.getId()}</span>
            <span class="table-cell">${model.getName()}</span>
            <span class="table-cell">${model.getAge()}</span>
            <span class="table-cell">${model.getGender()}</span>
        </div>
    </c:forEach>

</div>
</body>
</html>