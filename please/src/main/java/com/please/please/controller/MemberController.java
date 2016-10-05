package com.please.please.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.please.please.dto.MemberBean;
import com.please.please.service.MemberAction;



@Controller
public class MemberController {
	
	@Autowired
	private MemberAction memberAction;
	
	// 메인페이지 포워딩
	@RequestMapping("/main_.member")
	public String main_(){
		return "/member/main";
	}	
	
	// 마이페이지 포워딩
	@RequestMapping("/myPage.member")
	public ModelAndView mypage(HttpServletResponse response, HttpSession session
			, MemberBean mb){
		
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
			mav.setViewName("/member/mypage");
//			session.setAttribute("join_id", mb.getJoin_id());
			}
			
		} catch (Exception e) {}
		return mav;
	}	
	
/*	@RequestMapping("/MainView.member")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}*/

	// 회원가입
	@RequestMapping(value = "/joinMember.member", method = RequestMethod.POST)
	public ModelAndView joinMember(@ModelAttribute MemberBean mb, HttpServletRequest request/*HttpSession session*/) {
		System.out.println("들어옴");
		ModelAndView mav = new ModelAndView();
		boolean result = memberAction.insertMember(mb);
		if (result) {
//			request.setAttribute("member", mb);
			mav.addObject("member", mb);
			System.out.println("member.getjoin_id=" + mb.getJoin_id());
			mav.setViewName("member/join_after");
			
//			mav.setViewName("redirect:joinAfter.member");
//			mav.setViewName("redirect:joinAfter.member");
			
		} else {
			mav.addObject("result", result);
			mav.setViewName("member/join_form");
		}
		return mav;
	}
	
	// 회원가입폼 포워딩
	@RequestMapping("/joinForm.member")
	public ModelAndView joinform(/*HttpSession session*/) {
		ModelAndView mav = new ModelAndView();
		/*session.getAttribute("join)
*/		// 이동할 페이지 설정
		mav.setViewName("member/join_form");
		return mav;
	}
	
	// ID중복검사 ajax함수로 처리부분
	@RequestMapping(value = "/join_idcheck.member", method = RequestMethod.POST)
	public void join_idcheck(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		PrintWriter out = response.getWriter();

		String id = request.getParameter("joinid");
		//String pass = request.getParameter("mpass");
		System.out.println("id=" + id);
		//System.out.println("pass=" + pass);
		
		int re = memberAction.checkMemberId(id);
		System.out.println("id중복확인까지들어옴(컨트롤러)");
		System.out.println("re=" + re);
		out.println(re);
	}
	
// 컨트롤러에선 바로 뷰페이지로 걸어주믄된다. 또 컨트롤러를 경유할필요는없다.	
	
/*	@RequestMapping("/joinAfter.member")
	public ModelAndView joinAfter() {
		System.out.println("애프터까지들어옴");
		ModelAndView mav = new ModelAndView();
		// 이동할 페이지 설정
		mav.setViewName("member/join_after");
		return mav;
	}*/
	
	// 로그인폼 포워딩
	@RequestMapping("/logIn.member")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		// 이동할 페이지 설정
		mav.setViewName("member/login");
		return mav;
	}
	
	// 로그아웃 후 메인 포워딩
	@RequestMapping("/logOut.member")
	public ModelAndView logout(HttpSession session) {
		// 세션의 모든 내용 클리어
		session.invalidate();

		ModelAndView mav = new ModelAndView();
		// index.jsp로 리다이렉트
		mav.setViewName("/member/main");

		return mav;
	}
	
	// 로그인후 메인폼 포워딩
	@RequestMapping("/main.member")
	public ModelAndView main(MemberBean mb, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		session.setAttribute("join_id", mb.getJoin_id());
		System.out.println("공유하는아이디: " + mb.getJoin_id());
		
		// 이동할 페이지 설정
		mav.setViewName("/member/main");
		return mav;
	}
	
	/*@RequestMapping("/LoginAction.member")
	public ModelAndView loginAction(@RequestParam(join_id) string id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		// 로그인 서비스 객체를 작업을 수행
		MemberBean member = MemberAction.login(loginDto);
		// 로그인에 실패했을 때
		if (member == null) {
			mav.addObject("login", "fail");
			mav.setViewName("/member/login");
		}
		// 로그인에 성공한 경우
		else {
			session.setAttribute("member", member);
			mav.setViewName("index");
		}

		return mav;
	}*/
	/*public String insertMember(@ModelAttribute MemberBean member) throws Exception {
		
		memberAction.insertMember(member);
		
		return "redirect:/login.log";
	}*/
	
//	@RequestMapping("/JoinProcess.member")
//	public ModelAndView insertMember(MultipartHttpServletRequest request) {
//		ModelAndView mav = new ModelAndView();
//		boolean result = memberAction.insertMember(request);
//		if (result) {
//			mav.setViewName("redirect:Login.member");
//		} else {
//			mav.addObject("result", result);
//			mav.setViewName("/member/join");
//		}
//		return mav;
//	}
	
//	@Autowired
//	private LoginAction loginAction;
//
//	@RequestMapping("/LoginAction.member")
//	public ModelAndView loginAction(LoginDto loginDto, HttpSession session) {
//		ModelAndView mav = new ModelAndView();
//		// 로그인 서비스 객체를 작업을 수행
//		BlogMember member = loginAction.login(loginDto);
//		// 로그인에 실패했을 때
//		if (member == null) {
//			mav.addObject("login", "fail");
//			mav.setViewName("/member/login");
//		}
//		// 로그인에 성공한 경우
//		else {
//			session.setAttribute("member", member);
//			mav.setViewName("index");
//		}
//
//		return mav;
//	}
//
//	// Logout.member 요청 처리
//	@RequestMapping("/Logout.member")
//	public ModelAndView logout(HttpSession session) {
//		// 세션의 모든 내용 클리어
//		session.invalidate();
//
//		ModelAndView mav = new ModelAndView();
//		// index.jsp로 리다이렉트
//		mav.setViewName("redirect:index.jsp");
//
//		return mav;
//	}
//
//	@RequestMapping("/JoinView.member")
//	public ModelAndView join() {
//		ModelAndView mav = new ModelAndView();
//
//		mav.setViewName("/member/join");
//
//		return mav;
//	}
//
//	
//	@Autowired
//	private EmailCheckAction emailCheckAction;
//
//	@RequestMapping("/EmailCheck.member")
//	@ResponseBody
//	public void check(@RequestParam("email") String email,HttpServletResponse response) throws Exception {
//		PrintWriter out = response.getWriter();
//		ModelAndView mav = new ModelAndView();
//		boolean result = emailCheckAction.idCheck(email);
//		System.out.println("result="+result);
////		mav.addObject("result", result);
////		mav.setViewName("emailCheck");
////		return mav;
//		int req = 0;
//		if(result == true)	// 사용 가능한 email
//			req = 1;
//		else				// 사용 불가능한 email(중복  email)
//			req = -1;
//		System.out.println("req="+req);
//		out.println(req);
//	}
//
//	
//	@Autowired
//	private MemberJoinAction memberJoinAction;
//

//
//	
//	@Autowired
//	private GetMemberAction getMemberAction;
//
//	@RequestMapping("/UpdateView.member")
//	public ModelAndView updateView(HttpSession session) {
//
//		ModelAndView mav = new ModelAndView();
//		// 로그인 된 사용자의 정보를 세션에서 가져오기
//		BlogMember member = (BlogMember) session.getAttribute("member");
//		// 로그인 정보가 없으면 로그인 페이지로 이동
//		if (member == null) {
//			mav.setViewName("/member/login");
//		} else {
//			member = getMemberAction.getMember(member);
//			// 데이터를 request에 저장
//			mav.addObject("member", member);
//			mav.setViewName("/member/update");
//		}
//		return mav;
//	}
//
//	
//	@Autowired
//	private MemberUpdateAction memberUpdateAction;
//
//	@RequestMapping("/UpdateProcess.member")
//	public ModelAndView update(MultipartHttpServletRequest request,
//			HttpSession session) {
//		ModelAndView mav = new ModelAndView();
//
//		// 로그인을 확인해서 로그인이 안되어있으면
//		// 로그인 페이지로 이동하도록 설정
//		BlogMember member = (BlogMember) session.getAttribute("member");
//		if (member == null) {
//			mav.setViewName("/member/login");
//		} else {
//			// 이미 로그인 된 상태라면
//			if (memberUpdateAction.updateMember(request)) {
//				session.invalidate();
//				mav.setViewName("redirect:Login.member");
//			} else {
//				mav.addObject("result", false);
//				mav.setViewName("/member/update");
//			}
//		}
//
//		return mav;
//	}
//
//	
//	@RequestMapping("/DropView.member")
//	public ModelAndView dropView(HttpSession session) {
//		ModelAndView mav = new ModelAndView();
//		// 로그인 되어 있는지 확인해서
//		// 로그인이 안되어있으면 로그인페이지로
//		// 로그인이 되어 있으면
//		// 비밀번호 입력페이지로 이동
//		if (session.getAttribute("member") == null) {
//			mav.setViewName("/member/login");
//		} else {
//			mav.setViewName("/member/drop");
//		}
//
//		return mav;
//	}
//
//	
//	@Autowired
//	private MemberDropAction memberDropAction;
//
//	@RequestMapping("/DropProcess.member")
//	public ModelAndView dropMember(BlogMember member, HttpSession session) {
//		ModelAndView mav = new ModelAndView();
//		if (session.getAttribute("member") == null) {
//			mav.setViewName("/member/login");
//		} else {
//			BlogMember sMember = (BlogMember) session.getAttribute("member");
//			member.setEmail(sMember.getEmail());
//			boolean result = memberDropAction.dropMember(member);
//			if (result) {
//				session.invalidate();
//				mav.setViewName("redirect:MainView.member");
//			} else {
//				mav.addObject("result", result);
//				mav.setViewName("/member/drop");
//			}
//		}
//		return mav;
//	}
//
//	@RequestMapping("/PassView.member")
//	public ModelAndView passView() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("/member/find");
//		return mav;
//	}
//	
//
//	@Autowired
//	private MemberFindAction memberFindAction;
//
//	@RequestMapping("/FindPassword.member")
//	public ModelAndView find(HttpServletRequest request) {
//		ModelAndView mav = new ModelAndView();
//		boolean result = memberFindAction.updatePass(request);
//		if (result) {
//			mav.setViewName("/member/pass");
//		} else {
//			mav.setViewName("/member/find");
//		}
//		return mav;
//	}
//
//	
//	@Autowired
//	private MemberInfoAction memberInfoAction;
//
//	@RequestMapping("/Management.member")
//	public ModelAndView getMember() {
//		ModelAndView mav = new ModelAndView();
//		List<BlogMember> list = memberInfoAction.getMember();
//		mav.addObject("result", list);
//		mav.setViewName("/member/memberInfo");
//		return mav;
//	}
//
//	
//	@Autowired
//	private MemberDeleteAction memberDeleteAction;
//
//	@RequestMapping("/DeleteMember.member")
//	public ModelAndView deleteMember(String email) {
//		ModelAndView mav = new ModelAndView();
//		boolean result = memberDeleteAction.execute(email);
//		if (result) {
//			mav.setViewName("redirect:Management.member");
//		} else {
//			mav.setViewName("/index");
//		}
//		return mav;
//	}
//	
//
//	@Autowired
//	private SleepMemberAction sleepMemberAction;
//
//	@RequestMapping("/SleepMember.member")
//	public ModelAndView sleepMember() {
//		ModelAndView mav = new ModelAndView();
//		boolean r = sleepMemberAction.execute();
//		if (r) {
//			mav.setViewName("redirect:Management.member");
//		} else {
//			mav.setViewName("index");
//		}
//		return mav;
//	}
}
