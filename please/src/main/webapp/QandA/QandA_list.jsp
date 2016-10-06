<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/include/header.jsp"%>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>

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
	font-weight:bold;
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
	font-weight:bold;
}
#join_post, #post_btn {margin-top: 5px;}
#join_addr1 {margin-top: 3px;}
#join_addr1, #join_addr2 {margin-bottom: 5px;}
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
#nomal {text-align: left}
</style>


<title> == Q&A == </title>

<!-- <link rel="stylesheet" type="text/css" href="./css/Q.css" /> -->

<script type="text/javascript">
/* 
 function del_check(){
	 if($.trim($("#del_pwd").val())==""){
		 alert("비밀번호를 입력하세요!");
		 $("#del_pwd").val("").focus();
		 return false;
	 }
 }
  */
</script>

</head>
<body>

<center>
	<form name="joinform" action=""	method="post">

<table>
			<tr>
				<td width=1020 align="right">
					<a href="/product/list.html?cate_no=24">
						<font STYLE="font-family: 굴림체" color="#747474"	size="2pt">홈</font></a> >
						<font STYLE="font-family: 굴림체" color="black"	size="2pt" ><b> 회원가입</b></font>
				</td>
			</tr>
			<tr><td>■<b> 회원 가입</b></div></td></tr>
			<tr><td><hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;"><br></td></tr>
			<tr><td><b id="nomal" align="left">전체글보기</b></td></tr>
		</table>

<table id="sub">
 <hr align="left" style="border: 1px solid #E4E4E4; width: 1020px;">
  
  <tr>
   <td bgcolor="#FBFAFA" align="center" width=43 height=43>번호</td>
   <td bgcolor="#FBFAFA" align="center" width=350 height=43>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   										제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
   <td bgcolor="#FBFAFA" align="center" height=43>이름</td> 
   <td bgcolor="#FBFAFA" align="center" height=43>조회수</td>
   <td bgcolor="#FBFAFA" align="center" height=43>날짜</td>
  </tr>
  
  <c:if test="${!empty glist}">
   <c:forEach var="g" items="${glist}">
    <tr>
     <td bgcolor="#FBFAFA" width=43 height=43>${g.g_no}</td> 
     <td bgcolor="#FBFAFA" width=43 height=43>
     <a href="g_cont.do?g_no=${g.g_no}&state=cont">
     ${g.g_title}</a>
     </td>
     <td bgcolor="#FBFAFA" width=43 height=43>${g.g_name}</td>
     <td bgcolor="#FBFAFA" width=43 height=43>${g.g_hit}</td>
     <td bgcolor="#FBFAFA" width=43 height=43>${g.g_date}</td>
    </tr>
   </c:forEach>  
  </c:if>
  
  <%-- <c:if test="${empty  glist}">
   <td bgcolor="#FBFAFA" width=43 height=43>
    <th colspan="5">목록이 없습니다!</th>
   </td>
  </c:if> --%>
  
  <tr>
   <td colspan="4"></td>
   <td><input  type="submit" align="left" name="" id="write_btn" class="img_button" value="글쓰기" 
   onclick="" />
   </td>
  </tr>
 </table> <br><br>
 
 <table id="sub">
 
	1 2 3 4 5 6 7 8 9 10<br>
	<select id="" style="width:80px;">
		<option value="일주일">일주일</option>
		<option value="한달">한달</option>
		<option value="세달">세달</option>
		<option value="전체">전체</option>
	</select>
	
	<select id="" style="width:80px;">
		<option value="제목">제목</option>
		<option value="내용">내용</option>
		<option value="작성자">작성자</option>
		<option value="아이디">아이디</option>
		<option value="상품명">상품명</option>
	</select>
	
 	<input id="" type="text" style="width:180px;"/>
 	<input  type="submit" align="left" name="" id="write_btn2" class="img_button" value="찾기" 
   onclick="" />
 </table><br><br>
 
</form>
<%@include file="/include/footer.jsp"%>

</body>
</html>