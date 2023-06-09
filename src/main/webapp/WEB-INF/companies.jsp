<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.companyemployeeservlet.model.User" %>
<%@ page import="com.example.companyemployeeservlet.model.UserType" %><%--
  Created by IntelliJ IDEA.
  User: Smart
  Date: 23.04.2023
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Companies</title>
</head>
<%List<Company> companies = (List<Company>) request.getAttribute("companies"); %>
<%User user = (User) session.getAttribute("user");%>
<body>
<h2>Companies</h2> <a href="/createCompany">Create Company</a>
<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>country</th>
        <%if (user.getUserType() == UserType.ADMIN) {%>
        <th>action</th>
        <%}%>

    </tr>
    <%if (companies != null && !companies.isEmpty()) {%>
    <% for (Company company : companies) { %>
    <tr>
        <td><%=company.getId()%>
        </td>
        <td><%=company.getName()%>
        </td>
        <td><%=company.getCountry()%>
        </td>
        <%if (user.getUserType() == UserType.ADMIN) {%>
        <td><a href="/removeCompany?id=<%=company.getId()%>">delete</a>
            /<a href="updateCompany?id=<%=company.getId()%>">Update</a></td>
    </tr>
    <%}%>

    <%}%>
    <%}%>
</table>
</body>
</html>

