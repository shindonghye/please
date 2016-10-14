package com.please.please.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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
		
		System.out.println("result="+result);
		if(result) {
			System.out.println("consult_list.con으로 이동");
			mav.setViewName("redirect:/consult_list.con");
			
		} else {
			mav.setViewName("member/consult_write");
		}
		
		return mav;
	}
	
	// 게시물목록 출력
	@RequestMapping("/consult_list.con")
	public ModelAndView consult_list(HttpSession session, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("consult_list 컨트롤러들어옴");
		
		if (session.getAttribute("join_id") == null) {
			mav.setViewName("/member/login");
			
		} else {
			Map map = consultAction.consult_list(request);
			System.out.println(map.get("listcount"));
			
			mav.addAllObjects(map);
			mav.setViewName("member/consult_list");
			
		}
		
		return mav;
		
	}
	//////////////////
	// 상세보기페이지
	@RequestMapping("/consult_Detail.con")
	public ModelAndView consult_detail(int num, String page) {
		ModelAndView mav = new ModelAndView();
		System.out.println("consult_Detail 컨트롤러들어옴.");
		System.out.println("page="+page);
		ConsultBean cb = consultAction.consult_detail(num);
		
		mav.addObject("detail", cb);
		mav.addObject("page", page);
		mav.setViewName("member/consult_detail");
		
		return mav;
		
	}
	
	// 게시글 삭제
	@RequestMapping("/consult_Delete.con")
	public String consult_delete(int num,String page) {
		System.out.println("num="+num);
		System.out.println("page="+page);
		
		consultAction.consult_delete(num);
		System.out.println("consult_delete수행하고 리턴값으로 이동");
		return "redirect:/consult_list.con?page="+page;
	}
	
	// 게시글 수정
	@RequestMapping("/consult_Edit.con")
	public ModelAndView consult_edit(int num, String page, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("consult_Edit 컨트롤러들어옴.");
		System.out.println("page="+page);
		
		ConsultBean cb = consultAction.consult_detail(num);
		
//		request.setAttribute("subject", cb.getCon_subject());
		
		System.out.println(cb.getCon_subject());
		mav.addObject("consult", cb);
		mav.addObject("key","name");
		mav.setViewName("redirect:/member/consult_edit.jsp");
		
		return mav;
//		return "redirect:/member/consult_edit.jsp";
		
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
