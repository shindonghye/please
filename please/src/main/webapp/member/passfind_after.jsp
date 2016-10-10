<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	 font-size: 12px;}

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
					<font STYLE="font-family: 굴림체" color="black"	size="2pt" ><b> 비밀번호 찾기</b></font>
			</td>
		</tr>
		<tr><td>■<b> 비밀번호 찾기</b></div></td></tr>
		<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;"><br></td></tr>
	</table>
	

	<div id="con"><br>
	<table id="main" broder-spacing: 0px 0px;><!-- cellspacing="0" -->

	
			<font size="4px"><b>아이디 찾기</b></font><br><br>
			<font color="#008BD5" size="4px"><b>고객님 비밀번호 찾기가 완료 되었습니다.</b></font><br><br>
			<tr>
				<td colspan="3" bgcolor="#FBFAFA" width=180 height=44
				    style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
				<!-- 이미지와 텍스트 높낮이 맞출때 style="vertical-align:top;" -->
				<img src="/please/member/img/q_img.png" style="vertical-align:top;">&nbsp;저희 쇼핑몰을 이용해 주셔셔 감사합니다.
				</td>
			</tr>
			
			<tr><td bgcolor="white" width=20 height=100
					style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
				<center><div id="p_a"><img src="/please/member/img/please_after.png" style="vertical-align:top;" width=80></div>
				</td>
				
				<td id="list1"width=250 style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
					고객님의 비밀번호는<br><font color="red" size="4px">${findpass.getJoin_pass()}</font> 입니다.
				</td>
				
			
			</tr>
			
				
			</table><br><br>
			<font id="id" color="#747474"> 고객님의 비밀번호 찾기가 성공적으로 이루어졌습니다. 항상 고객님의<br>즐겁고 편리한 쇼핑을 위해 최선의 노력을 다하는 쇼핑몰이 되도록 하겠습니다.</font><br><br>
			<tr><input type="submit" name="" id="join_btn" class="img_button" value="로그인">
			</tr><br><br><br>
	</table>
	</div>
</form><br><br><br><br><br><br><br><br><br><br>

<%@include file="/include/footer.jsp"%>

</body>
</html>