<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세 정보</title>
<style>
/* 전체 배경 및 정렬 */
body {
	font-family: 'Pretendard', -apple-system, sans-serif;
	background-color: #f4f7f9;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

/* 컨테이너박스 */
.detail-container {
	background-color: #ffffff;
	padding: 40px;
	border-radius: 20px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
	width: 100%;
	max-width: 480px;
}

h2 {
	text-align: center;
	color: #333;
	margin-bottom: 30px;
	font-size: 26px;
	font-weight: 700;
}

/* 테이블 스타일 커스텀 */
.info-table {
	width: 100%;
	border-collapse: separate;
	border-spacing: 0;
	margin-bottom: 35px;
	border-top: 2px solid #4a90e2;
}

.info-table th {
	text-align: left;
	padding: 18px 15px;
	background-color: #fcfcfc;
	border-bottom: 1px solid #f0f0f0;
	color: #666;
	width: 35%;
	font-size: 15px;
}

.info-table td {
	padding: 18px 15px;
	border-bottom: 1px solid #f0f0f0;
	color: #333;
	font-weight: 500;
	font-size: 16px;
}

/* 버튼 그룹 레이아웃 */
.btn-group {
	display: grid;
	grid-template-columns: 1fr 1fr; /* 수정/삭제 2열 */
	gap: 12px;
}

/* 공통 버튼 스타일 */
.btn {
	padding: 14px;
	border-radius: 10px;
	text-align: center;
	text-decoration: none;
	font-weight: 700;
	font-size: 15px;
	transition: 0.3s ease;
	display: inline-block;
}

.btn-update {
	background-color: #4a90e2;
	color: white;
}

.btn-update:hover {
	background-color: #357abd;
	transform: translateY(-2px);
}

.btn-delete {
	background-color: #fdeaea;
	color: #e74c3c;
}

.btn-delete:hover {
	background-color: #e74c3c;
	color: white;
	transform: translateY(-2px);
}

.btn-list {
	grid-column: span 2; /* 목록 버튼은 길게 아래로 */
	background-color: #f8f9fa;
	color: #666;
	border: 1px solid #eee;
	margin-top: 5px;
}

.btn-list:hover {
	background-color: #eee;
}
</style>
</head>
<body>

	<div class="detail-container">
		<h2>회원 상세 정보</h2>
		<table class="info-table">
			<tr>
				<th>이름</th>
				<td>${user.name}</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>${user.id}</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>${user.password}</td>
			</tr>
		</table>

		<div class="btn-group">
			<a href="/user/update?name=${user.name}" class="btn btn-update">수정하기</a>

			<a href="/user/delete?name=${user.name}" class="btn btn-delete"
				onclick="return confirm('${user.name}님을 삭제하시겠습니까?')">삭제하기</a> <a
				href="/user/userList" class="btn btn-list">목록으로</a>
		</div>
	</div>

</body>
</html>