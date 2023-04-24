<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Employee" %><%--
  Created by IntelliJ IDEA.
  User: Smart
  Date: 24.04.2023
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employees</title>
</head>
<%List<Employee> employees = (List<Employee>) request.getAttribute("employees"); %>
<body>
<h2>Employees</h2> <a href="/createEmployee">Create Employee</a>
<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>company_id</th>
        <th>action</th>
    </tr>
    <%if (employees != null || !employees.isEmpty()) {%>
    <% for (Employee employee : employees) {%>
    <tr>
        <td><%=employee.getId()%>
        </td>
        <td><%=employee.getName()%>
        </td>
        <td><%=employee.getSurname()%>
        </td>
        <td><%=employee.getEmail()%>
        </td>
        <td><%=employee.getCompany().getId()%>
        </td>
        <td><a href="/removeEmployee?id=<%=employee.getId()%>">delete</a>
            /<a href="/dupdateEmployee?id=<%=employee.getId()%>">Update</a></td>
    </tr>
    <%}%>
    <%}%>
</table>
</body>
</html>
