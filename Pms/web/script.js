//ID중복확인
function idCheck()
{
	if(regForm.id.value=="")
	{
		alert("ID를 입력하시오");
		regForm.id.focus();
		return;
	}                                    /* queryString  ==> get 방식 */
	var url="idCheck.jsp?userid=" + regForm.id.value;
	window.open(url,'','width=200,height=150');
}
//회원가입확인
function submitOK()
{
	if(regForm.id.value=="")
	{
		alert("ID를 입력하시오");
		regForm.id.focus();
		return;
	}  
	if(regForm.pwd.value=="")
	{
		alert("PASSWORD를 입력하시오");
		regForm.pwd.focus();
		return;
	}  
	if(regForm.repwd.value=="")
	{
		alert("PASSWORD를 한번 더 입력하시오");
		regForm.repwd.focus();
		return;
	}  
	if(regForm.pwd.value != regForm.repwd.value)
	{
		alert("PASSWORD가 일치하지 않습니다\n다시 입력하시오");
		regForm.pwd.value="";
		regForm.repwd.value="";
		regForm.pwd.focus();
		return;
	}  
	if(regForm.name.value=="")
	{
		alert("NAME을 입력하시오");
		regForm.name.focus();
		return;
	} 
	regForm.submit();
}














