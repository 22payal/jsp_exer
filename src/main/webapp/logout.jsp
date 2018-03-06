<html>
<body>

<%
    session.setAttribute("userid", null);
    session.invalidate();
    response.sendRedirect("MainPage.html");
%>
</body>

</html>