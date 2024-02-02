<%-- 
    Document   : user
    Created on : 24-01-2024, 08:44:24
    Author     : PC
--%>
<%@page import="sample.sp24.t2s4.user.UserDTO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <h1>User information in detail:</h1>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null) {
                loginUser = new UserDTO();
            }
        %>
        </br>User ID:<%= loginUser.getUserID()%>
        </br>Full name<%= loginUser.getFullName()%>
        </br>Role ID <%= loginUser.getRoleID()%>
        </br>Password<%= loginUser.getPassword()%>
    </body>
</html>
