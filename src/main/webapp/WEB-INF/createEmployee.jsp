<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Smart
  Date: 24.04.2023
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Employee</title>
</head>
<% List<Company> companies = (List<Company>) request.getAttribute("Companies"); %>
<body>
<h2>Create Employee</h2>
<a href="/employees">Back</a>
<form action="/createEmployee" method="post">
    name:<input type="text"name="name"><br>
    surname:<input type="text"name="surname"><br>
    email:<input type="text"name="email"><br>
    <select name="id">
        <%for (Company company : companies) {%>
        <option value="<%=company.getId()%>"><%=company.getName()%> </option>
        <%}%>
    </select>
    <input type="submit" value="add">
</form>
</body>
</html>
