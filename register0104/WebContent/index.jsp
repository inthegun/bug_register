<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String id = (String)session.getAttribute("key");
	System.out.println(id);
%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	
</script>
<meta charset="UTF-8">
<title>INDEX</title>
</head>
<body>
INDEX 페이지 입니다.
<% 
	if(id != null){
%>
<B><%=id %></B> 님 환영합니다.
<a href="logout.jsp">로그아웃</a>
<%}else{ %>
<a href='register.jsp'>회원가입</a>
<div>
	<form name="login" method="post" action='login_ok.jsp'>
	<p><input type="text" name='id' size='20' placeholder="아이디"></p>
	<p><input type='password' name='password' size="20" placeholder="비밀번호"></p>
	<p><input type='submit' value='로그인'> </p>
	</form>
</div>
</form>
<% } %>






</body>
</html>