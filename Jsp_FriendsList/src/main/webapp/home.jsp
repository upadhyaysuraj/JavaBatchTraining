<%@ page import="com.java.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	
	<%
		User user = (User)session.getAttribute("user");
		if(user == null) response.sendRedirect("login.jsp");
	%>
		
	<jsp:include page="heading.jsp"/>
	
	<h3 align="center">Welome <%=user.getName()%>! </h3>
	
</body>
</html>