package com.please.please.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.please.please.dao.MemberDao;
import com.please.please.dto.MemberBean;

@Service
public class MemberAction {

	@Autowired
	private MemberDao memberDao;

	// 요청을 처리하는 메소드
	// 파라미터를 직접 처리할 때는
	// HttpServletRequest 나
	// MultipartHttpServletRequest를 매개변수로 받아서
	// 처리합니다.
	
	// 회원가입(인서트)
	public boolean insertMember(MemberBean mb) {
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
		/*if(memberDao.checkMemberId(id))
			re = 0;*/
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
		
	}
	
	
	
	
	// 잘안되서 다시만들예정
/*	public boolean findid(MemberBean mb) {
		
		boolean findid = memberDao.findid(mb);
		
		return findid;
		
	}*/
	
/*	public List<MemberBean> findid2(MemberBean mb) {
		
		List<MemberBean> findid2 = memberDao.findid2(mb);
		
		return findid2;
		
	}*/
	
	public int idcount(MemberBean mb) {
		
		int idcount = memberDao.idcount(mb);
		
		return idcount;
	}
	
	
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
