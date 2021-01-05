<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="memberDAO" class="register0104.MemberDAO"/>
    
    <%
    	String id = request.getParameter("id");
    	boolean check = memberDAO.checkID(id);
    %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function win_close(){
		self.close();
	}
</script>
<meta charset="UTF-8">
<title>ID 중복체크</title>
</head>
<body bgcolor="#FFFFDD">

<center>
	<b><%=id %></b>
	<%
		if(check){
			out.println("이미 존재하는 ID 입니다");
		}else{
			out.println("사용 가능한 아이디 입니다.");
		}
	%>
	<a href="#" onClick="win_close()">닫기</a>
</center>

</body>
</html>