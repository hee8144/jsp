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
	
		String query="UPDATE STUDENT SET STU_NAME='"+stuName+"', STU_DEPT='"+stuDept+"', STU_HEIGHT="+stuHeight+" WHERE STU_NO="+stuNo;
		int result =stmt.executeUpdate(query);
		
		if(result > 0){
			out.println("수정되었습니다.");
			
			%>
			<div>
				<a href="Stu-List.jsp"><button>목록으로</button> </a>
			</div>
			
			<%
		} else
			out.println("오류가발생했습니다.");
	%>
</body>
</html>