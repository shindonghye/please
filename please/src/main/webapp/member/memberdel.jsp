<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/include/header.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>탈퇴</title>

<style type="text/css">
a {text-decoration:none;}
#tt:hover {color: red; cursor: pointer; font-weight: bolder;}
form {border: 0px solid red;
	  width:1050px; height:auto;}

/* #container {width:1030px; height:40px;
			border: 1px solid blue;
} */
 table {
	border-spacing: 1px;
	border-collapse: separate;
} 

#con {width:1020px; height:auto;
	  border: 1px solid #E4E4E4;
}

#main{width:800px; height:auto;
	  padding-left: 222px;
	  /* border: 1px solid #E4E4E4; */
}
#find{padding-left: 128px;}

#main td {border-top: 0px solid #E4E4E4;
	border-left: 0px solid #E4E4E4;
	border-right: 0px solid #E4E4E4;
 	border-bottom: 0px solid #E4E4E4;
	/* padding-left: 10px; */
	/* padding-right: 10px; */
	padding-top: 6px;
 	font-family: 굴림체;
	font-size: 13px;
}
#p_a {
	padding-top: 10px;
	padding-bottom: 10px;
}
#id {font-family: 굴림체;
	 font-size: 13px;}

#join_btn {
	width: 100px;
	height: 40px;
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
	width: 140px;
	height: 40px;
	background-color: #8C8C8C;
	color: white;
	border: 0px;
	outline: 0px;
	cursor: pointer;
	border-radius: 2px;
	font-family: 굴림체;
	font-size: 11pt;
	font-weight:bold;
}

#main b {color: red;}

#list1, #list2 {line-height:1.8em}

</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">


$(document).ready(function () {
	$("#delform").submit(function () {
		if($.trim($("#join_pass").val()) == "") {
			alert("비밀번호를 입력하세요");
			$("#join_pass").val("").focus();
			return false;
		}
		if($.trim($("#join_delcont").val()) == "") {
			alert("탈퇴사유를 입력하세요");
			$("#join_delcont").val("").focus();
			return false;
		}
		
	})
	
})

</script>
</head>
<body>
<center>
<form id="delform" name="findform" action="/please/memberDel_ok.member" method="post">
<br><br>
	<table>
		<tr>
			<td width=1020 align="right">
				<a id="tt" href="/please/main_.member">
					<font id="tt" STYLE="font-family: 굴림체" color="#747474"	size="2pt">홈</font></a> >
					<font STYLE="font-family: 굴림체" color="black"	size="2pt" ><b> 탈퇴</b></font>
			</td>
		</tr>
		<tr><td>■<b> 탈퇴</b></div></td></tr>
		<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;"><br></td></tr>
	</table>
	
	<div id="con"><br>
	<table id="main" broder-spacing: 0px 0px;><!-- cellspacing="0" -->
			<font size="4px"><b>회원 탈퇴</b></font><br><br>
			<tr><td width=130>
					<img src="/please/member/img/right.png">&nbsp;비밀번호<b>*</b>
				</td>
				<td>
					<input type="password" id="join_pass" autofocus="autofocus"
					       name="join_pass" maxlength="20"/>
				</td>
			</tr>
			<tr><td>
					<img src="/please/member/img/right.png">&nbsp;탈퇴사유<b>*</b>
				</td>
				<td>
					<input type="text" id="join_delcont" autofocus="autofocus"
					       name="join_delcont" maxlength="50"/>
				</td>
			</tr>
			</table><br>
			<tr><input type="submit" name="" onclick="return confirm('정말 탈퇴하시겠습니까?')" id="join_btn" class="img_button" value="확인"></tr><br><br><br>
	</table>
	</div>
</form><br><br><br><br><br><br><br><br><br><br>

<%@include file="/include/footer.jsp"%>

</body>
</html>