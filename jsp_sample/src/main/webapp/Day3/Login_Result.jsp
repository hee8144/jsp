<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../db/db.jsp" %>
	<%
		String userId = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		String query = "SELECT * FROM TBL_USER WHERE USERID ='" + userId +"' AND PASSWORD='"+pwd+"'";
		  
		ResultSet rs = null;
		rs =stmt.executeQuery(query);
		
		if(rs.next()){
			String id =rs.getString("USERID");
			String status =rs.getString("STATUS");
			session.setAttribute("sessionId", id);
			session.setAttribute("sessionStatus", status);
			session.setMaxInactiveInterval(60 * 30);
			
			response.sendRedirect("Main.jsp");
		}else{
			out.println("로그인실패");
		}
	%>
</body>
</html>