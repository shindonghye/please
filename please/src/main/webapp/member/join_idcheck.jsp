<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.please.please.dao.*"%>
<%
 request.setCharacterEncoding("UTF-8");
 
 String id=request.getParameter("memid"); 
 System.out.println("id="+id);// id="test";
 
 MemberDaoImpl md= new MemberDaoImpl();
 
 int re= md.checkMemberId(id);
 // 0이면 중복ID
 // -1이면 사용가능ID

 out.println(re);
%>
 