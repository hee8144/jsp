<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join_Result</title>
</head>
<body>
	<div>아이디:
		<%= request.getParameter("userId") %>
	</div>
	<div>비밀번호:
		<%= request.getParameter("pwd") %>
	</div>
	<div>이름:
		<%= request.getParameter("name") %>
	</div>
	<div>성별:
		<%= request.getParameter("gender").equals("M") ? "남자" : "여자" %>
	</div>
	<div>핸드폰:
		<%= request.getParameter("phone") %>
	</div>
	
	<%		
		String hobbys[] = request.getParameterValues("hobby");
		for(int i =0; i<hobbys.length;i++){
			out.println(hobbys[i]);
		}
		%>
</body>
</html>