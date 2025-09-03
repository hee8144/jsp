<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("userNmae");
		String age = request.getParameter("age");
		
		out.println(name + "님의 나이는 " + age + "입니다.");
	%>
	<div>
	<%=
			name + "님의 나이는 " + age + "입니다."
	%>
	</div>
</body>
</html>