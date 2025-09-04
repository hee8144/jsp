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
		/* text-align:center; */
		border-collapse:collapse;
		padding : 5px 10px;
	}
	
	th{
		background-color: #ccc;
		width:100px
	}
	
	td{
		width:200px
	}
	
	.input-txt{
		width:95%
		height:25px
	}
	
</style>
</head>
<body>
	<%@ include file="../../db/db.jsp" %>
	
	<%
		String stuNo = request.getParameter("stuNo");
		ResultSet rs = null;
		String query = "SELECT * FROM STUDENT WHERE STU_NO="+stuNo;
		rs=stmt.executeQuery(query);
		while(rs.next()){
		%>
		
	<div id="container">
		<form name="stu" action="Stu-Edit-Result.jsp">
			<table>
				<tr>
					<th>학번</th>
					<td>
						<%=rs.getString("STU_NO") %>
						<input hidden type="text" name="stuNo" class="input-txt" value="<%=rs.getString("STU_NO") %>"> 
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="stuName" class="input-txt" value="<%=rs.getString("STU_NAME") %>"></td>
				</tr>
				<tr>
					<th>학과</th>
					<td>
					<input type="text" name="stuDept" class="input-txt" value="<%=rs.getString("STU_DEPT") %>"></td>
				</tr>
				<tr>
					<th>키</th>
					<td>
						<input type="text" name="stuHeight" class="input-txt" value="<%=rs.getString("STU_HEIGHT") %>">
					</td>
				</tr>
			</table>
			<div>
				<input type="button" value="수정" onclick="fnEdit()">
			</div>
		</form>
	</div>
		<% 
		}
	
	%>
</body>
</html>
<script>
	function fnEdit(){
		let form = document.stu;
		form.submit();
	}
	
	
</script>