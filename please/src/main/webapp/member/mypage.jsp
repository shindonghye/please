<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/include/header.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
<style type="text/css">

a {text-decoration:none;}
#ttt:hover {color: red; cursor: pointer; font-weight: bolder;}

#con1 {width:1020px; height:95px;
	  border: 5px solid #E4E4E4;}
	  
#con2 {width:1025px; height:95px;
	  border: 0px solid #E4E4E4;}
	  
#main{width:100%; height:95px;
	  /* border: 1px solid #E4E4E4; */
}

#tt:hover {background-color: #E6E6E6;
cursor: pointer;}

#main td {
	border-top: 1px solid #E4E4E4;
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
	 
#id2 {font-family: 굴림체;
	 font-size: 11px;}
	 
#id3 {font-family: 굴림체;
	 font-size: 12px;}

#cont {font-family: 고딕체;
	 font-size: 16px;}

#list1, #list2 {line-height:1.4em;
}
</style>
</head>
<body>

<center>
	<form id="myform" name="myform" action="/please/joinMember.member" method="post">
	<br><br>
		<table>
			<tr>
				<td width=1020 align="right">
					<a href="/please/main_.member">
						<font id="ttt" STYLE="font-family: 굴림체" color="#747474"	size="2pt">홈</font></a> >
						<font STYLE="font-family: 굴림체" color="black"	size="2pt" ><b> 마이 페이지</b></font>
				</td>
			</tr>
			<tr><td>■<b> 마이 페이지</b></div></td></tr>
			<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1030px;"><br></td></tr>
			
		</table>
		
	<div id="con1">
	<table id="main" broder-spacing: 0px 0px;><!-- cellspacing="0" -->
			<tr><td bgcolor="white" width=20 
					style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
				<div style="border-left:0px solid #E4E4E4; border-right:0px solid #E4E4E4; border-bottom:0px solid #E4E4E4" id="p_a"><img src="/please/member/img/please_after.png" style="vertical-align:top;" width=80></div>
				</td>
				<td id="list1"width=1000 style="vertical-align:top; border-left:1px solid #E4E4E4;border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4"><br><font id="id" color="#747474">저희 쇼핑몰을 이용해 주셔셔 감사합니다.</font><font id="id" color="#008BD5"><b>&nbsp;${join_id}</b></font><font id="id" color="#747474"> 님은 <b>[피클즈]</b> 회원이십니다.</font></td>
			</tr>
			</table>
	</table>
	</div>
	<br>
	<hr align="center" style="border: 0px solid #333333; width: 1025px;"><br>
	<div id="con2" >
		<table id="main"><!-- cellspacing="0" --><!-- <a href="/please/main.member"> -->
			<tr id="tt" onclick="location.href='/please/main.member';">
				<td id="list1"width=1000 style="vertical-align:top; border-left:1px solid #E4E4E4;border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4; padding-left:23px;"><br>
				<font id="cont"><b>Order</b></font>&nbsp;<font id="id2">주문내역 조회</font><br>
				<font id="id3">고객님께서 주문하신 상품의 주문내역을 확인하실 수 있습니다.<br>비회원의 경우, 주문서의 주문번호와 비밀번호로 주문조회가 가능합니다.</font>
				</td>
				<td bgcolor="white" width=20 
					style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
				<div style="border-left:0px solid #E4E4E4; border-right:0px solid #E4E4E4; border-bottom:0px solid #E4E4E4" id="p_a"><img src="/please/member/img/order.png" style="vertical-align:top;" width=80></div>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="con2">
		<table id="main"><!-- cellspacing="0" -->
			<tr id="tt" onclick="location.href='/please/join_Info.member';">
				<td id="list1"width=1000 style="vertical-align:top; border-left:1px solid #E4E4E4;border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4; padding-left:23px;"><br>
				<font id="cont"><b>Profile</b></font>&nbsp;<font id="id2">회원 정보</font><br>
				<font id="id3">회원이신 고객님의 개인정보를 관리하는 공간입니다.<br>개인정보를 최신 정보로 유지하시면 보다 간편히 쇼핑을 즐기실 수 있습니다.</font>
				</td>
				<td bgcolor="white" width=20 
					style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
				<div style="border-left:0px solid #E4E4E4; border-right:0px solid #E4E4E4; border-bottom:0px solid #E4E4E4" id="p_a"><img src="/please/member/img/profile.png" style="vertical-align:top;" width=80></div>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="con2">
		<table id="main"><!-- cellspacing="0" -->
			<tr id="tt" onclick="location.href='/please/main.member';">
				<td id="list1"width=1000 style="vertical-align:top; border-left:1px solid #E4E4E4;border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4; padding-left:23px;"><br>
				<font id="cont"><b>Wishlist</b></font>&nbsp;<font id="id2">관심 상품</font><br>
				<font id="id3">관심상품으로 등록하신 상품의 목록을 보여드립니다.</font>
				</td>
				<td bgcolor="white" width=20 
					style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
				<div style="border-left:0px solid #E4E4E4; border-right:0px solid #E4E4E4; border-bottom:0px solid #E4E4E4" id="p_a"><img src="/please/member/img/wishlist.png" style="vertical-align:top;" width=80></div>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="con2">
		<table id="main"><!-- cellspacing="0" -->
			<tr id="tt" onclick="location.href='/please/main.member';">
				<td id="list1"width=1000 style="vertical-align:top; border-left:1px solid #E4E4E4;border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4; padding-left:23px;"><br>
				<font id="cont"><b>Consult</b></font>&nbsp;<font id="id2">1:1 맞춤상담</font><br>
				<font id="id3">고객님의 궁금하신 문의사항에 대하여 1:1맞춤상담 내용을 확인하실 수 있습니다.<br></font>
				</td>
				<td bgcolor="white" width=20 
					style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
				<div style="border-left:0px solid #E4E4E4; border-right:0px solid #E4E4E4; border-bottom:0px solid #E4E4E4" id="p_a"><img src="/please/member/img/consult.png" style="vertical-align:top;" width=80></div>
				</td>
			</tr>
		</table>
	</div>
	
	<div id="con2">
		<table id="main"><!-- cellspacing="0" -->
			<tr id="tt" onclick="location.href='/please/main.member';">
				<td id="list1"width=1000 style="vertical-align:top; border-left:1px solid #E4E4E4;border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4; padding-left:23px;"><br>
				<font id="cont"><b>Board</b></font>&nbsp;<font id="id2">게시물 관리</font><br>
				<font id="id3">고객님께서 작성하신 게시물을 관리하는 공간입니다.<br>고객님께서 작성하신 글을 한눈에 관리하실 수 있습니다.</font>
				</td>
				<td bgcolor="white" width=20 
					style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4">
				<div style="border-left:0px solid #E4E4E4; border-right:0px solid #E4E4E4; border-bottom:0px solid #E4E4E4" id="p_a"><img src="/please/member/img/board.png" style="vertical-align:top;" width=80></div>
				</td>
			</tr>
		</table>
	</div>
	
	
<br><br><br>
<%@include file="/include/footer.jsp"%>
</body>
</html>