<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#container{
		width:700px;
		margin:20px auto;
	}
	table,tr,th,td{
		border:1px solid black;
		text-align:center;
		border-collapse:collapse;
		padding : 5px 10px;
	}
	
	th{
		background-color: #ccc;
		width:100px
	}
	
	td{
		width:500px
	}
	
</style>
</head>
<body>
		<%@ include file="../../db/db.jsp" %>
	
	<%
		ResultSet rs =null;
		String stuNo = request.getParameter("stuNo");
		String query = "SELECT STU_NAME ,S.STU_NO,STU_DEPT,AVG(ENR_GRADE) AVG FROM STUDENT S INNER JOIN ENROL E ON S.STU_NO = E.STU_NO WHERE S.STU_NO='"+stuNo
				+"' GROUP BY STU_NAME,S.STU_NO,STU_DEPT";
		rs=stmt.executeQuery(query);
		if(rs.next()){
	%>
	<div id="container">
		<form action="Stu-Remove.jsp" name="board">
			<input name="stuNo" value="<%= rs.getString("STU_NO") %>"  hidden>
			<table>
				<tr>
					<th>학번</th>
					<td><%=rs.getString("STU_NO") %></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><%=rs.getString("STU_NAME") %></td>
				</tr>
				<tr>
					<th>학과</th>
					<td><%=rs.getString("STU_DEPT") %></td>
				</tr>
				<tr>
					<th>시험평균점수</th>
					<td><%=rs.getString("AVG") %></td>
				</tr>
			</table>
			<div>
				<!-- <input type="submit" value="삭제"> -->
				<input type="button" value="삭제" onclick="fnRemove()">
			</div>
		</form>
	</div>
	<%}else{
		out.println("학생 조회에 실패했습니다.");
	}	%>
	
</body>
</html>
<script>

	function fnRemove(){
		let board = document.board;
		if(!confirm("정말삭제하시겠습니까?")){
			return;
		}
		
		board.submit();
	}
</script>