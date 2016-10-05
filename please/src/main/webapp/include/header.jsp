<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>

<style>
#hcontainer {width:100%; height:450px;}
#logo {width:100%; height:280px; text-align:center;}
#logoimg {margin:83px 0 0 0;}
#menu {widht:100%; height:85px;}
#main_menu {width:550px; height:40px; margin:auto;}
#sub_menu {width:600px; height:40px; margin:auto;}
#main_menu td {width:100px; text-align:center;}
#sub_menu td {width:100px; text-align:center;}
#main_menu a {color:black; text-decoration:none; font-size:23px;}
#sub_menu a {color:gray; text-decoration:none; font-size:14px; font-weight:bold;}
#sns {width:100%; text-align:center;}
#search {width:100%; text-align:center; float:left;}
#loginstate {width:150px; height:40px; z-index:100; position:absolute; left:78%;}

</style>

</head>
<body>
	<div id="hcontainer">
		<div id="logo">
			<a href="/please/main_.member">
			<img id="logoimg" src="/please/member/img/please_logo.png">
			</a>
		</div>
		<div id="menu">
		<table id="main_menu">
			<tr>
				<td><a href="/product/list.html?cate_no=24">OUTER</a></td>
        		<td><a href="/product/list.html?cate_no=25">TOP</a></td>
        		<td><a href="/product/list.html?cate_no=26">BOTTOM</a></td>
        		<td><a href="/product/list.html?cate_no=26">ACC</a></td>
        		<td><a href="/product/list.html?cate_no=26">SALE</a></td>
        	</tr>
		</table>
		<table id="sub_menu">
			<tr>
			<c:if test="${join_id == null}">
				<td><a href="/please/logIn.member">LOGIN</a></td>
        		<td><a href="/please/joinForm.member">JOIN US</a></td>
        	</c:if>
        	<c:if test="${join_id != null && join_id != 'admin'}">
				<td><a href="/please/logOut.member">LOGOUT</a></td>
        	</c:if>
        		<td><a href="/product/list.html?cate_no=26">NOTICE</a></td>
        		<td><a href="/product/list.html?cate_no=26">Q&A</a></td>
        		<td><a href="/product/list.html?cate_no=26">REVIEW</a></td>
        		<td><a href="/product/list.html?cate_no=26">CART</a></td>
        		<td><a href="/please/myPage.member">MY PAGE</a></td>
        		<td><a href="/product/list.html?cate_no=26">DELIVERY</a></td>
        	</tr>
		</table>
		</div>
		<div id="sns">
			<img src="/please/member/img/fb.jpg">
			<img src="/please/member/img/is.jpg"><br>
		</div>
		<div id="search">
			<input type="text"><img id="dod" src="/please/member/img/dod.jpg">
		</div>
		<c:if test="${join_id != null}">
		<div id="loginstate"><font STYLE="font-family: 굴림체" color="red" size="4pt"><b>${join_id}</b></font>님 환영합니다</div>
		</c:if>
		</div>
</body>
</html>
