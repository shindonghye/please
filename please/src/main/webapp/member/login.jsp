<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/include/header.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
form {border: 0px solid red;
	  width:1050px; height:auto;}
a {text-decoration:none;}
#tt:hover {color: red; cursor: pointer; font-weight: bolder;}
table {
	border-spacing: 1px;
	border-collapse: separate;
} 

#con {width:1020px; height:310px;
	  border: 1px solid #E4E4E4;
}

#main{width:350px; height:auto;
	  /*  border: 1px solid red; */
}

#main td {border-top: 0px solid #E4E4E4;
	border-left: 0px solid #E4E4E4;
	border-right: 0px solid #E4E4E4;
 	border-bottom: 0px solid #E4E4E4;
	padding-left: 0px;
	padding-right: 0px;
 	font-family: 굴림체;
	font-size: 12px;
}
#id {font-family: 굴림체;
	 font-size: 13px;}

#join_btn {
	background-color: #3A4050;
	color: white;
	border: 0px;
	outline: 0px;
	cursor: pointer;
	border-radius: 2px;
	font-family: 굴림체;
	font-size: 11pt;
	font-weight:bold;
}

#join_btn2 {
	width: 90px;
	height: 25px;
	background-color: #8C8C8C;
	color: white;
	border: 0px;
	outline: 0px;
	cursor: pointer;
	border-radius: 2px;
	font-family: 굴림체;
	font-size: 9pt;
	/* font-weight:bold; */
}

/* #list1, #list2 {line-height:1.8em} */

</style>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#loginform").submit(function(){
		if($.trim($("#login_id").val())=="") {
			alert("아이디를 입력하세요");
			$("#login_id").val("").focus();
			return false;
		}
		if($.trim($("#login_pass").val()) == "") {
			alert("비밀번호를 입력하세요");
			$("#login_pass").val("").focus();
			return false;
		}
	}); 
});

</script>


</head>
<body>
<center>
<form id="loginform" name="loginform" action="/please/main_.member" method="post">
<br><br>
	<table>
		<tr>
			<td width=1020 align="right">
				<a href="/please/main_.member">
					<font id="tt" STYLE="font-family: 굴림체" color="#747474"	size="2pt">홈</font></a> >
					<font STYLE="font-family: 굴림체" color="black"	size="2pt" ><b> 로그인</b></font>
			</td>
		</tr>
		<tr><td>■<b> 멤버쉽 로그인</b></div></td></tr>
		<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;"><br></td></tr>
	</table>
	
	<div id="con"><br>
	<table id="main" broder-spacing: 0px 0px; cellpadding=0 
					 style="border-collapse:collapse;"><!-- cellspacing="0" -->
		<font size="4px"><b>회원로그인</b></font><br><br>
			<tr><td bgcolor="white" width=20% height=15
					style="border: 1px solid #D9D9D9">&nbsp;&nbsp;아이디
				</td>
				<td width=163px height=15><input type="text" id="login_id" name="join_id" style="width: 100%; height: 30px;" autofocus><br></td>
				<td>&nbsp;</td>
				<td rowspan=2 style="border-bottom: 1px solid white;"><input type="submit" name="" id="join_btn" class="img_button" value="로그인" style="width: 92%; height: 100%;"></td>
			</tr>
			<tr><td bgcolor="white" height=15
					style="border-left: 1px solid #D9D9D9;
					border-right: 1px solid #D9D9D9;
					border-bottom: 1px solid #D9D9D9">&nbsp;&nbsp;비밀번호
				</td>
				<td width=163px height=15><input type="password" id="login_pass" name="join_pass" style="width: 100%; height: 30px;"><br></td>
				<td height=15 style="border-bottom: 1px solid white;">&nbsp;</td>
			</tr>
			
			<td colspan="4" width=180 height=60
				    style="border-bottom:1px solid #D9D9D9"><br>
				<!-- 이미지와 텍스트 높낮이 맞출때 style="vertical-align:top;" -->
				&nbsp;<img src="/please/member/img/boan.png" style="vertical-align:top;">&nbsp;보안 접속
				<br><br>
				&nbsp;<img src="/please/member/img/right_arrow.png" style="vertical-align:top;">&nbsp;<a href="/please/idFind.member" id="tt">아이디찾기</a>
				&nbsp;<img src="/please/member/img/right_arrow.png" style="vertical-align:top;">&nbsp;<a href="/please/passFind.member" id="tt">비밀번호찾기</a>
				<br><br><br>
			</td>
			<tr><td colspan="3">
			<br><br>
			<img src="/please/member/img/right.png" >
			회원가입을 하시면 다양하고 특별한<br>&nbsp;&nbsp;혜택이 준비되어 있습니다.</td>
			<td><br><br>&nbsp;&nbsp;
				<input type="button" name="" id="join_btn2" class="img_button" 
					   onclick="location.href='/please/joinForm.member';" value="회원가입 >"></td>
			</tr>
			</table><br>
			
	</div>
</form><br><br><br><br><br><br><br><br><br><br>

<%@include file="/include/footer.jsp"%>

</body>
</html>