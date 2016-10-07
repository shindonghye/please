package com.please.please.dao;

import java.util.List;
import java.util.Map;

import com.please.please.dto.MemberBean;

//Member 테이블 작업을 위한 Dao 인터페이스
public interface MemberDao {
	// 로그인 처리를 위한 메소드
//	public MemberBean login(MemberBean mb);
//
//	// 이메일 중복 체크를 위한 메소드
//	public boolean emailCheck(String email);

	// 아이디 중복확인 메소드
	public int checkMemberId(String id);
	
	// 회원가입을 처리해주는 메소드
	public boolean memberInsert(MemberBean member);

	// 로그인시 아이디/비밀번호를 체크해주는 메소드
	public boolean checklogin(MemberBean member);
//	// Email을 가지고 회원정보를 찾아오는 메소드
//	public BlogMember getMember(String email);
//
//	// 회원정보를 수정하는 메소드
//	public boolean updateMember(BlogMember member);
//
//	// 회원탈퇴를 처리하는 메소드
//	public boolean dropMember(BlogMember member);
//
//	// 비밀번호를 변경해주는 메소드
//	public boolean updatePass(Map<String, Object> map);
//
//	// 관리자를 제외한 모든 유저 정보를 가져오는 메소드
//	public List<BlogMember> getMember();
//
//	// 관리자가 하나의 데이터를 삭제하는 메소드
//	public boolean deleteMember(BlogMember member);
//
//	// 휴먼 계정을 삭제하는 메소드
//	public boolean sleepMember();
}
