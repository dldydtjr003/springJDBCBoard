<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
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

.result-container {
	background-color: #ffffff;
	padding: 50px 40px;
	border-radius: 12px;
	box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
	text-align: center;
}

.icon-success {
	font-size: 60px;
	color: #4bb543;
	margin-bottom: 20px;
}

h2 {
	color: #333;
	margin-bottom: 10px;
}

p {
	color: #666;
	line-height: 1.6;
	margin-bottom: 30px;
}

.user-name {
	color: #4a90e2;
	font-weight: bold;
}

.btn-login {
	display: block;
	padding: 14px;
	background-color: #4a90e2;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	font-weight: bold;
	transition: background 0.3s;
}

.btn-login:hover {
	background-color: #357abd;
}
.back-link {
	display: block;
	padding: 14px;
	background-color: #4a90e2;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	font-weight: bold;
	transition: background 0.3s;
	margin-bottom: 10px;
}

.back-link:hover {
	background-color: #357abd;
}
</style>
</head>
<body>
	<div class="result-container">

		<h2>${message}</h2>
		<a href="/user/insertForm" class="back-link">메인으로 돌아가기</a>
	</div>
</body>
</html>