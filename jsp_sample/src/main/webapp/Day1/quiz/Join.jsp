<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join.jsp</title>
</head>
<body>
	<form action="Join_Result.jsp" name="Join">
		<div>
			<label> 아이디 : <input name="userId"></label>
		</div>
		<div>
			<label> 비밀번호 : <input name="pwd" type="password"></label>
		</div>
		<div>
			<label> 비밀번호확인 : <input name="check_pwd" type="password"></label>
		</div>
		<div>
			<label> 이름 : <input name="name" type="text"></label>
		</div>
		<div>
			<label>핸드폰 : 
				<select name="phone">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
			 	</select> 
			</label>
		</div>
		<div>
			<label> 성별 : 
				<input name="gender" type="radio" value="M" checked>남
				<input name="gender" type="radio" value="F">여
			</label>
		</div>
		
		
		<div>
			취미:
			<label><input type="checkbox" name="hobby" value="운동">운동</label>
			<label><input type="checkbox" name="hobby" value="코딩">코딩</label>
			<label><input type="checkbox" name="hobby" value="독서">독서</label>
			<label><input type="checkbox" name="hobby" value="영화감상">영화감상</label>
			<label><input type="checkbox" name="hobby" value="게임">게임</label>
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
		let CheckPwd=Join.check_pwd;
		let name = Join.name
		let gender = Join.gender;
		let check=/^(?=.*[!@#$%^&*()]).{8,}$/;
		
		if(Id.value.length<6){
			alert("아이디는 최소 6글자이상입니다.")
			Id.focus();
			return;
		}
		if(!check.test(Pwd.value)){
			alert("비밀번호는 특수문자 1개 이상 , 8글자 이상입니다.")
			Pwd.focus();
			return;			
		}
		if(Pwd.value!=CheckPwd.value){
			alert("비밀번호가 일치하지않습니다.");
			CheckPwd.focus();
			return;
		} 
		if(name.value.length==0){
			alert("이름을입력해주세요.");
			name.focus();
			return;
		}
		Join.submit()	
	}
	

</script>
