<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@include file="/include/header.jsp"%>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>

<style type="text/css">
#write_btn {
	width: 80px;
	height: 30px;
	background-color: #3A4050;
	color: white;
	border: 0px;
	outline: 0px;
	cursor: pointer;
	border-radius: 2px;
	font-family: 굴림체;
	font-size: 11pt;
	font-weight: bold;
}

#write_btn2 {
	width: 55px;
	height: 20px;	
	background-color: #8C8C8C;
	color: white;
	border: 0px;
	outline: 0px;
	cursor: pointer;
	border-radius: 2px;
	font-family: 굴림체;
	font-size: 11pt;
	font-weight: bold;
}

#write_btn3 {
	width: 55px;
	height: 20px;	
	background-color: #8C8C8C;
	color: white;
	border: 0px;
	outline: 0px;
	cursor: pointer;
	border-radius: 2px;
	font-family: 굴림체;
	font-size: 11pt;
	font-weight: bold;
}

#join_post, #post_btn {
	margin-top: 5px;
}

#join_addr1 {
	margin-top: 3px;
}

#join_addr1, #join_addr2 {
	margin-bottom: 5px;
}

input {
	vertical-align: middle;
}

#main {
	width: 1030px;
	height: 40px;
}

#sub {
	width: 1030px;
	height: 40px;
	border: 1px solid #E4E4E4
}

form { /* border: 1px solid red; */
	width: 1030px;
	height: auto;
}

#main td {
	border-top: 1px solid #E4E4E4;
	border-left: 1px solid #E4E4E4;
	border-right: 1px solid #E4E4E4;
	border-bottom: 1px solid #E4E4E4;
	padding-left: 10px;
	font-family: 굴림체;
	font-size: 12px;
}

a {
	text-decoration: none;
}

#nomal {
	text-align: left
}
</style>

<title>Q&A write</title>

</head>
<body>
<center>
	<form name="joinform" method="post" action="/please01/QandA_write_ok.qna">

		<table>
			<tr>
				<td width=1020 align="right"><a
					href="/product/list.html?cate_no=24"> <font
						STYLE="font-family: 굴림체" color="#747474" size="2pt">홈</font></a> > <a
					STYLE="font-family: 굴림체" color="black" size="2pt"><b>
							상품Q&A</b></font></td>
			</tr>
			<tr>
				<td>■<b> 상품 Q&A </b> <font STYLE="font-family: 굴림체"
					color="#747474" size="1pt">상품 Q&A 입니다</font>
				</div></td>
			</tr>
			<tr>
				<td><hr align="left"
						style="border: 1px solid #E4E4E4; width: 1020px;">
					<br></td>
			</tr>

		</table>

		<table id="main">

			<tr>
				<td bgcolor="#FBFAFA" style="width: 120px; height: 30px;">&nbsp;제목</td>
				<td><input type="text" title="제목" id="" name="" value="문의드립니다"
					style="width: 300px; height: 15px;" readonly="readonly"/></td>
				<th colspan="2"><div id="idcheck"></div></th>
			</tr>
			<tr>
				<td bgcolor="#FBFAFA" style="width: 100px; height: 30px;">&nbsp;작성자</td>
				<td><input type="text" title="작성자" id="" name=""
					style="width: 100px; height: 15px;" value="" onkeyup=""></td>
				<th colspan="2"><div id="idcheck"></div></th>
			</tr>
			<tr>
				<td bgcolor="#FBFAFA" style="width: 100px; height: 30px">&nbsp;이메일</td>
				<td><input type="text" title="이메일" id="" name=""
					style="width: 100px; height: 15px;" value="" onkeyup=""> @
					<input type="text" title="이메일" id="" name=""
					style="width: 100px; height: 15px;" value="" onkeyup=""> <select
					id="join_passq" name="join_passq"
					style="width: 120px; height: 20px;">
						<option value="naver">naver.com</option>
						<option value="daum">daum.net</option>
						<option value="nate">nate.com</option>
						<option value="hotmail">hotmail.com</option>
						<option value="yahoo">yahoo.com</option>
						<option value="gmail">gmail.com</option>
						<option value="dreamwiz">dreamwiz.com</option>
						<option value="직접입력" selected>직접입력</option>

				</select></td>
				<th colspan="2"><div id="idcheck"></div></th>
			</tr>

			<tr>
				<td colspan="2" ><textarea name="ir1" id="ir1" rows="20" cols="139">
				1.주문자이름:<br>
				2.주문날짜:<br>
				3.연락처:<br><br>

				4.문의내용:<br>
				</textarea>
								
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "ir1",
    sSkinURI: "../se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});
</script>				
				</td>
				<th colspan="2"><div id="idcheck"></div></th>
			</tr>

			<tr>
				<td bgcolor="#FBFAFA" style="width: 100px; height: 30px">&nbsp;UCC URL</td>
				<td>
				<input type="text" title="UCC URL" id="" name="" value=""
					style="width: 100px; height: 15px;" />
					 &nbsp;넓이 <input type="text" style="width: 50px; height: 30px" value="400">
					 &nbsp;높이 <input type="text" style="width: 50px; height: 30px" value="200"> </td>
				<th colspan="2"><div id="idcheck"></div></th>
			</tr>
			<tr>
				<td bgcolor="#FBFAFA" style="width: 100px; height: 30px">&nbsp;비밀번호</td>
				<td>
					<input type="text" title="비밀번호" id="" name="" value=""
					style="width: 100px; height: 15px;" /></td>
				<th colspan="2"><div id="idcheck"></div></th>
			</tr>
			<tr><td bgcolor="#FBFAFA" style="width: 100px; height: 30px">&nbsp;비밀글 설정</td>
				<td>
					<input type=radio name=join_gender id=male value="공개글">공개글
					<input type=radio name=join_gender id=female value="비밀글">비밀글
				</td>
				<th colspan="2"><div id="idcheck"></div></th>
			</tr>
			
			<tr><td bgcolor="#FBFAFA" style="width: 100px; height: 80px">&nbsp;자동 발송금지<br>&nbsp;보안문자</td>							
				<td>
				<img id="captchaImg" <%=request.getContextPath() %> src="/captcha" alt="captcha img"><br>
				<input type="text" placeholder="보안문자를 입력하세요" name="captcha">
				<a onclick="imgRefresh()" id="refreshBtn" >새로고침</a>									
				</td>
				<th colspan="2"><div id="idcheck"></div></th>
			</tr>
			
			<tr><td bgcolor="#FBFAFA" style="width: 100px; height: 15px;">&nbsp;개인정보 수집<br>&nbsp;및 이용동의</td>
				<td>
				<font STYLE="font-family: 굴림체" color="#747474"	size="2px">
			<div style="aligh:center; background-color:white;
				 border: 1px solid #E4E4E4; 
				 overflow-y:scroll; width:580px; height:140px;  margin:2px 2px 2px -8px; padding:20px; border:1 solid #000000;">
		    	  ■ 개인정보의 수집·이용 목적<br>서비스 제공 및 계약의 이행 대금결제, 물품배송 또는 청구지 발송, 회원관리 등을 위한 목적<br><br>
		    	  ■ 수집하려는 개인정보의 항목<br>이름, 주소, 연락처, 이메일 등<br><br>
		    	  ■ 개인정보의 보유 및 이용 기간<br>회사는 개인정보 수집 및 이용목적이 달성된 후에는 예외없이 해당정보를 파기합니다. <br>
			</div>개인정보 수집에 동의하십니까?						
				<input type=radio name=join_gender id=male value="동의함">동의함
				<input type=radio name=join_gender id=female value="동의안함">동의안함
					   					
			</td>
				<th colspan="2"><div id="idcheck"></div></th>
			</tr>

		</table><br><br>
		<div style="text-align:left">
		<input type="button" name="" id="write_btn2"  value="목록">
		</div>
		<div style="text-align:right">
		<input type="submit" name="" id="write_btn2"  style="text-align:right" value="등록">
		<input type="button" name="" id="write_btn2"  style="text-align:right" value="취소">
		</div>
		<br><br><br>
		
		<%@include file="/include/footer.jsp"%>
		
</body>
</html>