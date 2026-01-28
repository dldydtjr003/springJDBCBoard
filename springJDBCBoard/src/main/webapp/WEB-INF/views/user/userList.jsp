<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록 조회</title>
<style>
/* 기존 스타일 유지 */
body {
	font-family: 'Pretendard', sans-serif;
	background-color: #f4f7f9;
	display: flex;
	justify-content: center;
	padding-top: 50px;
	margin: 0;
	min-height: 100vh;
}

.list-container {
	background-color: #ffffff;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
	width: 90%;
	max-width: 800px;
}

h2 {
	color: #333;
	text-align: center;
	margin-bottom: 20px;
	font-size: 26px;
}

/* 검색창 영역 스타일 추가 */
.search-wrapper {
	display: flex;
	justify-content: center;
	margin-bottom: 30px;
}

.search-form {
	display: flex;
	gap: 5px;
}

.search-input {
	padding: 10px 15px;
	border: 1px solid #ddd;
	border-radius: 6px;
	width: 250px;
	outline: none;
}

.search-input:focus {
	border-color: #4a90e2;
}

.btn-search {
	padding: 10px 20px;
	background-color: #555;
	color: white;
	border: none;
	border-radius: 6px;
	font-weight: bold;
	cursor: pointer;
}

.btn-search:hover {
	background-color: #333;
}

/* 나머지 기존 스타일 */
table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th {
	background-color: #f8f9fa;
	color: #555;
	font-weight: 600;
	padding: 15px;
	border-bottom: 2px solid #eee;
	text-align: left;
}

td {
	padding: 15px;
	border-bottom: 1px solid #eee;
	color: #666;
	font-size: 15px;
}

.detail-link {
	color: #4a90e2;
	text-decoration: none;
	font-weight: bold;
}

.btn-home {
	display: inline-block;
	padding: 10px 20px;
	background-color: #4a90e2;
	color: white;
	text-decoration: none;
	border-radius: 6px;
	font-weight: bold;
	float: right;
	margin-bottom: 10px;
}
</style>
</head>
<body>

	<div class="list-container">
		<a href="/user/insertForm" class="btn-home">회원 등록</a>
		<h2>가입 회원 목록</h2>

		<div class="search-wrapper">
			<form action="/user/search" method="get" class="search-form">
				<input type="text" name="name" class="search-input"
					placeholder="검색할 이름을 입력하세요" value="${param.searchName}">
				<button type="submit" class="btn-search">검색</button>
				<c:if test="${not empty param.searchName}">
					<a href="/user/search" class="btn-search"
						style="background-color: #999; text-decoration: none;">초기화</a>
				</c:if>
			</form>
		</div>

		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>이름 (클릭시 상세조회)</th>
					<th>아이디</th>
					<th>비밀번호(보안)</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${userList}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td><a href="/user/detail?name=${user.name}"
							class="detail-link"> ${user.name} </a></td>
						<td><span class="user-id">${user.id}</span></td>
						<td>********</td>
					</tr>
				</c:forEach>

				<c:if test="${empty userList}">
					<tr>
						<td colspan="4"
							style="text-align: center; padding: 50px; color: #999;"><c:choose>
								<c:when test="${not empty param.searchName}">
                                    '${param.searchName}'에 대한 검색 결과가 없습니다.
                                </c:when>
								<c:otherwise>
                                    등록된 회원이 없습니다.
                                </c:otherwise>
							</c:choose></td>
					</tr>
				</c:if>
			</tbody>
		</table>
	</div>

</body>
</html>