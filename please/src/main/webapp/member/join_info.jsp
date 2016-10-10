<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/include/header.jsp"%>

<html>
<head>

<style type="text/css">
#join_btn {
	width: 140px;
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
#join_post, #post_btn {margin-top: 5px;}
#join_addr1 {margin-top: 3px;}
#join_addr1, #join_addr2 {margin-bottom: 5px;}
#domain {vertical-align: middle}
input {vertical-align: middle;}
#main{width:1030px; height:40px;}
#sub {
	width:1030px; height:40px;
	border: 1px solid #E4E4E4
}
form {/* border: 1px solid red; */
	  width:1030px; height:auto;}
#main td {border-top: 1px solid #E4E4E4;
	border-left: 1px solid #E4E4E4;
	border-right: 1px solid #E4E4E4;
	border-bottom: 1px solid #E4E4E4;
	padding-left: 10px;
	font-family: 굴림체;
	font-size: 12px;
}

#main b {color: red;}
a {text-decoration:none;}
/* a:hover {text-decoration: underline; color: red;} */
#tt:hover {color: red; cursor: pointer; font-weight: bolder;}
#nomal {text-align: left}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/please/member/js/jquery.js"></script>
<script src="/please/member/js/joincheck.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function openDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('join_post').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('join_addr1').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('join_addr2').focus();
            }
        }).open();
	}
	
/* $("#domain").change(function(){
	   $("#domain option:selected").each(function () {
			
			if($(this).val()== '1'){ //직접입력일 경우
				 $("#join_email2").val('');                        //값 초기화
				 $("#join_email2").attr("disabled",false);		 //활성화
				 $("#join_email2").focus();
			}else{ //직접입력이 아닐경우
				 $("#join_email2").val($(this).text());      //선택값 입력
				 $("#join_email2").attr("disabled",true); //비활성화
			}
	   });
	}); */
/* function domain1() {
		$("#domain").change(function(){
			if($("#domain").val() == "1"){
				$("#join_email2").val("").focus();
				$("#join_email2").attr("disabled",false);
			}else{
				$("#join_email2").val($("#domain").val());
				$("#join_email2").attr("disabled",false);
			}					
		});
} */
</script>

<title>회원가입폼</title>
</head>
<body>
<center>
	<form id="myform" name="myform" action="/please/joinMember.member" method="post">
	<br><br>
		<table>
			<tr>
				<td width=1020 align="right">
					<a href="/please/main_.member" >
						<font id="tt" STYLE="font-family: 굴림체" color="#747474"	size="2pt">홈</font></a> >
						<font STYLE="font-family: 굴림체" color="black"	size="2pt" ><b> 회원 정보 수정</b></font>
				</td>
			</tr>
			<tr><td>■<b> 회원 정보 수정</b></div></td></tr>
			<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;"><br></td></tr>
			<tr><td><b id="nomal" align="left">기본정보</b></td></tr>
		</table>
		
		<table id="main"><!-- cellspacing="0" -->
			<hr align="left" style="border: 0px solid #E4E4E4; width: 1020px;">
			<tr><td bgcolor="#FBFAFA" width=135 height=43>&nbsp;아이디<b>*</b></td>
				<td id="test">
					<input type="text" title="아이디" id="join_id" readonly="readonly"
						   name="join_id" value="${join_id}" maxlength="15" onkeyup="id_check()"/>
					<font id="id_check" STYLE="font-family: 굴림체" color="#747474" size="2pt">(영문소문자/숫자, 4~16자)</font>
					
				</td>
			</tr>
			<tr><td bgcolor="#FBFAFA" height=43>&nbsp;비밀번호<b>*</b></td>
				<td>
					<input type="password" title="비밀번호 입력" id="join_pass"
						   name="join_pass" maxlength="16" value="${member.join_pass}" onkeyup="pass_check1()"/>
					<font id="pass_check1" STYLE="font-family: 굴림체" color="#747474" size="2pt">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</font>
				</td>
			</tr>
			<tr><td bgcolor="#FBFAFA" height=43>&nbsp;비밀번호 확인<b>*</b></td>
				<td>
					<input type="password" title="비밀번호 확인 입력" id="join_pass2"
						   name="join_pass2" maxlength="16" value="${member.join_pass}" onkeyup="pass_check2()"/>
					<font id="pass_check2" STYLE="font-family: 굴림체" color="#747474" size="2pt"></font>
				</td>
			</tr>
			<tr><td bgcolor="#FBFAFA" height=43>&nbsp;비밀번호 확인 질문<b>*</b></td>
				<td>
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
				</td>
			</tr>
			<tr><td bgcolor="#FBFAFA" height=43>&nbsp;비밀번호 확인 답변<b>*</b></td>
				<td>
					<input type="text" title="비밀번호 확인 답변" id="join_passa"
						   name="join_passa" maxlength="80" value="${member.join_passa}" size="80">
				</td>
			</tr>
			<tr><td bgcolor="#FBFAFA" height=43>&nbsp;이름<b>*</b></td>
				<td>
					<input type="text" title="이름" id="join_name"
						   name="join_name" maxlength="30" value="${member.join_name}" size="10">
				</td>
			</tr>
			<tr><td id="gender" bgcolor="#FBFAFA" height=43>&nbsp;성별<b>*</b></td>
				<td>
					<input type=radio name=join_gender id=male value="남자" disabled="disabled">남자
					<input type=radio name=join_gender id=female value="여자" disabled="disabled">여자
				</td>
			</tr>
			
			<tr><td bgcolor="#FBFAFA" height=97>&nbsp;주소<b>*</b></th>
						<td><input type="text" style="width: 100px;" onclick="post_search()"
							       name="join_post" id="join_post" readOnly="readOnly" value="${member.join_post}" size="6">
							<input type="button" id="post_btn" onclick="openDaumPostcode()" value="우편번호 >">
							<div>
								<input type="text" title="주소" name="join_addr1" onclick="post_search()"
									   id="join_addr1" readOnly="readOnly" style="width: 300px;" size=30 value="${join_addr1}">
								<span><font STYLE="font-family: 굴림체"
									  color="#747474" size="2pt">기본주소</font></span>
							</div>
							<div>
								<input type="text" title="주소" name="join_addr2"
									   id="join_addr2" style="width: 300px;" size=30 value="${join_addr2}">
								<span><font STYLE="font-family: 굴림체"
									  color="#747474" size="2pt">나머지주소</font></span>
							</div>
				</td>
			</tr>
			<tr><td bgcolor="#FBFAFA" height=43>&nbsp;휴대전화<b>*</b></td>
				<td>	
					<select id="join_phone1" name="join_phone1" style="width: 60px; height: 22px;">
						<option value="010">010</option>
						<option value="010">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select> - <input type="text" name="join_phone2" id="join_phone2"
							maxlength="4" size="4" value="${join_phone2}"/> - <input type="text" name="join_phone3" id=join_phone3 validate="number"
							allowtype="number" value="${join_phone3}" maxlength="4" / size="4"></td>
			</tr>
			<tr>
				<td height=43 bgcolor="#FBFAFA">&nbsp;이메일<b>*</td>
					<td><input type=text id="join_email1" name="join_email1" height=43 value="${join_email1}"/> ＠ 
					    <input type=text id="join_email2" name="join_email2" height=43 value="${join_email2}" readonly="readonly"/> 
						<select name="domain" id="domain" style="width: 110px; height: 22px;" onchange="domain_list()" value="${domain}">
							<option value="">- 이메일선택 -</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="0">직접입력</option>
					</select>
				</td>
			</tr>
			<tr><td bgcolor="#FBFAFA" height=43>&nbsp;플리즈를 어떻게 알고<br>&nbsp;오셨나요?<b>*</b></td>
				<td>
					<input type="text" title="플리즈를 어떻게 알고 오셨나요?" id="join_know"
						   name="join_know" maxlength="80" value="${join_know}" size="80">
				</td>
			</tr>
		</table>
	
</table><br>
	<input type="submit" name="" id="join_btn" value="회원정보 수정">
	<input type="button" name="" id="join_btn2" value="취소"
		   onclick="location.href='history.go(-1)';">
</form><br><br>
<%@include file="/include/footer.jsp"%>

</body>
</html>