<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 확인</title>
<script type="text/javascript" src="script.js"></script>
</head>
<body>

<%-- 폼에서 저장한 데이터를 빈에 저장한다.
	빈에서 꺼내어 확인폼을 구성한다
	맞다고 판단되면 확인을 눌러 처리
 --%>

<jsp:useBean id="memberDTO" class="register0104.MemberDTO"/>
<jsp:setProperty property="*" name="memberDTO"/>

<table border="1" align='center'>
	<form name='regform' method='post' action='insert.jsp'>
		<tr>
			<th colspan="2"><jsp:getProperty property="name" name="memberDTO"/>작성한 내용 확인</th>
		</tr>
		<tr>
			<td width="20%">아이디</td>
			<td width="60%"><input type='text' name='id' value='<jsp:getProperty property="id" name="memberDTO"/>'></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type='text' name='name' value='<jsp:getProperty property="name" name="memberDTO"/>'></td>
		</tr>
		<tr>
			<td><input type="hidden" name='password' value='<jsp:getProperty property="password" name="memberDTO"/>'></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type='text' name='email' value='<jsp:getProperty property="email" name="memberDTO"/>'></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name='phone' value='<jsp:getProperty property="phone" name="memberDTO"/>'></td>
		</tr>
		<tr>
			<td>직업</td>
			<td><input type='text' name='job' value='<jsp:getProperty property="job" name="memberDTO"/>'></td>
		</tr>
		<tr>
			<td colspan="2" align='center'>
			<input type='submit' value='회원가입'>&nbsp;&nbsp;&nbsp;<input type="button" value='다시쓰기' onclick="history.back()">
		</tr>
	</form>
</table>

</body>
</html>