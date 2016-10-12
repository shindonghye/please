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
	}
	
	// 회원정보 수정
	@RequestMapping("/infoUpdate.member")
	public ModelAndView infoupdate(@ModelAttribute MemberBean mb, HttpServletResponse response,
			HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		boolean result = memberAction.infoupdate(mb);
	
		String id = (String) session.getAttribute("join_id");
		
		try{
		if(id==null){ // 세션값이 없으면
	   		response.setContentType("text/html;charset=utf-8");
   			PrintWriter out = response.getWriter();
   			out.println("<script>");
   			out.println("alert('유효한 접근이 아닙니다.');");
   			out.println("location.href='/please/logIn.member';");
   			out.println("</script>");
   			out.close();
   			
   			//mav.setViewName("/member/login");
		} else if(result){
			response.setContentType("text/html;charset=utf-8");
   			PrintWriter out = response.getWriter();
   			out.println("<script>");
   			out.println("alert('수정되었습니다.');");
   			out.println("location.href='/please/myPage.member';");
   			out.println("</script>");
   			out.close();
			}
		
		}catch (Exception e) {}
		return mav;
	}
	
	// 회원탈퇴페이지 포워딩(state 0 -> 1)
	@RequestMapping("/memberDel.member")
	public String memberdel() {
		System.out.println("탈퇴페이지까지옴");
		return "/member/memberdel";		
	}
	
	@RequestMapping("/memberDel_ok.member")
	public ModelAndView memberdel_(@ModelAttribute MemberBean mb, 
			HttpSession session, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		System.out.println("memberDel_ok들어옴(컨트롤러).");
		
		String join_id = (String) session.getAttribute("join_id");
		System.out.println("----------------------------");
		System.out.println("join_id=" + join_id);
		
		try{
		if (join_id == null) {
			mav.setViewName("/member/login");
		} else {
			//join_id로 검색한 회원정보가 나올것이고
			MemberBean member = memberAction.memberdel_(join_id);
			System.out.println("리턴된비번="+member.getJoin_pass());
			if(!member.getJoin_pass().equals(mb.getJoin_pass())){
				System.out.println("회원비번이랑 탈퇴폼에서넘어온 비번이랑 다름");
				response.setContentType("text/html;charset=UTF-8");
	   			PrintWriter out = response.getWriter();
	   			out.println("<script>");
	   			out.println("alert('비밀번호가 틀립니다');");
	   			out.println("location.href='/please/memberDel.member';");
	   			out.println("</script>");
	   			out.close();
	   			mav.setViewName("/member/memberdel");
			} else {//비번이같을경우
				System.out.println("비번이일치");
				
				mb.setJoin_id(join_id);
				this.memberAction.memberdel_ok(mb);
				response.setContentType("text/html;charset=UTF-8");
	   			PrintWriter out = response.getWriter();
	   			out.println("<script>");
	   			out.println("alert('탈퇴되었습니다');");
	   			out.println("location.href='/please/main_.member';");
	   			out.println("</script>");
	   			out.close();
				System.out.println("탈퇴됨->메인페이지포워딩");
				session.invalidate(); // 세션끊어주고
			}
		}
		}catch (Exception e) {}
		
		return  mav;
	}
	
	
	
	// 아이디찾기페이지 포워딩
	@RequestMapping("/idFind.member")
	public String idfind(){
		return "/member/idfind";
	}
	
	// 비밀번호찾기페이지 포워딩
	@RequestMapping("/passFind.member")
	public String passfind(){
		return "/member/passfind";
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
			mav.addObject("member", mb);  // addObject 추가하여 공유
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
	
	
	// 로그인후(로그인시아이디/비밀번호체크) 메인폼 포워딩
	@RequestMapping("/main.member")
	public ModelAndView main(@ModelAttribute MemberBean mb, HttpSession session,
			HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		
		boolean logincheck = memberAction.logincheck(mb);
		
		try {
		
		if(logincheck) {
		session.setAttribute("join_id", mb.getJoin_id());
		session.setAttribute("member", mb);
		System.out.println("공유하는아이디: " + mb.getJoin_id());
		// 이동할 페이지 설정
				mav.setViewName("/member/main");
		} else {
			response.setContentType("text/html;charset=UTF-8");
   			PrintWriter out = response.getWriter();
   			out.println("<script>");
   			out.println("alert('아이디 혹은 비밀번호가 틀립니다');");
   			out.println("location.href='/please/logIn.member';");
   			out.println("</script>");
   			out.close();
			
		}
		} catch(Exception e) {
			
		}
		/*// 이동할 페이지 설정
		mav.setViewName("/member/main");*/
		return mav;
	}
	
	// 아이디찾기 
	@RequestMapping("/findId.member")
	public ModelAndView findid(@ModelAttribute MemberBean mb, 
			HttpServletResponse response) {
		System.out.println("findid까지들어옴");
		ModelAndView mav = new ModelAndView();
		
		List<MemberBean> idlist = memberAction.findid(mb);
		
		System.out.println("idlistsize="+idlist.size());
		
		int idcount = memberAction.idcount(mb);
		System.out.println("------");
		System.out.println("idcount="+idcount);
		
		try {
		if(idlist.size() != 0) {
			
			mav.setViewName("/member/idfind_after");
			mav.addObject("idlist", idlist);
			mav.addObject("idcount", idcount);
			
			return mav;
			
		} else {
			response.setContentType("text/html;charset=UTF-8");
   			PrintWriter out = response.getWriter();
   			out.println("<script>");
   			out.println("alert('정보가 일치하지 않습니다.');");
   			out.println("location.href='/please/idFind.member';");
   			out.println("</script>");
   			out.close();
   			return mav;
			
		}
		}catch (Exception e) {}
		
		return mav;
		
	}
	
	// 비밀번호찾기
	@RequestMapping("/findpass.member")
	public ModelAndView findpass(@ModelAttribute MemberBean mb, 
			HttpServletResponse response) {
		System.out.println("findid까지들어옴");
		ModelAndView mav = new ModelAndView();
		
		MemberBean findpass = memberAction.findpass(mb);
		
		System.out.println("------");
		System.out.println("findpass=" + findpass);
//		System.out.println("findpass="+findpass.getJoin_pass());
		
		try {
		if(findpass != null) {
			System.out.println(findpass.getJoin_pass());
			mav.addObject("findpass", findpass);
			System.out.println("passfion_after.jsp로이동");
			mav.setViewName("/member/passfind_after");
			return mav;
		} else {
			System.out.println("null이라면");
			response.setContentType("text/html;charset=UTF-8");
   			PrintWriter out = response.getWriter();
   			out.println("<script>");
   			out.println("alert('정보가 일치하지 않습니다.');");
   			out.println("location.href='/please/passFind.member';");
   			out.println("</script>");
   			out.close();
   			return mav;
			
   			
		}
		}catch (Exception e) {}
		
		return mav;
		
	}
	
	
	//잘안되서다시만들예정
	/*@RequestMapping("/findId.member")
	public ModelAndView findid(@ModelAttribute MemberBean mb, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		
		System.out.println("findid컨트롤러까지들어옴");
		boolean result = memberAction.findid(mb);
//		int idcount = memberAction.idcount(mb);
		
//		List<MemberBean> idlist = memberAction.findid2(mb);
		
		
		try {
			
		if(result) {
			System.out.println("유효한아이디가있습니다");
			mav.addObject("member", mb);
//			mav.addObject("idcount", idcount);
//			mav.addObject("idlist", idlist);
			System.out.println(mb.getJoin_id());
			
			
			mav.setViewName("/member/idfind_after");
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
   			out.println("alert('정보가 일치하지 않습니다.');");
   			out.println("location.href='/please/idFind.member';");
   			out.println("</script>");
   			out.close();
		}
			
		} catch (Exception e) {

		}
		return mav;
}*/
	
	
	
//	// 로그인후 메인폼 포워딩
//	@RequestMapping("/main.member")
//	public ModelAndView main(MemberBean mb, HttpSession session) {
//		ModelAndView mav = new ModelAndView();
//		session.setAttribute("join_id", mb.getJoin_id());
//		System.out.println("공유하는아이디: " + mb.getJoin_id());
//		
//		// 이동할 페이지 설정
//		mav.setViewName("/member/main");
//		return mav;
//	}
	
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
