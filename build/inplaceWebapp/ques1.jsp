<%@ page import="java.io.PrintWriter" %>
<html>
<head>
<title> question1 </title>
</head>

    <body>

<p> Hello!  The time is now
<% PrintWriter out1= response.getWriter();
    out1.println(java.util.Calendar.getInstance().getTime()) ;%>
</p>
    </body>


</html>