<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
<style>
.container {
	width: 400px;
	margin: 100px auto;
	text-align: center;
	border: 1px solid #ddd;
	padding: 30px;
	border-radius: 10px;
}

.success-icon {
	font-size: 50px;
	color: #4CAF50;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	margin-top: 20px;
	background-color: #007bff;
	color: white;
	text-decoration: none;
	border-radius: 5px;
}
</style>
</head>
<body>

	<div class="container">
		<div class="success-icon">✔</div>
		<h2>회원가입 완료!</h2>
		<p>축하합니다! 회원가입이 정상적으로 처리되었습니다.</p>
		<p>
			<strong>${member.name}</strong>님, 환영합니다!
		</p>

		<a href="/member/memberList" class="btn">회원가입 성공 리스트 확인</a>
	</div>

</body>
</html>