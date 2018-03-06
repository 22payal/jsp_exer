<html>
<head>
    <title> message screen</title>
</head>

<body>

<%="welcome user "%>
<%=session.getAttribute("userid")%>


<a href="logout.jsp"><button>logout</button></a>
</body>
</html>