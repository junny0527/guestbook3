<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>삭제 확인</title>
	</head>
	<body>
		<form action="./delete" method="get">
			비밀번호 <input type="password" name="password" value=""><button type ="submit">확인</button>
		<input type ="hidden" name="no" value="${guestbookVo.no}">
		<input type="hidden" name="action" value="delete">
		</form>
		<a href="./addList">메인으로 돌아가기</a>
	</body>
</html> 