<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<body>
		<form action="./add" method="post">
			<table border="1" >
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value=""></td>
					<td>비밀번호</td>
					<td><input type="password" name="password" value=""></td>
				</tr>
				<tr>
					<td colspan="4"><textarea name="content" style="width:400px; height:200px;"></textarea></td>
				</tr>
				<tr>
					<td colspan="4"><button type="submit">확인</button>
					<input type ="hidden" name="reg_date" value=""></td>
				</tr>
			</table>
		</form>
		<br>
		
		<c:forEach items="${guestBookList }" var="guestBookList" varStatus="status">
			<table border="1" style="width:400px">
				<tr>
					<td>${guestBookList.no}</td>
					<td>${guestBookList.name}</td>
					<td>${guestBookList.regDate}</td>
					<td><a href="./deleteForm?no=${guestBookList.no}">[삭제]</a></td>
				</tr>
				<tr>
					<td colspan="4">${guestBookList.content}</td>
				</tr>
			</table>
			<br>
		</c:forEach>
	</body>