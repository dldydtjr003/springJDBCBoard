<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
<style>
    .container { width: 600px; margin: 50px auto; text-align: center; }
    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
    th, td { border: 1px solid #ddd; padding: 12px; text-align: center; }
    th { background-color: #f4f4f4; }
    tr:hover { background-color: #f9f9f9; }
    .btn { display: inline-block; padding: 10px 15px; background-color: #007bff; color: white; text-decoration: none; border-radius: 5px; margin-top: 20px; }
</style>
</head>
<body>

<div class="container">
    <h2>전체 회원 리스트</h2>
    <table>
        <thead>
            <tr>
                <th>이름</th>
                <th>아이디</th>
                <th>비밀번호</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="member" items="${memberList}">
                <tr>
                    <td>${member.name}</td>
                    <td>${member.id}</td>
                    <td>${member.password}</td>
                </tr>
            </c:forEach>
            <c:if test="${empty memberList}">
                <tr>
                    <td colspan="3">등록된 회원이 없습니다.</td>
                </tr>
            </c:if>
        </tbody>
    </table>
    
    <a href="/member/insertForm" class="btn">추가 회원가입</a>
</div>

</body>
</html>