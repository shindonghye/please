package com.please.please.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.please.please.dao.ConsultDao;
import com.please.please.dto.ConsultBean;

@Service
public class ConsultAction {

	@Autowired
	private ConsultDao consultDao;
	
	// 글쓰기 인서트
	public boolean consult_write_ok(ConsultBean cb) {
		boolean result = false;
		System.out.println("서비스들어옴.");
		if(consultDao.consult_write_ok(cb));
			result = true;
			
		return result;
		
	}
	
	// 1:1상담 게시물 목록
	public Map consult_list(HttpServletRequest request) {
		
		int page = 1;
		int limit = 10; // 한 화면에 출력할 레코드수

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		// 총 리스트 수를 받아옴.
		int listcount = consultDao.getListCount();

		// 페이지 번호(page)를 DAO클래스에게 전달한다.
		List<ConsultBean> consultlist = consultDao.getBoardList(page); // 리스트를 받아옴.

		// 총 페이지 수.
		int maxpage = (int) ((double) listcount / limit + 0.95); // 0.95를 더해서 올림
																	// 처리.
		// 현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
		int startpage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에 보여줄 마지막 페이지 수.(10, 20, 30 등...)
		int endpage = maxpage;

		if (endpage > startpage + 10 - 1)
			endpage = startpage + 10 - 1;

		Map resultMap = new HashMap();

		resultMap.put("page", page);
		resultMap.put("startpage", startpage);
		resultMap.put("endpage", endpage);
		resultMap.put("maxpage", maxpage);
		resultMap.put("listcount", listcount);
		resultMap.put("consultlist", consultlist);
		
		return resultMap;	
	}

	//상담게시물 상세보기
	public ConsultBean consult_detail(int num) {
		System.out.println("consult_detail 서비스 들어옴");
		
		ConsultBean cb = consultDao.consult_detail(num);
		
		System.out.println("content=" + cb.getCon_content());
		
		return cb;
		
	}
	
	//상담게시물 삭제하기
	public void consult_delete(int num) {
		
		consultDao.consult_delete(num);
		
	}
	
	
	// 요청을 처리하는 메소드
	// 파라미터를 직접 처리할 때는
	// HttpServletRequest 나
	// MultipartHttpServletRequest를 매개변수로 받아서
	// 처리합니다.
	
	// 회원가입(인서트)
	/*public boolean insertMember(MemberBean mb) {
		boolean result = false;
		
		if (memberDao.memberInsert(mb));
			result = true;

		return result;		
//		memberDao.memberInsert(member);
	}
	
	// 회원정보수정
	public boolean infoupdate(MemberBean mb) {
		boolean result = false;
		
		if(memberDao.infoupdate(mb));
			result = true;
			
		return result;
		
	}
	
	
	// 회원탈퇴(state 0->1)
	public MemberBean memberdel_(String join_id) {
		System.out.println("memberdel_들어옴(서비스)");
			
		return memberDao.memberinfo(join_id);
	}
	
	public void memberdel_ok(MemberBean mb) {
		System.out.println("탈퇴사유업데이트시키러감 del_ok까지들어옴");
		memberDao.memberdel_ok(mb);
		
	}
	
	
	// 아이디중복검사
	public int checkMemberId(String id) {
		int re = -1;
		re = memberDao.checkMemberId(id);
		if(memberDao.checkMemberId(id))
			re = 0;
//		if(memberDao.checkMemberId(id))
		
		return re;
	}
	

	public boolean logincheck(MemberBean mb) {
		
		boolean logincheck = memberDao.checklogin(mb);
		
		return logincheck;
		
	}
	
	public List<MemberBean> findid(MemberBean mb) {
		System.out.println("서비스파인드들어옴");
		List<MemberBean> findid = memberDao.findid(mb);
		System.out.println("size="+findid.size());
		return findid;
		
	}
	
	public MemberBean findpass(MemberBean mb) {
		System.out.println("서비스파인드패스들어옴");
		MemberBean findpass = memberDao.findpass(mb);
		return findpass;
		
	}
	
	public MemberBean memberinfo(String mb) {
		System.out.println("서비스멤버인포들어옴");
		
		return memberDao.memberinfo(mb);
		
	}*/
	
	
	
	
	// 잘안되서 다시만들예정
/*	public boolean findid(MemberBean mb) {
		
		boolean findid = memberDao.findid(mb);
		
		return findid;
		
	}*/
	
/*	public List<MemberBean> findid2(MemberBean mb) {
		
		List<MemberBean> findid2 = memberDao.findid2(mb);
		
		return findid2;
		
	}*/
	
	/*public int idcount(MemberBean mb) {
		
		int idcount = memberDao.idcount(mb);
		
		return idcount;
	}*/
	
	
//	public boolean insertMember(MultipartHttpServletRequest request) {
//		boolean result = false;
//		// Dao의 파라미터를 만들어서 Dao의 메소드를
//		// 호출하고 결과를 가공해서 Controller에게 넘겨줍니다.
//		MemberBean member = new MemberBean();
//		// 파일 업로드 처리
//		// 업로드 할 폴더이름 설정
//		String uploadPath = request.getRealPath("image");
//
//		// 매개변수로 넘어온 파일 가져오기
//		MultipartFile report = request.getFile("imgInp");
//		String filename = report.getOriginalFilename();
//		// 이메일과 파일 이름을 합성
//		filename = request.getParameter("email") + filename;
//		// 파일 저장 경로 생성
//		String filepath = uploadPath + "\\" + filename;
//
//		File f = new File(filepath);
//		FileOutputStream fos = null;
//		try {
//			fos = new FileOutputStream(f);
//			fos.write(report.getBytes());
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		} finally {
//			try {
//				fos.close();
//			} catch (Exception e) {
//			}
//		}
//
////		member.setEmail(request.getParameter("email"));
////		member.setName(request.getParameter("name"));
////		member.setPw(request.getParameter("pw"));
////		member.setImage(filename);
////		member.setMobile(request.getParameter("mobile"));
////		member.setAddress1(request.getParameter("address1"));
////		member.setAddress2(request.getParameter("address2"));
//
//		if (memberDao.memberInsert(member))
//			result = true;
//
//		return result;
//	}
}
