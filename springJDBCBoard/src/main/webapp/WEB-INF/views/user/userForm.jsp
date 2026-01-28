<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 메인 페이지</title>
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

.main-container {
	background-color: #ffffff;
	padding: 50px 40px;
	border-radius: 16px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
	width: 100%;
	max-width: 500px;
	text-align: center;
}

.welcome-msg {
	margin-bottom: 10px;
	font-size: 18px;
	color: #666;
}

.user-name {
	font-size: 32px;
	color: #333;
	font-weight: 800;
	margin-bottom: 30px;
}

.user-name{
	color: #4a90e2;
}

.menu-grid {
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 15px;
	margin-bottom: 30px;
}

.menu-item {
	padding: 20px;
	background-color: #f8f9fa;
	border: 1.5px solid #eee;
	border-radius: 12px;
	text-decoration: none;
	color: #444;
	font-weight: 600;
	transition: 0.3s;
	display: flex;
	flex-direction: column;
	align-items: center;
	gap: 10px;
}

.menu-item:hover {
	border-color: #4a90e2;
	background-color: #f0f7ff;
	transform: translateY(-3px);
}

.menu-item i {
	font-size: 24px;
}

.btn-logout {
	display: inline-block;
	margin-top: 10px;
	color: #999;
	text-decoration: none;
	font-size: 14px;
	border-bottom: 1px solid #ddd;
	transition: 0.3s;
}

.btn-logout:hover {
	color: #e74c3c;
	border-color: #e74c3c;
}
</style>
</head>
<body>

	<div class="main-container">
		<div class="welcome-msg">반갑습니다! 오늘 하루도 화이팅하세요.</div>
		<%-- 세션에 저장된 loginUser의 이름을 가져옵니다 --%>
		<div class="user-name">
			<h2>${user.name}</h2>님
		</div>

		<div class="menu-grid">
			<a href="/user/detail?name=${user.name}" class="menu-item">
				<span>👤 내 정보 보기</span>
			</a> <a href="/user/userList" class="menu-item"> <span>📋 회원
					목록</span>
			</a> <a href="/user/update?name=${user.name}" class="menu-item">
				<span>⚙️ 정보 수정</span>
			</a>
		</div>

		<a href="/user/insertForm" class="btn-logout"
			onclick="return confirm('로그아웃 하시겠습니까?')">로그아웃</a>
	</div>

</body>
</html>