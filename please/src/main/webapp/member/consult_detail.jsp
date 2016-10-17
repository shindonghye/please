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

#reply {

	width: 1030px;
  	height: 60px;
	border: 1px solid #E4E4E4;
	padding-top: 10px;
	padding-right: 10px;
	padding-left: 10px;
	padding-bottom: 10px;
	
}

#reply_btn {
	width: 80px;
	height: 40px;
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
	vertical-align: middle;
}

#con1 {width:1020px; height:auto;
	  border: 2px solid #E4E4E4;}
	  
#p_a {
	padding-top: 10px;
	padding-bottom: 10px;
}
#list1, #list2 {line-height:1.4em;
	padding-top:7px;
	padding-left:12px;
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<!-- <script type="text/javascript">

	 
$(document).ready(function(){
	var con_content = $("#con_content").val();
	$("#reply_btn").click(function() {
		alert(con_content)
	});
});

</script> -->


</head>
<body>
<center>
<form action="/please/consult_Delete.con?num=${detail.con_no}&page=${page}"  method="post">
<!-- <input type="hidden" name="con_content" value=""> -->
<%-- <input type="hidden" name="con_no" value="${consult.con_no}"> --%>
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
		| 1:1 맞춤상담 게시판입니다. ${page},,${num},,${detail.con_no}</font>
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
                  <td colspan="3">${detail.con_subject}</td>
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
                  <td class="con" colspan="4">
                  	<pre>${detail.con_content}</pre>
                  </td>
               </tr>

         </table>
                 <table>
		<div style="width: 1010px; " ><br>
			<div style="text-align:left; width: 1010px; ">
				<input type="button" name="" id="write_btn3" value="목록" onclick="history.go(-1);">
		  	</div>
		  	<div style="text-align:right; width: 1010px; position:absolute;">
		  		<input type="submit" name="" id="write_btn3" value="삭제" onclick="return confirm('삭제하시겠습니까?')">
				<input type="button" name="" id="write_btn" value="수정" onclick="location.href='/please/consult_Edit.con?num=${detail.con_no}&page=${page}';">
			</div>
		</div>		
		</table>
      </form>
         <br><br><br>
         
         <!-- 해당글의 답변글이 없을경우 -->
         <c:if test="${rcount == 0 && sessionScope.join_id != 'admin'}">
         <table id="main">
         	<tr>
               <td width=140 height=40 bgcolor="#FBFAFA">&nbsp;
            	<font STYLE="font-family: 굴림체" color="black" size="2px">
            		빠른시간내에 답변드리겠습니다. 잠시만 기다려 주세요!
            	</font></td>
            </tr>
         </table>
         </c:if>
	
	<c:if test="${rcount > 0}">     
	<div id="con1">
         	<table width="1020px"broder-spacing: 0px 0px;><!-- cellspacing="0" -->
			<tr><td bgcolor="white" width=20 
					style="border-left:1px solid #E4E4E4; border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4; border-top:1px solid #E4E4E4">
				<div style="border-left:0px solid #E4E4E4; border-right:0px solid #E4E4E4; border-bottom:0px solid #E4E4E4" id="p_a"><img src="/please/member/img/please_after.png" style="vertical-align:top;" width=80></div>
				</td>
				<td id="list1" width=900 style="vertical-align:top; border-left:1px solid #E4E4E4;border-right:1px solid #E4E4E4; border-bottom:1px solid #E4E4E4; border-top:1px solid #E4E4E4">
					<font STYLE="font-family: 굴림체; font-weight: bold; color:black; font-size:11pt">${rcb.con_writer}</font>
					<font STYLE="font-family: 굴림체; color:#747474; font-size:9pt">2016-01-01 20:10:11</font>
					<font STYLE="font-family: 굴림체; color:#4374D9; font-size:9pt">&nbsp;수정&nbsp;삭제</font>
					<pre>${rcb.con_content}</pre>
					<!-- <pre>안녕하세요 피클즈입니다<br> 옷이 안맞는다구요 환불안됩니다</pre> -->
				</td>
			</tr>
			</table>
	</div>
	</c:if>
         
         <form action="/please/consult_Reply_ok.con?num=${detail.con_no}"  method="post">
         <!-- admin일때 답변글 작성가능 -->
         <c:if test="${sessionScope.join_id == 'admin'}">
         <table id="reply">
         	
         	<tr width=140 height=80 bgcolor="#FBFAFA">
         		<td conspan="2" style="position: absolute;">
         			<font STYLE="font-family: 굴림체" size="2pt"><b>&nbsp;답변달기</b></font>
         		</td><br><br>
         		<td><br><textarea rows="4" cols="126" name="con_content" id="con_content"></textarea></td>
         		<td><br>
         		<input type="submit" id="reply_btn" value="확인">
         		</td>
         	</tr>
         	
         </table>
         </c:if>
         </form>
         

      </div>
      <br>
      <br>
      <br>

      <%@include file="/include/footer.jsp"%>
   </center>
</body>
</html>