package com.please.please.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.reflect.CatchClauseSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.please.please.dto.ConsultBean;
import com.please.please.service.ConsultAction;



@Controller
public class ConsultController {
	
	@Autowired
	private ConsultAction consultAction;
	
	// 1:1상담 글쓰기페이지 포워딩
	@RequestMapping("/consult_Write.con")
	public String consult_write() {
		return "/member/consult_write";
	}
	
	// 글쓰기 인서트
	@RequestMapping("/consult_Write_ok.con")
	public ModelAndView consult_write_ok(@ModelAttribute ConsultBean cb) {
		ModelAndView mav = new ModelAndView();
		System.out.println("컨트롤러들어옴.");
		System.out.println("내용="+cb.getCon_content());
		boolean result = consultAction.consult_write_ok(cb);
		
		return mav;
		
	}
	
	/*// 메인페이지 포워딩
	@RequestMapping("/main_.member")
	public String main_(){
		return "/member/main";
	}	
	
	// 마이페이지 포워딩
	@RequestMapping("/myPage.member")
	public ModelAndView mypage(HttpServletResponse response, HttpSession session
			, @ModelAttribute MemberBean mb){
		
		ModelAndView mav = new ModelAndView();
		String id = (String) session.getAttribute("join_id");
		
		try{
		if(id==null){ // 세션값이 없으면
	   		response.setContentType("text/html;charset=utf-8");
   			PrintWriter out = response.getWriter();
   			out.println("<script>");
   			out.println("alert('로그인 후 이용가능합니다');");
   			out.println("location.href='/please/logIn.member';");
   			out.println("</script>");
   			out.close();
   			
   			//mav.setViewName("/member/login");
		} else {
			System.out.println("마이페이지포워딩 공유한아이디:"+id);
			mav.setViewName("/member/mypage");
//			session.setAttribute("join_id", mb.getJoin_id());
			}
			
		} catch (Exception e) {}
		return mav;
	}
	
	// 회원정보수정페이지 포워딩
	@RequestMapping("/join_Info.member")
	public ModelAndView join_info(HttpSession session){
		
		ModelAndView mav = new ModelAndView();
		System.out.println("join_info들어옴.");
		
		String join_id = (String) session.getAttribute("join_id");
		System.out.println("----------------");
		
		
		if (join_id == null) {
			mav.setViewName("/member/login");
		} else {
			MemberBean infolist = memberAction.memberinfo(join_id);

			mav.addObject("infolist", infolist);
			mav.setViewName("/member/join_info");
		}
		
		System.out.println("---"+ join_id);
		
		return  mav;
	}*/

}
