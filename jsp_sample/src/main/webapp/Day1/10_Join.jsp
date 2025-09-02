<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Join_Result.jsp">
		<div>
			<lable> 아이디 : <input name="userId"></lable>
		</div>
		<div>
			<lable> 비밀번호 : <input name="pwd" type="password"></lable>
		</div>
		<div>
			취미:
			<lable>  <input type="checkbox" name="hobby" value="운동">운동</lable>
			<lable>  <input type="checkbox" name="hobby" value="코딩">코딩</lable>
			<lable>  <input type="checkbox" name="hobby" value="독서">독서</lable>
			<lable>  <input type="checkbox" name="hobby" value="영화감상">영화감상</lable>
			<lable>  <input type="checkbox" name="hobby" value="게임">게임</lable>
		</div>
		<div>
			<input type="submit" value="가입">
		</div>
	
	</form>
</body>
</html>