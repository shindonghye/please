<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1상담게시판</title>

<style type="text/css">

a {text-decoration:none;}
#a_sub {
	text-decoration:none;
	color: #747474;
	font-size: 2px;
	font-style: 굴림체;
}
#a_sub:hover {
	text-decoration: underline;
}
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
#article {
	border: 0px solid red;
	width:1020px; height: auto;	  
}
#article td {
	border: 1px solid #E4E4E4;
	text-align: center;
	font-family: 굴림체;
	font-size: 13px;
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

#page_btn {
	width: 30px;
	height: 30px;
	color: #353535;
	background-color: white;
	boder-top: 1px solid #E4E4E4;
	border-left: 1px solid #E4E4E4;
	border-right: 1px solid #E4E4E4;
 	border-bottom: 1px solid #E4E4E4;
	outline: 0px;
	cursor: pointer;
	border-radius: 0px;
	font-family: 굴림체;
	font-size: 11pt;
	font-weight:bold;
	
	
}

#page_btn_select {
	width: 30px;
	height: 30px;
	background-color: white;
	color: #00A8E2;
	boder-top: 1px solid #E4E4E4;
	border-left: 1px solid #E4E4E4;
	border-right: 1px solid #E4E4E4;
 	border-bottom: 2px solid #008BCC;
	outline: 0px;
	cursor: pointer;
	border-radius: 0px;
	font-family: 굴림체;
	font-size: 11pt;
	font-weight:bold;
	

}

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
	font-size: 10pt;
	margin-right: -30px;

	/* z-index:100; position:absolute; left:70%; */ }
}

/* #w_div {position:absolute;align:right;z-index:100;} */

#main b {color: red;}


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
<form id="delform" name="findform" action="/please/member/consult_write.jsp" method="post">
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
		<font STYLE="font-family: 굴림체" color="#747474"	size="2pt" > 
		| 1:1 맞춤상담 게시판입니다.</font>
		</td></tr>
		<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;"><br></td></tr>
	</table>

<table id="article">

<tr><td width=35 height=40>번호</td>
    <td width=350>제목</td>
    <td width=40>작성자</td>
    <td width=40>작성일</td>
    <td width=30>답변</td>
</tr>

<!-- 화면 출력 번호 -->
<c:set var="num" value="${listcount-(page-1)*10}"/> 

<c:forEach var="a" items="${consultlist}">
<c:if test="${join_id == a.con_writer}">>
<tr><td>
		<!-- 번호 출력 부분 -->
		<font STYLE="font-family: 굴림체" color="#747474" size="2px">
			${num}
		<%-- <c:out value="${num}"/> --%>				
		<c:set var="num" value="${num-1}"/>
	</td>
	
	<td height=40>
		<a id="a_sub" href="./consult_Detail.con?num=${a.con_no}&page=${page}">
		<font STYLE="font-family: 굴림체" color="#747474" size="2px">
			${a.con_subject}
		</font>
		</a>
	</td>
	<td><font STYLE="font-family: 굴림체" color="#747474" size="2px">
			${a.con_writer}
		</font>
	</td>
	<td>
		<font STYLE="font-family: 굴림체" color="#747474" size="2px">
			${a.con_date}
		</font>
	</td>
	<td>
		<font STYLE="font-family: 굴림체" color="#747474" size="2px">
			${a.con_ron}
		</font>
	</td>
</tr>
</c:if>
</c:forEach>

<tr align=center >
	
	<td id="bottom" colspan=5 style="border:0px solid red" >
	<br>
		<c:if test="${page <= 1 }"><input type="button" id="page_btn" value="<"></c:if>
		<c:if test="${page > 1 }">
			<a href="./consult_list.con?page=${page-1}"><input type="button" id="page_btn" value="<"></a>
		</c:if>

	<c:forEach var="a" begin="${startpage}" end="${endpage}">
		<c:if test="${a == page }">
			<input type="button" id="page_btn_select" value="${a}">
		</c:if>
		<c:if test="${a != page }">
			<a href="./consult_list.con?page=${a}"><input type="button" id="page_btn" value="${a}"></a>
			</c:if>
		</c:forEach>
			
		<c:if test="${page >= maxpage }"><input type="button" id="page_btn" value=">"></c:if>
		<c:if test="${page < maxpage }">
			<a href="./consult_list.con?page=${page+1}"><input type="button" id="page_btn" value=">"></a>
		</c:if>	
	
		<div style="text-align:right; width: 970px; position:absolute;"><input type="submit" name="" id="write_btn" value="글쓰기"></div>
		<br><br><br><br>
	</td>
	
	
</tr>

<%-- <c:if test="${listcount == 0 }">
	<tr align="center" valign="middle">
		<td colspan="4"></td>
		<td align=right><font size=5>등록된 글이 없습니다.</font></td>
	</tr>
</c:if> --%>
	
</table>
	</div>
</form><br><br><br><br><br><br><br><br>

<%@include file="/include/footer.jsp"%>

</body>
</html>