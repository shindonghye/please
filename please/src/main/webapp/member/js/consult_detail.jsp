<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="/include/header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>notice detail</title>
<style type="text/css">
#abc {
	padding-left: 10px;
	font-family: 굴림체;
	font-size: 22px;
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
   height: 60px;
}

#sub {
   width: 1030px;
   height: 40px;
   border: 1px solid #E4E4E4;
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
   padding-left: 12px;
   font-family: 굴림체;
   font-size: 13px;
}

a {
   text-decoration: none;
}

.con {
   height: 100px;
}


#tt:hover {color: red; cursor: pointer; font-weight: bolder;}

#write_btn {
	width: 100px;
	height: 30px;
	background-color: #8C8C8C;
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




</style>

</head>
<body>
<center>
<form action="/please/NoticeModifyAction.notice?num=${result.notice_num}" method="post">
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

         <table id="main">

             <c:if test="${sessionScope.join_id != 'admin'}">
               <tr>
                  <td id="abc" width=140 height=40 bgcolor="#FBFAFA">&nbsp;제목</td>
                  <td colspan="3">${detail.con_subject}</td>
               </tr>
            </c:if> 

            <c:if test="${sessionScope.join_id == 'admin'}"> 
               <tr>
                  <td width=140 height=40 bgcolor="#FBFAFA">&nbsp;제목</td>
                  <td colspan="3"><input id="notice_subject" name="notice_subject" value="${detail.con_subject}"/></td>
               </tr>
          </c:if> 

            <tr>
               <td width=140 height=40 bgcolor="#FBFAFA">&nbsp;작성자</td>
               <td colspan="3">${detail.con_writer}</td>
            </tr>

            <tr>
               <td width=140 height=40 bgcolor="#FBFAFA">&nbsp;답변여부</td>
               <td width=240>${detail.con_ron}<%-- <fmt:formatDate value=""
                     type="both" /> --%></td>
               <td width=140 bgcolor="#FBFAFA">&nbsp;문의일시</td>
               <td >${detail.con_date}</td>
            </tr>

               <tr>
                  <td class="con" colspan="4">${detail.con_content}</td>
               </tr>

         </table>
         <br>
         <table>
		<div style="width: 1010px;"><br>
			<div style="text-align:left; width: 1010px; float:left;">
				<input type="button" name="" id="write_btn3" value="목록" 
		  			   onclick="history.go(-1);">
		  	</div>
		  	<div style="text-align:right; width: 1010px; position:absolute;">
		  		<input type="button" name="" id="write_btn3" value="삭제" onclick="location.href='/please/NoticeList.notice';">
				<input type="submit" name="" id="write_btn" value="수정" onclick="submitContents(this)">
			</div>
		</div>		
		</table>
      </form>
      </div>
      <br>
      <br>
      <br>

      <%@include file="/include/footer.jsp"%>
   </center>
</body>
</html>