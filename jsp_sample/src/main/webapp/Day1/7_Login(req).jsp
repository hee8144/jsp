<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- form태그의 action을 실행하게 되면(submit) -->
		<!-- 내부에 잇는 inpu박스의 값들을 파라미터로 보낸다 -->
		<!-- 이때 ㅡ name속성이 key, 입력받은 값이 value가 된다 -->
		
		<!--  method 속성은 색량이 가능 . dafault는 get-->
		<!--  get 전송방식은 url(주소)에 값을 담아서 보낸다 .보안에취약한 대신 빠른 처리가능->
		<!-- 사용자 개인정보나 패스워드 등을 전송할 때 사용하면 안된다 -->
		<!-- 간단한 정보를 보낼때 사용 -->
		
		<!-- post전송 방식은 get이랑 반대(데이터를 숨겨서 보낸다) -->
		
		<!-- 실습할떄는 데이터 확인을 위해 주로 get으로 진행하겠습니다. -->
	<form action="8_LoginResult.jsp" method="get">
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
			<input type="submit"> <!-- 클릭시 form태그에 action에 있는 페이지로 이동 -->
		</div>
	</form>
	
</body>
</html>
