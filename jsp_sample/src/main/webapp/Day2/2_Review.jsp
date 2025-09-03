<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="form" action="3_Review.jsp">
		<div>이름: <input name="userName"> </div>
		<div>나이: <input name="age"> </div>
		<div>
			<input type="submit" value="전달">
			<input type="button" value="검증후 전달" onclick="fnCheck()">
		</div>
	</form>
</body>
</html>
<script>
	function fnCheck(){
		let form =document.form;
		if(form.userName.value.length == 0){
			alert("이름을입력해주세요.");
			form.userName.focus();
			return;
		}
		
	}
	
	
</script>