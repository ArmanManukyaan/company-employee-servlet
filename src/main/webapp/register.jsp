<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Page</title>
</head>
<body>
<%
if(session.getAttribute("user")!= null){
    response.sendRedirect("/home");
}
%>
Register:
<form action="/register" method="post">
    Name: <input name="name" type="text"><br>
    Surname: <input name="surname" type="text"><br>
    Email: <input name="email" type="text"><br>
    Password: <input name="password" type="password"><br>
    <select name="type">
        <option value="ADMIN">ADMIN</option>
        <option value="USER">USER</option>
    </select>
    <input type="submit" value="register">
</form>
<a href="/">Back</a>
</body>
</html>