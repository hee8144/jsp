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
			out.println("로그인성공");
		}else{
			out.println("로그인실패");
		}
	%>
	


	<!--userId, pwd를 전달받아서  -->
	<!-- TBL_USER테이블이ㅡ 아이디와 비밀번호를 비교해서 -->
	<!-- 값이있으면 '로그인성공' 없으면 '로그인실패'출력 -->
</body>
</html>