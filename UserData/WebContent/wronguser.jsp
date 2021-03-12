<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String s=request.getParameter("msg");

%>
<script>
alert(" <%=s+"please enter valid email/password"%> ");
window.location.href="login.html";
</script>
 
</body>
</html>