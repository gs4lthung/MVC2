<%-- 
    Document   : admin
    Created on : 24-01-2024, 08:43:41
    Author     : PC
--%>
<%@page import="java.util.List"%>
<%@page import="sample.sp24.t2s4.user.UserDTO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !"AD".equals(loginUser.getRoleID())) {
                response.sendRedirect("login.html");
                return;
            }
            String search = request.getParameter("search");
            if (search == null) {
                search = "";
            }
        %>
        <h1>Welcome: <%= loginUser.getFullName()%></h1>
        <form action="MainController">
            Search<input type="text" name="search"/>
            <input type="submit" name="action" value="Search"/>
        </form>
        <h4>Result of: "<%=search%>"</h4>
        <%
            List<UserDTO> listUser = (List<UserDTO>) request.getAttribute("LIST_USER");
            if (listUser != null) {
                if (listUser.size() > 0) {%>

        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>User ID</th>
                    <th>Full Name</th>
                    <th>Role ID</th>
                    <th>Password</th>
                    <th>Update</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    for (UserDTO user : listUser) {%>
            <form action="MainController">
                <tr>
                    <td><%= count++%></td>
                    <td><input type="text" name="userID" value="<%=user.getUserID()%>" readonly="true"</td>
                    <td><input type="text" name="fullName" value="<%=user.getFullName()%>"</td>
                    <td><input type="text" name="roleID" value="<%=user.getRoleID()%>"</td>
                    <td><%=user.getPassword()%></td>
                    <td>
                        <input type="submit" name="action" value="Update"/>
                        <input type="hidden" name="search" value="<%=search%>"/>
                    </td>
                </tr>
            </form>
            <%}
            %>
        </tbody>
    </table>

    <%}
        }
    %>
</body>
</html>
