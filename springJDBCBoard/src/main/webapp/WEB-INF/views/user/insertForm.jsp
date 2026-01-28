<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
body {
	font-family: 'Pretendard', -apple-system, sans-serif;
	background-color: #f4f7f9;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.register-container {
	background-color: #ffffff;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
}

.register-container h2 {
	margin-top: 0;
	margin-bottom: 30px;
	color: #333;
	text-align: center;
	font-size: 24px;
	font-weight: 700;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	margin-bottom: 8px;
	color: #555;
	font-size: 14px;
	font-weight: 600;
}

.form-group input {
	width: 100%;
	padding: 12px;
	border: 1px solid #ddd;
	border-radius: 6px;
	box-sizing: border-box;
	font-size: 16px;
	transition: border-color 0.3s;
}

.form-group input:focus {
	border-color: #4a90e2;
	outline: none;
	box-shadow: 0 0 0 3px rgba(74, 144, 226, 0.1);
}

.btn-submit {
	width: 100%;
	padding: 14px;
	background-color: #4a90e2;
	color: white;
	border: none;
	border-radius: 6px;
	font-size: 16px;
	font-weight: 700;
	cursor: pointer;
	transition: background-color 0.3s;
}

.btn-submit:hover {
	background-color: #357abd;
}

.footer-link {
	margin-top: 20px;
	text-align: center;
	font-size: 13px;
	color: #888;
}

.footer-link a {
	color: #4a90e2;
	text-decoration: none;
}
</style>
</head>
<body>
	<div class="register-container">
		<h2>회원가입</h2>
		<form action="/user/insert" method="post">
			<div class="form-group">
				<label for="name">이름</label> <input type="text" id="name"
					name="name" placeholder="성함을 입력하세요" required>
			</div>

			<div class="form-group">
				<label for="id">아이디</label> <input type="text" id="id" name="id"
					placeholder="사용할 아이디를 입력하세요" required>
			</div>

			<div class="form-group">
				<label for="password">비밀번호</label> <input type="password"
					id="password" name="password" placeholder="비밀번호를 입력하세요" required>
			</div>

			<button type="submit" class="btn-submit">가입하기</button>
		</form>

		<div class="footer-link">
			이미 계정이 있으신가요? <a href="/user/login">로그인하기</a>
		</div>
	</div>
</body>
</html>