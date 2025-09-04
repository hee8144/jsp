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
	
	.contents{
		height:300px;
	}
</style>
</head>
<body>
	<%@ include file="../db/db.jsp" %>
	
	<%
		String sessionId = (String) session.getAttribute("sessionId");
		String sessionStatus = (String) session.getAttribute("sessionStatus");
		ResultSet rs =null;
		String boardNo = request.getParameter("boardNo");
		String query = "SELECT B.* ,TO_CHAR(CDATETIME,'YYYY-MM-DD') CTIME FROM TBL_BOARD B WHERE BOARDNO ="+boardNo;
		rs=stmt.executeQuery(query);
		if(rs.next()){
	%>
		
	<!-- 제목 , 작성자 , 작성일 ,내용 -->
	<div id="container">
		<form action="board-Remove.jsp" name="board">
			<input name="boardNo" value="<%= rs.getString("BOARDNO") %>"  hidden>
			<table>
				<tr>
					<th>제목</th>
					<td><%=rs.getString("TITLE") %></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%=rs.getString("USERID") %></td>
				</tr>
				<tr>
					<th>작성일</th>
					<td><%=rs.getString("CTIME") %></td>
				</tr>
				<tr>
					<th>내용</th>
					<td class="contents"><%=rs.getString("CONTENTS") %></td>
				</tr>
			</table>
			<%
				if(sessionId.equals(rs.getString("USERID")) || sessionStatus.equals("A") )
				{
			%>
			<div>
				<!-- <input type="submit" value="삭제"> -->
				<input type="button" value="삭제" onclick="fnRemove()">
				<input type="button" value="수정" onclick="fnEdit()">
			</div>
			<%
			}
			%>
		</form>
	</div>
	<%}else{
		out.println("게시글 조회에 실패했습니다.");
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

	function fnEdit(){
		let board = document.board;
		board.action="Board-Edit.jsp";
		board.submit();
	}
</script>