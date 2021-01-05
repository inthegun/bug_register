<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="memberDAO" class="register0104.MemberDAO"/>
    <%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    boolean check = memberDAO.logincheck(id,password);
    
    if(check){
    	
    	session.setAttribute("key", id);
    	response.sendRedirect("index.jsp");
    }else{
    	response.sendRedirect("error.jsp"); 
    	System.out.print("올바르지 않은 게정 정보");
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>