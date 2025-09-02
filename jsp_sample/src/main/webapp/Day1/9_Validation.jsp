<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9_Validation.jsp</title>
</head>
<body>
	<form name="Login" action="Quiz1_Result.jsp" method="get">
		<div>
			<label>
				아이디: <input type="text" name="userId">
			</label>
		</div>
	
		<div>
			<label>
				비밀번호: <input type="password" name="pwd">
			</label>
		</div>
	
		<div>
			<input type="button" value="로그인" onclick="fnCheck()">
			<input type="button" value="회원가입">
			<!-- <button onclick="fnCheck(); return false;">로그인</button> -->
			 <!-- <input type="submit" value="로그인"> --> 
		</div>
	</form>
	
</body>
</html>
<script>
	//아이디 , 비밀번호가 빈값이 아닐때만 action 실행
	function fnCheck(){
		//form 태그에 name을 이용해서 객체 가져오기
		let login = document.Login;
		if(login.userId.value.length == 0){
			alert("아이디를 입력해주세요");
			login.userId.focus();
			return;
		}
		if(login.pwd.value.length == 0){
			alert("비밀번호를 확인해주세요.");
			login.pwd.focus();
			return;
		}
		/* 위에조건을 다 통과했을때 실행 */
		login.submit();
	}
	
	
	
</script>