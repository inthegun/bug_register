function idCheck(id){
	if(id==""){
		alert("아이디를 입력해 주세요.");
		document.regForm.mem_id.focus();
	}else{
		url="IdCheck.jsp?mem_id="+id;
		window.open(url,"post","width=300,height=150");
	}
}
