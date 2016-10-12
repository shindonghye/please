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
	width: 100px;
	height: 30px;
	background-color: #3A4050;
	color: white;
	border: 0px;
	outline: 0px;
	cursor: pointer;
	border-radius: 2px;
	font-family: 굴림체;
	font-size: 9pt;
	/* font-weight:bold; */
}

#write_btn2 {
	width: 100px;
	height: 30px;
	background-color: #E8E8E8;
	color: black;
	border: 0px;
	outline: 0px;
	cursor: pointer; 
	border-radius: 2px;
	font-family: 굴림체;
	font-size: 9pt;
	/* font-weight:bold; */
	border: 1px solid #B4B4B4;
}

#write_btn3 {
	width: 100px;
	height: 30px;
	background-color: white;
	color: black;
	border: 0px;
	outline: 0px;
	cursor: pointer;
	border-radius: 2px;
	font-family: 굴림체;
	font-size: 9pt;
	/* font-weight:bold; */
	border: 1px solid #B4B4B4;
}

/* input {
	vertical-align: middle;
} */

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

</style>

<title>1:1상담문의 글쓰기</title>

</head>
<body>
<center>
	<br><br>
<form id="myform" name="myform" action="/please/consult_Write_ok.con" method="post">
	<table>
		<tr>
			<td width=1020 align="right">
				<a id="tt" href="/please/main_.member">
					<font id="tt" STYLE="font-family: 굴림체" color="#747474"	size="2pt">홈</font></a> >
				<a id="tt" href="/please/myPage.member">
					<font id="tt" STYLE="font-family: 굴림체" color="#747474"	size="2pt" > 마이 페이지</font></a> >
					<font STYLE="font-family: 굴림체" color="black"	size="2pt" ><b> 1:1 맞춤상담</b></font>
			</td>
		</tr>
		<tr><td>■<b> 1:1 맞춤상담</b>
		<font id="tt" STYLE="font-family: 굴림체" color="#747474"	size="2pt" > 
		| 1:1 맞춤상담 게시판입니다.</font>
		</td></tr>
		<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;"><br></td></tr>
	</table>

		<table id="main">

			<tr>
				<td bgcolor="#FBFAFA" style="width: 120px; height: 30px;">&nbsp;제목</td>
				<td><input type="text" title="제목" id="" name="con_subject" value=""
					style="width: 300px; height: 15px;" /></td>
			</tr>
			<tr>
				<td bgcolor="#FBFAFA" style="width: 100px; height: 30px;">&nbsp;작성자</td>
				<td><input type="text" title="" id="" name="con_writer" value="" 
					style="width: 300px; height: 15px;" /></td>
			</tr>
			<tr>
				<td colspan="2" >
				<textarea name="con_content" id="con_content" rows="25" cols="139">1</textarea>
								
<script type="text/javascript">
/* var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "con_content",
    sSkinURI: "../se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
    	
    fOnBeforeUnload : function(){
            //alert("완료!");
	}
} ,

fOnAppLoad : function(){
    //예제 코드
    //oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
     oEditors.getById["con_content"].exec("PASTE_HTML", [""]);
 },
  fCreator: "createSEditor2" 
 
}); */

var oEditors = [];

//전역변수선언
nhn.husky.EZCreator.createInIFrame({
oAppRef: oEditors,
elPlaceHolder: "con_content",
sSkinURI: "../se2/SmartEditor2Skin.html",   
htParams : {
  bUseToolbar : true,            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
  bUseVerticalResizer : true,      // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
  bUseModeChanger : true,         // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
  //aAdditionalFontList : aAdditionalFontSet,      // 추가 글꼴 목록
  fOnBeforeUnload : function(){
     //alert("완료!");
  }
} , //boolean
fOnAppLoad : function(){
  //예제 코드
  //oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
   oEditors.getById["con_content"].exec("PASTE_HTML", [""]);
},
fCreator: "createSEditor2" 

});

//textArea에 이미지 첨부
function pasteHTML(filename){
var sHTML = '<img src="/please/se2/upload/'+filename+'">';
alert(filename)
oEditors.getById["con_content"].exec("PASTE_HTML", [sHTML]);
}

function submitContents(elClickedObj) {
oEditors.getById["con_content"].exec("UPDATE_CONTENTS_FIELD", []);   // 에디터의 내용이 textarea에 적용됩니다.

// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.

try {
   elClickedObj.form.submit();
} catch(e) {}

/*   var oFileUploader = new jindo.FileUploader(jindo.$("e_content"), {
    //업로드할 서버의 URL(Form 전송 대상)
    sUrl : '/daparo/response/FileUpload.php',
    //업로드 이후에 IFRMAME이 리다이렉트될 콜백 페이지 주소
    sCallback : '/Jindo_Component/FileUploader/callback.html',
    //post할 데이터 셋. 예: { blogId : "testid" }
    htData : {}
}); */
}


</script>				
	</td>
</tr>
		<table>
		<div style="width: 1010px;"><br>
			<div style="text-align:left; width: 1010px; float:left;">
				<input type="button" name="" id="write_btn3" value="목록" 
		  			   onclick="history.go(-1);">
		  	</div>
		  	<div style="text-align:right; width: 1010px; position:absolute;">
		  		<input type="submit" name="" id="write_btn" value="등록" onclick="submitContents(this)">
				<input type="button" name="" id="write_btn2" value="취소"
					   onclick="history.go(-1);">
			</div>
		</div>		
		</table>
		<br><br><br>
	</form>	
		<%@include file="/include/footer.jsp"%>
		
</body>
</html>