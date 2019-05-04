//ID중복확인
function enoCheck()
{
	if(empForm.eno.value=="")
	{
		alert("고유번호를 입력하시오");
		empForm.eno.focus();
		return;
	}                                   
	var url="enoCheck.jsp?eno=" + empForm.eno.value;
	window.open(url,'','width=200,height=150');
}
//회원가입확인
function submitOK()
{
	if(empForm.eno.value=="")
	{
		alert("고유번호를 입력하시오");
		empForm.eno.focus();
		return;
	}  
	if(empForm.ename.value=="")
	{
		alert("이름을 입력하시오");
		empForm.ename.focus();
		return;
	}  
	if(empForm.inday.value=="")
	{
		alert("입사일을 입력하시오");
		empForm.inday.focus();
		return;
	}  

	if(empForm.adr.value=="")
	{
		alert("주소를 입력하시오");
		empForm.adr.focus();
		return;
	} 
	
	if(empForm.phone.value=="")
	{
		alert("전화번호를 입력하시오");
		empForm.phone.focus();
		return;
	} 
	empForm.submit();
}














