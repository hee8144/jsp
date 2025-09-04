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
		width:500px
	}
	
	.input-txt{
		width:95%
		height:25px
	}
	
</style>
</head>
<body>
	<%@ include file="../../db/db.jsp" %>
	<div id="container">
		<form name="stu" action="Stu-Add-Result.jsp">
			<table>
				<tr>
					<th>학번</th>
					<td>
						<input type="text" name="stuNo" class="input-txt">
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="stuName" class="input-txt"></td>
				</tr>
				<tr>
					<th>학과</th>
					<td>
					<input type="text" name="stuDept" class="input-txt"></td>
				</tr>
				<tr>
					<th>키</th>
					<td>
						<input type="text" name="stuHeight" class="input-txt">
					</td>
				</tr>
			</table>
			<div>
				<input type="button" value="작성" onclick="fnAdd()">
			</div>
		</form>
	y
</body>
</html>
<script>
	function fnAdd(){
		let form = document.board;
		form.submit();
	}
	
	
</script>