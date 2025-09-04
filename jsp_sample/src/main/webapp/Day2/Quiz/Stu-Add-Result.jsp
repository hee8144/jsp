<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../../db/db.jsp" %>
	
	<%
		String stuNo=request.getParameter("stuNo");
		String stuName=request.getParameter("stuName");
		String stuDept=request.getParameter("stuDept");
		String stuHeight=request.getParameter("stuHeight");
	
		String query="INSERT INTO STUDENT(STU_NO,STU_NAME,STU_DEPT,STU_HEIGHT) VALUES('"+stuNo+"','"+stuName+"','"+stuDept+"','"+stuHeight+"')";
		int result =stmt.executeUpdate(query);
		
		if(result > 0){
			out.println("추가되었습니다.");
			
			%>
			<div>
				<a href="Board-List.jsp"><button>목록으로</button> </a>
			</div>
			
			<%
		} else
			out.println("오류가발생했습니다.");
	%>
</body>
</html>