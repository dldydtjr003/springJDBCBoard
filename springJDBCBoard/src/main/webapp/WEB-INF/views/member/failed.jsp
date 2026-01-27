<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 실패</title>
    <style>
        .container { width: 400px; margin: 100px auto; text-align: center; border: 1px solid #f8d7da; padding: 30px; border-radius: 10px; background-color: #fff5f5; }
        .fail-icon { font-size: 50px; color: #dc3545; }
        .btn { display: inline-block; padding: 10px 20px; margin-top: 20px; background-color: #6c757d; color: white; text-decoration: none; border-radius: 5px; }
    </style>
</head>
<body>

<div class="container">
    <div class="fail-icon">✘</div>
    <h2 style="color: #dc3545;">회원가입 실패</h2>
    <p>입력하신 정보에 문제가 있거나 시스템 오류가 발생했습니다.</p>
    <p>잠시 후 다시 시도해 주세요.</p>
    
    <a href="/member/insertForm" class="btn">다시 시도하기</a>
</div>

</body>
</html>