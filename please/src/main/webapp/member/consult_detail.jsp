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
   padding-left: 10px;
   font-family: 굴림체;
   font-size: 13px;
}

a {
   text-decoration: none;
}



.con {
   height: 100px;
}

#nomal {
   text-align: left
}

#a_sub:hover {
	text-decoration: underline;
}
#tt:hover {color: red; cursor: pointer; font-weight: bolder;}

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
                  <td width=140 height=40 bgcolor="#FBFAFA">제목</td>
                  <td colspan="3">${result.notice_subject}</td>
               </tr>
            </c:if> 

            <c:if test="${sessionScope.join_id == 'admin'}"> 
               <tr>
                  <td width=140 height=40 bgcolor="#FBFAFA">제목</td>
                  <td colspan="3"><input id="notice_subject" name="notice_subject" value="${result.notice_subject}"/></td>
               </tr>
          </c:if> 

            <tr>
               <td width=140 height=40 bgcolor="#FBFAFA">작성자</td>
               <td colspan="3">관리자</td>
            </tr>

            <tr>
               <td width=140 height=40 bgcolor="#FBFAFA">작성일</td>
               <td width=240><fmt:formatDate value="${result.notice_date}"
                     type="both" /></td>
               <td width=140 bgcolor="#FBFAFA">조회수</td>
               <td >${result.notice_readcount}</td>
            </tr>

               <tr>
                  <td class="con" colspan="4">${result.notice_content}</td>
               </tr>

         </table>
         <br>
         <div style="text-align: left">
            <input type="button" name="" id="write_btn2" value="목록"
               onclick="location.href='/please/NoticeList.notice';">
         </div>
         <div style="text-align: right">
            <input type="submit" value="수정">
            <input type="button" value="삭제"
               onClick="location.href='/please/NoticeDelete.notice?num=${result.notice_num}';">
      </form>
      </div>
      <br>
      <br>
      <br>

      <%@include file="/include/footer.jsp"%>
   </center>
</body>
</html>