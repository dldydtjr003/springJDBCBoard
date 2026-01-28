<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
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

.update-container {
	background-color: #ffffff;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
	width: 100%;
	max-width: 400px;
}

h2 {
	text-align: center;
	color: #333;
	margin-bottom: 25px;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	display: block;
	font-weight: 600;
	color: #555;
	margin-bottom: 8px;
}

.form-group input {
	width: 100%;
	padding: 12px;
	border: 1px solid #ddd;
	border-radius: 6px;
	box-sizing: border-box;
	font-size: 15px;
	outline: none;
}

.form-group input:focus {
	border-color: #4a90e2;
}
/* 아이디는 수정 불가능하도록 처리 */
.form-group input[readonly] {
	background-color: #f8f9fa;
	color: #999;
	cursor: not-allowed;
	border: 1px solid #eee;
}

.btn-group {
	display: flex;
	gap: 10px;
	margin-top: 30px;
}

.btn {
	flex: 1;
	padding: 13px;
	border-radius: 6px;
	border: none;
	font-weight: bold;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font-size: 14px;
	transition: 0.3s;
}

.btn-submit {
	background-color: #4a90e2;
	color: white;
}

.btn-submit:hover {
	background-color: #357abd;
}

.btn-cancel {
	background-color: #6c757d;
	color: white;
}

.btn-cancel:hover {
	background-color: #5a6268;
}
</style>
</head>
<body>

	<div class="update-container">
		<h2>회원 정보 수정</h2>

		<form action="/user/update" method="post">

			<div class="form-group">
				<label>이름 (변경 불가)</label> <input type="text" name="name"
					value="${user.name}" readonly>
			</div>

			<div class="form-group">
				<label>아이디</label> <input type="text" name="id"
					value="${user.id}"  required placeholder="수정할 아이디를 입력하세요">
			</div>

			<div class="form-group">
				<label>비밀번호</label> <input type="password" name="password"
					value="${user.password}" required placeholder="새 비밀번호를 입력하세요">
			</div>

			<div class="btn-group">
				<button type="submit" class="btn btn-submit">수정 완료</button>
				<a href="user/userList" class="btn btn-cancel">취소</a>
			</div>

		</form>
	</div>

</body>
</html>