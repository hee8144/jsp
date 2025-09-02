<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join.jsp</title>
</head>
<body>
	<form action="" name="Join">
		<div>
			<lable> 아이디 : <input name="userId"></lable>
		</div>
		<div>
			<lable> 비밀번호 : <input name="pwd" type="password"></lable>
		</div>
		<div>
			<lable> 비밀번호확인 : <input name="check_pwd" type="password"></lable>
		</div>
		<div>
			<lable> 이름 : <input name="name" type="text"></lable>
		</div>
		<div>
			<lable>핸드폰 : <select><option value="010">010</option> </select> </lable>
		</div>
		<div>
			<lable> 성별 : 
				<input name="gender" type="radio" value="M">남
				<input name="gender" type="radio" value="F">여
			</lable>
		</div>
		
		
		<div>
			취미:
			<lable>  <input type="checkbox" name="hobby" value="운동">운동</lable>
			<lable>  <input type="checkbox" name="hobby" value="코딩">코딩</lable>
			<lable>  <input type="checkbox" name="hobby" value="독서">독서</lable>
			<lable>  <input type="checkbox" name="hobby" value="영화감상">영화감상</lable>
			<lable>  <input type="checkbox" name="hobby" value="게임">게임</lable>
		</div>
		<input type="button" value="가입" onclick="fnJoin()">
	</form>
</body>
</html>
<script>
	
	function fnJoin(){
		let Join = document.Join;
		let Id = Join.userId;
		let Pwd = Join.pwd;
		let CheckPwd=Join.check_pwd.value;
		let check=/^(?=.*[!@#$%^&*()]){8,}$/
		if(Id.value.length<6 || Id.value.length==0){
			alert("아이디는 최소 6글자이상입니다.")
			Id.focus();
			return;
		}
		if(!check.test(Pwd.value)){
			alert("비밀번호는 특수문자 1개 이상 , 8글자 이상입니다.")
			Pwd.focus();
			return;
		}
		if(!Pwd.value.equl(CheckPwd.value)){
		alert("비밀번호가 일치하지않습니다.");
		CheckPwd.focus();
		return;
		}
	}
	

</script>
