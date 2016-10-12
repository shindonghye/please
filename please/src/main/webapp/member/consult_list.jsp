<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/include/header.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1상담게시판</title>

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


/* $(document).ready(function () {
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
	
}) */

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
	
	<div id="con"><br>
	<center>
<table class="type10">
<thead>
<tr><th scope="cols" id="no">번호</th>
    <th scope="cols" id="sub">제목</th>
    <th scope="cols" id="id">작성자</th>
    <th scope="cols" id="date">작성일</th>
    <th scope="cols" id="su">조회수</th>
</tr>
</thead>
	 
<!-- 화면 출력 번호 -->		
<c:set var="num" value="${listcount-(page-1)*10}"/> 	
<c:forEach var="b" items="${boardlist}">	

<tr class="even">
<!-- 번호 출력 부분 -->
<td><c:out value="${num}"/>				
	<c:set var="num" value="${num-1}"/>					
</td>
<td><div align="left">
<!-- 답변글 제목앞에 여백 처리 부분 -->
	<c:set var="wid" value="${b.board_re_lev * 10}"/>
	<c:if test="${b.board_re_lev != 0}">
	<img src="board/img/level.gif" width="${wid}" height="16">
	<img src="board/img/re.gif"></c:if>

	<a href="./BoardDetailAction.bo?num=${b.board_num}&page=${page}">
		${b.board_subject}</a>
	<c:if test="${b.board_readcount > 10}"><img src="board/img/hot.gif"></c:if>

	</div>
</td>
		
<td><div align="center"></div>
	${b.board_name}
</td>

<td><div align="center"></div>
	${b.board_date}
</td>	
<td><div align="center"></div>
	${b.board_readcount}
</td>

<c:if test="${sessionScope.member_id == 'admin'}">
<td class="even1"><div align="center"></div>
<a href="./BoardDeleteActionAdmin.bo?num=${b.board_num}&page=${page}">
<span class="glyphicon glyphicon-remove" onclick="return confirm('삭제하시겠습니까?')"></span>
</td>
</c:if>

</tr>
</c:forEach>
	
<tr align=center height=20>
	<td colspan=7>
		<c:if test="${page <= 1 }">[이전]&nbsp;</c:if>
		<c:if test="${page > 1 }">
			<a href="./BoardList.bo?page=${page-1}">[이전]</a>&nbsp;
		</c:if>

		<c:forEach var="a" begin="${startpage}" end="${endpage}">
			<c:if test="${a == page }">[${a}]
			</c:if>
			<c:if test="${a != page }">
				<a href="./BoardList.bo?page=${a}">[${a}]</a>&nbsp;
			</c:if>
		</c:forEach>
			
			
		<c:if test="${page >= maxpage }">[다음]</c:if>
		<c:if test="${page < maxpage }">
			<a href="./BoardList.bo?page=${page+1}">[다음]</a>
		</c:if>	
	</td>
</tr>

<!-- 레코드가 없으면 -->
<c:if test="${listcount == 0 }">
	<tr align="center" valign="middle">
		<td colspan="4"></td>
		<td align=right><font size=5>등록된 글이 없습니다.</font></td>
	</tr>
</c:if>
	
	<tr align="right">
		<td colspan="5"><a href="./BoardWrite.bo">[글쓰기]</a></td>
	</tr>
</table>
	</div>
</form><br><br><br><br><br><br><br><br><br><br>

<%@include file="/include/footer.jsp"%>

</body>
</html>