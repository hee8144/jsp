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
	
	.contents{
		height:300px;
	}
	.input-txt{
		width:95%
		height:25px
	}
	
</style>
</head>
<body>

<%@ include file="../db/db.jsp" %>

	<%
		String boardNo = request.getParameter("boardNo");	
		ResultSet rs=null;
		String query = "SELECT* FROM TBL_BOARD WHERE BOARDNO ="+boardNo;
		rs=stmt.executeQuery(query);
		if(rs.next()){
		String kind = rs.getString("KIND");
		
	%> 
	<form name="board" action="Board-Edit-Result.jsp">
		<input name="boardNo" value="<%=rs.getString("BOARDNO") %>" hidden>
		<table>
			<tr>
				<th>게시글종류</th>
				<td>
					<select name="kind">
						<option value="1" <%= "1".equals(kind) ? "selected" : "" %>>공지사항</option>
						<option value="2" <%= "2".equals(kind) ? "selected" : "" %>>자유게시판</option>
						<option value="3" <%= "3".equals(kind) ? "selected" : "" %>>문의게시판</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" class="input-txt" value="<%=rs.getString("TITLE") %>"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="userId" value="<%=rs.getString("") %>" class="input-txt"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td class="contents">
					<textarea name="contents"  rows="20" cols="60"><%=rs.getString("CONTENTS") %></textarea>
				 </td>
			</tr>
		</table>
	<%
		}
	%>
		<div>
			<input type="button" value="수정" onclick="fnEdit()">
		</div>
	</form>
	
</body>
</html>
<script>
	function fnEdit(){
		let form = document.board;
		form.submit();
		
	}
</script>
