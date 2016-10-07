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

#list1, #list2 {line-height:1.8em}

</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("#emailfind1").hide();	
	$("#emailfind2").hide();
});

$(document).ready(function(){
	$("#findform").submit(function(){
	if($("#question").is(":checked") == true) {		
		if($.trim($("#join_name").val())=="") {
			alert("이름을 입력하세요");
			$("#join_name").val("").focus();
			return false;
			}
		if($.trim($("#join_passa").val())=="") {
			alert("답변을 입력하세요");
			$("#join_passa").val("").focus();
			return false;
			}
	} else {
		if($.trim($("#join_name").val())=="") {
			alert("이름을 입력하세요");
			$("#join_name").val("").focus();
			return false;
			}
		if($.trim($("#join_email").val())=="") {
			alert("이메일을 입력하세요");
			$("#join_email").val("").focus();
			return false;
			}
		}	
	});
});

function find(){
	
	if($("#question").is(":checked") == true) {
		$("#qnafind1").show();
		$("#qnafind2").show();
		$("#qnafind3").show();
		$("#qnafind4").show();
		$("#emailfind1").hide();
		$("#emailfind2").hide();
	} else {
		$("#qnafind1").hide();
		$("#qnafind2").hide();
		$("#qnafind3").hide();
		$("#qnafind4").hide();
		$("#emailfind1").show();
		$("#emailfind2").show();
	}
}

</script>
</head>
<body>
<center>
<form id="findform" name="findform" action="/please/logIn.member" method="post">
<br><br>
	<table>
		<tr>
			<td width=1020 align="right">
				<a id="tt" href="/please/main_.member">
					<font id="tt" STYLE="font-family: 굴림체" color="#747474"	size="2pt">홈</font></a> >
					<font STYLE="font-family: 굴림체" color="black"	size="2pt" ><b> 아이디 찾기</b></font>
			</td>
		</tr>
		<tr><td>■<b> 아이디 찾기</b></div></td></tr>
		<tr><td><font color="#747474" size="2px">· 가입하신 방법에 따라 아이디 찾기가 가능합니다.</font></td></tr>
		<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;"><br></td></tr>
	</table>
	
	<div id="con"><br>
	<table id="main" broder-spacing: 0px 0px;><!-- cellspacing="0" -->
			<font size="4px"><b>아이디 찾기</b></font><br><br>
			<tr><td width=130>
					<img src="/please/member/img/right.png">&nbsp;이름
				</td>
				<td>
					<input type="text" id="join_name" autofocus="autofocus"
					       name="join_name" maxlength="15"/>
				</td>
			</tr>
			<tr><td id="find" colspan="2">
					<input type=radio name="findselect" id="question" value="question" onclick="find()" checked="checked">확인질문
					<input type=radio name="findselect" id="email" value="email" onclick="find()">이메일<br><br>
				</td>
			</tr>

			<tr>
				<td>
					<div id="qnafind1">
					<img src="/please/member/img/right.png">&nbsp;확인질문으로 찾기
					</div>
				</td>
				<td><div id="qnafind2">
					<select id="join_passq" name="join_passq" style="width: 340px; height: 22px;">
						<option value="추억장소">기억에 남는 추억의 장소는?</option>
						<option value="좌우명">자신의 인생 좌우명은?</option>
						<option value="보물제1호">자신의 보물 제1호는?</option>
						<option value="선생님">가장 기억에 남는 선생님 성함은?</option>
						<option value="신체비밀">타인이 모르는 자신만의 신체비밀이 있다면?</option>
						<option value="추억날짜">추억하고 싶은 날짜가 있다면?</option>
						<option value="독특선물">받았던 선물 중 기억에 남는 독특한 선물은?</option>
						<option value="유년친구" selected>유년시절 가장 생각나는 친구 이름은?</option>
						<option value="인상깊은책">인상 깊게 읽은 책 이름은?</option>
						<option value="좋아하는구절">읽은 책 중에서 좋아하는 구절이 있다면?</option>
						<option value="두번째존경인물">자신이 두번째로 존경하는 인물은?</option>
						<option value="별명">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
						<option value="짝꿍이름">초등학교 때 기억에 남는 짝꿍 이름은?</option>
						<option value="되고싶은것">다시 태어나면 되고 싶은 것은?</option>
						<option value="좋아하는캐릭터">내가 좋아하는 캐릭터는?</option>
					</select>
					</div>
				</td>
			</tr>
			
			<tr>
				<td><div id="qnafind3">
					<img src="/please/member/img/right.png">&nbsp;확인질문 답변
					</div>
				</td>
				<td><div id="qnafind4">
					<input type="text" id="join_passa" autofocus="autofocus"
					       name="join_passa" maxlength="80" size=""/>
					</div>
				</td>
			</tr>
		
			<!-- 이메일풀네임을 잘라서 dto에 저장시키고 db랑 맞는 이메일이 있는지 확인할것 -->
			
			<tr>
				<td><div id="emailfind1">
					<img src="/please/member/img/right.png">&nbsp;이메일로 찾기
					</div>
				</td>
				<td><div id="emailfind2">
					<input type="text" id="join_email" name="join_email" maxlength="15"/>
					</div>
				</td>
			</tr>
			
			
			</table><br>
			<tr><input type="submit" name="" id="join_btn" class="img_button" value="확인"></tr><br><br><br>
	</table>
	</div>
</form><br><br><br><br><br><br><br><br><br><br>

<%@include file="/include/footer.jsp"%>

</body>
</html>