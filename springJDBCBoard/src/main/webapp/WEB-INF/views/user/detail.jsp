<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세 정보</title>
<style>
.form-container {
	background: #fff;
	padding: 40px;
	border-radius: 16px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
	width: 100%;
	max-width: 420px;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	margin-bottom: 8px;
	color: #444;
	font-weight: 600;
	font-size: 14px;
}

.form-group input {
	width: 100%;
	padding: 12px 15px;
	border: 1.5px solid #eee;
	border-radius: 10px;
	font-size: 15px;
	transition: 0.3s;
	box-sizing: border-box;
}

.form-group input:focus {
	border-color: #4a90e2;
	outline: none;
	box-shadow: 0 0 0 4px rgba(74, 144, 226, 0.1);
}

.form-group input[readonly] {
	background: #f9f9f9;
	color: #999;
	cursor: not-allowed;
}

.btn-submit {
	width: 100%;
	padding: 15px;
	background: #4a90e2;
	color: white;
	border: none;
	border-radius: 10px;
	font-size: 16px;
	font-weight: 700;
	cursor: pointer;
	transition: 0.3s;
}

.btn-submit:hover {
	background: #357abd;
	transform: translateY(-1px);
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