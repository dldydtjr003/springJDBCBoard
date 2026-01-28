<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
body {
	font-family: 'Pretendard', sans-serif;
	background-color: #f4f7f9;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.login-container {
	background-color: #ffffff;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
}

h2 {
	color: #333;
	text-align: center;
	margin-bottom: 30px;
	font-size: 28px;
	font-weight: 700;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	margin-bottom: 8px;
	color: #555;
	font-weight: 600;
}

.form-group input {
	width: 100%;
	padding: 12px;
	border: 1px solid #ddd;
	border-radius: 8px;
	box-sizing: border-box; /* 패딩 포함 너비 계산 */
	font-size: 16px;
	outline: none;
	transition: border-color 0.3s;
}

.form-group input:focus {
	border-color: #4a90e2;
}

.btn-login {
	width: 100%;
	padding: 14px;
	background-color: #4a90e2;
	color: white;
	border: none;
	border-radius: 8px;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	transition: background 0.3s;
}

.btn-login:hover {
	background-color: #357abd;
}

.login-footer {
	margin-top: 20px;
	text-align: center;
	font-size: 14px;
	color: #777;
}

.login-footer a {
	color: #4a90e2;
	text-decoration: none;
	font-weight: bold;
}

.login-footer a:hover {
	text-decoration: underline;
}
/* 에러 메시지 스타일 */
.error-msg {
	color: #e74c3c;
	font-size: 14px;
	margin-bottom: 15px;
	text-align: center;
}
</style>
</head>
<body>

	<div class="login-container">
		<h2>로그인</h2>

		<c:if test="${not empty message}">
			<div class="error-msg">${message}</div>
		</c:if>

		<form action="/user/login" method="post">
			<div class="form-group">
				<label for="id">아이디</label> <input type="text" id="id" name="id"
					placeholder="아이디를 입력하세요" required>
			</div>

			<div class="form-group">
				<label for="password">비밀번호</label> <input type="password"
					id="password" name="password" placeholder="비밀번호를 입력하세요" required>
			</div>

			<button type="submit" class="btn-login">로그인</button>
		</form>

		<div class="login-footer">
			아직 회원이 아니신가요? <a href="/user/insertForm">회원가입</a>
		</div>
	</div>

</body>
</html>