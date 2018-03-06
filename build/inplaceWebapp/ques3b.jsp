<%@ page import="java.sql.*" %>
<html>
<head>
    <title> Sign in </title>
</head>

<body>

<%
    String uid =request.getParameter("uid");
    String pass= request.getParameter("pass");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        // loads driver
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp", "root", "payal"); // gets a new connection

        PreparedStatement ps = c.prepareStatement("select uid from signup where uid =? and password = ?");
        ps.setString(1, uid);
        ps.setString(2, pass);

        ResultSet rs = ps.executeQuery();

        while (rs.next()) {

            session.setAttribute("userid", uid);
            response.sendRedirect("welcome.jsp");

            return;
        }

       response.sendRedirect("invalid.jsp");

        return;
    } catch ( SQLException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

%>

</body>

</html>