<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/include/header.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 후</title>

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

#main{width:440px; height:auto;
	  /* border: 1px solid #E4E4E4; */
}

#main td {border-top: 1px solid #E4E4E4;
	border-left: 0px solid #E4E4E4;
	border-right: 0px solid #E4E4E4;
 	border-bottom: 0px solid #E4E4E4;
	padding-left: 10px;
	padding-right: 10px;
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

#list1, #list2 {line-height:1.8em}

</style>
<!-- join_after로 유저가 비정상적인 접근시 메인페이지로 가게끔 설정할것 -->
</head>
<body>
<center>
<form name="joinform" action="/please/logIn.member" method="post">
<br><br>
	<table>
		<tr>
			<td width=1020 align="right">
				<a href="/please/main_.member">
					<font id="tt" STYLE="font-family: 굴림체" color="#747474"	size="2pt">홈</font></a> >
					<font STYLE="font-family: 굴림체" color="black"	size="2pt" ><b> 회원가입</b></font>
			</td>
		</tr>
		<tr><td>■<b> 회원 가입 완료</b></div></td></tr>
		<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;"><br></td></tr>
	</table>
	
	<div id="con"><br>
	<table id="main" broder-spacing: 0px 0px;><!-- cellspacing="0" -->
			<font size="4px"><b>회원가입</b></font><br><br>
			<font color="#008BD5" size="4px"><b>회원가입이 완료 되었습니다.</b></font><br><br>
			<tr>
				<td colspan="3" bgcolor="#FBFAFA" width=180 height=43
				    style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
				<!-- 이미지와 텍스트 높낮이 맞출때 style="vertical-align:top;" -->
				<img src="/please/member/img/q_img.png" style="vertical-align:top;">&nbsp;저희 쇼핑몰을 이용해 주셔셔 감사합니다.
				</td>
			</tr>
			<tr><td bgcolor="white" width=20 
					style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
				<div id="p_a"><img src="/please/member/img/please_after.png" style="vertical-align:top;" width=80></div>
				</td>
				<td id="list1"width=50 style="border-left:1px solid #E4E4E4;border-bottom:1px solid #E4E4E4">아이디<br>이름<br>이메일</td>
				<td id="list2" style="border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">${member.getJoin_id()}<br>${member.getJoin_name()}<br>${member.getJoin_email1()}@${member.getJoin_email2()}</td>				
			</tr>
			</table><br><br>
			<font id="id" color="#747474"><b>${member.getJoin_id()} 님</b>은 [피클즈] 회원이십니다.</font><br><br>
			<tr><input type="submit" name="" id="join_btn" class="img_button" value="로그인">
			<input type="button" name="" id="join_btn2" onclick="location.href='/please/main.member';" value="메인으로 이동"></tr><br><br><br>
	</table>
	</div>
</form><br><br><br><br><br><br><br><br><br><br>

<%@include file="/include/footer.jsp"%>

</body>
</html>