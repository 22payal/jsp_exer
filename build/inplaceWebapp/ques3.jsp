<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<html>
<body>
<%
    try{
        String fn = request.getParameter("fname");
        String ln = request.getParameter("lname");
        int mb = Integer.parseInt(request.getParameter("telno"));
        String em= request.getParameter("email");
        String uid = request.getParameter("uid");
        String pass= request.getParameter("pass");


        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp", "root", "payal");
        PreparedStatement pst = con.prepareStatement("insert into signup values(?,?,?,?,?,?)");
        pst.setString(1,fn);
        pst.setString(2,ln);
        pst.setInt(3,mb);
        pst.setString(4,em);
        pst.setString(5,uid);
        pst.setString(6,pass);

        int i = pst.executeUpdate();

        if(i!=0)
        {
           // session.setAttribute("userid", uid);
            response.sendRedirect("success.jsp");
        }
        else{
            response.sendRedirect("nosuccess.jsp");
        }
    }
    catch (Exception e){
       //out1.println(e);
    }
%>
</body>
</html>