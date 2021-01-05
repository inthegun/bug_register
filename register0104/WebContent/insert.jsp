<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <% request.setCharacterEncoding("utf-8"); %>
    <%-- 가입 처리를 위한 페이지 --%>
    <jsp:useBean id="memberDAO" class="register0104.MemberDAO"/>
    <jsp:useBean id="memberDTO" class="register0104.MemberDTO"/>
    
    <jsp:setProperty property="*" name="memberDTO"/>
    
    <%
    boolean flag = memberDAO.memberInsert(memberDTO);
    %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>
</head>
<body>
<%
if(flag){
	out.println("회원가입 축하");
	out.println("<a href=index.jsp>메인</a>");
}else{
	out.println("다시 가입 부탁");
	out.println("<a href=register.jsp>재가입</a>");
}
%>

</body>
</html>