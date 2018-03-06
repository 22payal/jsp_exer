<html>
<head>
    <title> Question 2</title>
</head>

<body>
<%
int n = Integer.parseInt(request.getParameter("value"));

%>

<% for(int i = 1; i<=n; i+=1)
{
    %>

<%= i%>

<%
 }
%>



</body>
</html>
