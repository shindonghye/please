<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품 등록하기 - 관리자 모드</title>
<script type="text/javascript" src="se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<%@include file="/include/header.jsp"%>

<style>
#container {width:100%;}
#a_write {width:1030px; margin:auto;}
.ct {padding-left:10px; background:#FBFAFA; width:130px; height:43px; font-size:12px; font-family: 굴림체; border:1px solid #CCCCCC;}
.ct_a {border:1px solid #CCCCCC;}
#btn {
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

#btn2 {
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

#a_write td {padding-left:10px;}

#ir1 {margin:auto;}

#btnrow {text-align:center;}
#tab {margin:auto;}
.opt {width:100px;}
</style>
</head>
<body>
<form name="joinform" action="/please/item_Ok.item"	method="post">
	<div id="container">
		<table id="tab">
			<tr>
				<td width=1020 align="right">
					<a href="/product/list.html?cate_no=24">
						<font STYLE="font-family: 굴림체" color="#747474"	size="2pt">홈</font></a> >
						<font STYLE="font-family: 굴림체" color="black"	size="2pt" ><b> 상품 등록</b></font>
				</td>
			</tr>
			<tr><td>■<b> 상품 등록</b></div></td></tr>
			<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;"><br></td></tr>
			<tr><td><b id="nomal" align="left">상품정보</b></td></tr>
		</table>
	
		<table id="a_write">
			<tr><td class="ct">상품명</td><td class="ct_a"><input type="text" name="item_name" id="item_name"></td></tr>
			<tr><td class="ct">판매가</td><td class="ct_a"><input type="text" name="item_value" id="item_value"></td></tr>
			<tr><td class="ct">색상</td><td class="ct_a"> ① <input type="text" class="opt" name="item_color1" id="item_color1"> ② <input type="text" class="opt" name="item_color2" id="item_color2"> ③ <input type="text" class="opt" name="item_color3" id="item_color3"> ④ <input type="text" class="opt" name="item_color4" id="item_color4"> ⑤ <input type="text" class="opt" name="item_color5" id="item_color5"></td></tr>
			<tr><td class="ct">사이즈</td><td class="ct_a"> ① <input type="text" class="opt" name="item_size1" id="item_size1"> ② <input type="text" class="opt" name="item_size2" id="item_size2"> ③ <input type="text" class="opt" name="item_size3" id="item_size3"></td></tr>
			<tr><td class="ct">수량</td><td class="ct_a"><input type="text" name="item_amount" id="item_amount"></td></tr>
			<tr><td class="ct">이미지</td><td class="ct_a"><input type="file" name="item_image" id="item_image"></td></tr>
			<tr><td class="ct">내용</td><td class="ct_a"><textarea name="item_cont" id="item_cont" rows="30" cols="119"></textarea></td></tr>
			<tr><td class="ct">관련상품</td><td class="ct_a" name="item_relative" id="item_relative"></td></tr>
			<tr><td colspan="2" id="btnrow"><br><input type="submit" id="btn" value="등록">
					<input type="button" id="btn2" value="취소"  onclick="$('#item_name').focus();"><br><br></td></tr>
		</table>
	</div>
	</form><br><br>
	<%@include file="/include/footer.jsp"%>
</body>

 <script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
    oAppRef: oEditors,
    elPlaceHolder: "ir1",
    sSkinURI: "se2/SmartEditor2Skin.html",
    fCreator: "createSEditor2"
});
</script>
</html>