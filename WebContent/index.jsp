<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>验证身份证号码</title>
</head>
<script type="text/javascript">
function checkIDNum(IDNum){
	var str=IDNum;
	var Expression=/^\d{17}[\d|X]$|^\d{15}$/;
	var objExp=new RegExp(Expression);
	if (objExp.test(str)==true){
		return true;
	}else{
		return false;
	}
}
</script> 
<script type="text/javascript"> 
function check(myform){
	if (myform.number.value==""){
		alert("请输入身份证号码!");myform.number.focus();return;
	}
	if (!checkIDNum(myform.number.value)){
		alert("您输入的身份证号码不正确!");
		myform.number.focus();
		return;
	}
	if (checkIDNum(myform.number.value)){
		alert("您输入的身份证号码正确!");
	}
	myform.submit;
}
</script>
<body>
<font style="font-size:44px">验证身份证号码</font>
<form action="" name="form1" method="post">
请输入身份证号：
<input name="number" type="text" id="number" onkeydown="if(event.keyCode==13){form1.number.focus();}">
<input name="Button" type="button" value="验证" onClick="check(form1)">
</form>
</body>
</html>