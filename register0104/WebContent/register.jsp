<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
	function idCheck(id){
		if(id==""){
			alert("아이디를 입력해 주세요.");
			document.regForm.mem_id.focus();
		}else{
			url="idcheck.jsp?id="+id;
			window.open(url,"post","width=300,height=200");
		}
	}

</script>
</head>
<body>
<table border="1" align='center'>
	<form name='regform' method='post' action='register_ok.jsp'>
		<tr>
			<th colspan="2">회원가입</th>
		</tr>
		<tr>
			<td width="20%">아이디</td>
			<td width="60%"><input type='text' name='id' size='20'> &nbsp;&nbsp;<input type='button' value='중복확인' onclick='idCheck(this.form.id.value)'></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password" name='password' size='20'></td>
		</tr>
		<tr>
			<td>패스워드 확인</td>
			<td><input type='password' name='password_re' size='20'></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type='text' name='name' size='10'></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type='text' name='email' size='30'></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name='phone' size='20'></td>
		</tr>
		<tr>
			<td colspan="2" align='center'>
			<input type='submit' value='회원가입'>&nbsp;&nbsp;&nbsp;<input type="reset" value='다시쓰기'>
		</tr>
	</form>
</table>

</body>
</html>