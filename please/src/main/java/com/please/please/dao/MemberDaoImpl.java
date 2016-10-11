package com.please.please.dao;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.please.please.dto.MemberBean;


@Repository
public class MemberDaoImpl implements MemberDao {

	// 마이바티스 사용을 위한 sqlSession 프로퍼티
	@Autowired
	private SqlSession sqlSession;
	
	@Transactional // 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
	// 회원가입
	public boolean memberInsert(MemberBean member) {
		//int result = 0;	
		System.out.println(member);
			System.out.println("들어옴2");

			System.out.println("id="+member.getJoin_id());
			System.out.println("pass="+member.getJoin_pass());
			System.out.println("passq="+member.getJoin_passq());
			System.out.println("passa="+member.getJoin_passa());
			System.out.println("gender="+member.getJoin_gender());
			System.out.println("name="+member.getJoin_name());
			System.out.println("addr1="+member.getJoin_addr1());
			System.out.println("addr2="+member.getJoin_addr2());
			System.out.println("post="+member.getJoin_post());
			System.out.println("phone1="+member.getJoin_phone1());
			System.out.println("phone2="+member.getJoin_phone2());
			System.out.println("phone3="+member.getJoin_phone3());
			System.out.println("email1="+member.getJoin_email1());
			System.out.println("email2="+member.getJoin_email2());
			System.out.println("know="+member.getJoin_know());
			System.out.println("agree="+member.getJoin_agree());
			System.out.println("infoagree="+member.getJoin_infoagree());
			
			int r = sqlSession.insert("member.member_insert", member);
			System.out.println("r=" + r);
			if (r > 0)
				return true;
			else
				return false;
		
	}
	
	public boolean infoupdate(MemberBean member) {
		System.out.println("id="+member.getJoin_id());
		System.out.println("pass="+member.getJoin_pass());
		System.out.println("passq="+member.getJoin_passq());
		System.out.println("passa="+member.getJoin_passa());
		System.out.println("gender="+member.getJoin_gender());
		System.out.println("name="+member.getJoin_name());
		System.out.println("addr1="+member.getJoin_addr1());
		System.out.println("addr2="+member.getJoin_addr2());
		System.out.println("post="+member.getJoin_post());
		System.out.println("phone1="+member.getJoin_phone1());
		System.out.println("phone2="+member.getJoin_phone2());
		System.out.println("phone3="+member.getJoin_phone3());
		System.out.println("email1="+member.getJoin_email1());
		System.out.println("email2="+member.getJoin_email2());
		System.out.println("know="+member.getJoin_know());
		System.out.println("agree="+member.getJoin_agree());
		System.out.println("infoagree="+member.getJoin_infoagree());
		
		int r = sqlSession.update("member.infoupdate", member);
		System.out.println("r=" + r);
		
		if(r > 0)
			return true;
		else
			return false;
	}

	// ID중복체크
	@Transactional
	public int checkMemberId(String id) {
		int re = -1;
		System.out.println("id2=" +id);
		MemberBean mb = (MemberBean) sqlSession.selectOne("member.memberid_check", id);
		
		if (mb != null)
			re = 1; // 중복id
		return re;
	}

	// 로그인시 ID/PW 일치유무 확인
	@Override
	@Transactional
	public boolean checklogin(MemberBean member) {
		System.out.println("checklogin Dao까지 들어옴.");
		System.out.println("넘어온id:"+member.getJoin_id());
		System.out.println("넘어온pass:"+member.getJoin_pass());
		
		MemberBean mb = (MemberBean) sqlSession.selectOne("member.checklogin", member);

		if(mb != null) {
			System.out.println("아이디/비밀번호일치");
			return true;
		} else {
			System.out.println("아이디/비밀번호불일치");
			return false;
		}
		
	}
	
	public List<MemberBean> findid(MemberBean member) {
		System.out.println("dao파인드들어옴");
		List<MemberBean> idlist = sqlSession.selectList("member.findid", member);
		System.out.println("name=" + member.getJoin_name());
		System.out.println("passq=" + member.getJoin_passq());
		System.out.println("passa=" + member.getJoin_passa());
		
		
		if(!idlist.isEmpty()) {
			System.out.println("이름/질문/답변으로 검색한아이디있음");
			return idlist;
		} else {
			System.out.println("이름/질문/답변으로 검색한아이디없음");
			System.out.println(idlist.size());
			return idlist;
		}
		
	}
	
	public MemberBean findpass(MemberBean member) {
		System.out.println("dao파인드들어옴");
		MemberBean findpass = sqlSession.selectOne("member.findpass", member);
		
		System.out.println("name=" + member.getJoin_id());
		System.out.println("name=" + member.getJoin_name());
		System.out.println("passq=" + member.getJoin_passq());
		System.out.println("passa=" + member.getJoin_passa());
		
		
		if(findpass !=null) {
			System.out.println("아이디/이름/질문/답변으로 검색한아이디있음");
			return findpass;
		} else {
			System.out.println("아이디/이름/질문/답변으로 검색한아이디없음");
			return findpass;
		}
		
	}
	
	public MemberBean memberinfo(String join_id) {
		System.out.println("DAO단 join_id=" + join_id);
		MemberBean meminfo = sqlSession.selectOne("member.meminfo", join_id);
		System.out.println("db에서검색된pw="+meminfo.getJoin_pass());
		
		return meminfo;
	}
	
	public MemberBean memberdel_(String join_id) {
		
		MemberBean memberdel_ = sqlSession.selectOne("member.memdel", join_id);
		
		System.out.println(memberdel_.getJoin_addr1());
		
		return memberdel_;
		
	}
	
	public void memberdel_ok(MemberBean member) {
		System.out.println("삭제처리할아이디="+member.getJoin_id());
		System.out.println("탈퇴이유="+member.getJoin_delcont());
		System.out.println("탈퇴사유업데이트시키러가자.DAO까지들어옴");
		
		sqlSession.update("delupdate", member);
	}
	
	
	
	
	//잘안되서 다시만들예정
/*	public boolean findid(MemberBean member) {
		System.out.println("findid Dao까지 들어옴.");
		System.out.println("join_name:"+member.getJoin_name());
		System.out.println("join_passq:"+member.getJoin_passq());
		System.out.println("join_passa:"+member.getJoin_passa());
		
		
		MemberBean mb = (MemberBean) sqlSession.selectList("member.findid", member);
		
		
		if(mb != null) {
			System.out.println("이름/질문/답변으로 검색한아이디있음");
			return true;
		} else {
			System.out.println("이름/질문/답변으로 검색한아이디없음");
			return false;
		}
		
	}*/
	
/*	public List<MemberBean> findid2(MemberBean member) {
		System.out.println("조건에맞는아이디까지 들어옴Dao");
		
		List<MemberBean> findlist = sqlSession.selectList("member.findid", member);
		
		return findlist;
	}*/
	
	// 검색된 아이디의 총갯수
	public int idcount(MemberBean member) {
		int count = 0;
		count = ((Integer) sqlSession.selectOne("member.idcount", member)).intValue();
		
		return count;
		
	}
	
	

//	@Override
//	@Transactional// 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public BlogMember login(LoginDto loginDto) {
//		// 1개를 찾아와서 리턴하는 경우
//		List<BlogMember> list = sqlSession.selectList("member.loginMember",
//				loginDto);
//		// 검색된 데이터가 없는 경우 null 리턴
//		if (list == null || list.size() < 1)
//			return null;
//		// 검색된 데이터가 있으면
//		// 그 중에서 첫번째 데이터 리턴
//		else {
//			// 업데이트 날짜 수정하는 sql 호출
//			int r = sqlSession
//					.update("member.updateLogin", loginDto.getEmail());
//			if (r > 0)
//				return list.get(0);
//			else
//				return null;
//		}
//	}

//	@Override
//	@Transactional// 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public boolean emailCheck(String email) {
//		boolean result = false;	// 사용 불가능한 email(중복 email)
//		List<LoginDto> list = sqlSession.selectList("member.idCheck", email);
//		// 검색된 데이터가 없다면
//		if (list == null || list.size() < 1)
//			result = true;		// 사용 가능한 email
//
//		return result;
//	}
	
	
	
	
	
/*	@Override
	@Transactional// 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
	public boolean insertMember(Member member) {
		System.out.println(member);
		// sql 문장 실행
		int r = sqlSession.insert("member.insertMember", member);
		// insert, delete, update 구문은 수행을 하고나면
		// 영향받은 행의 개수를 리턴합니다.
		// 삽입은 0보다 큰 숫자가 리턴되면 삽입을 한 것입니다.
		if (r > 0)
			return true;
		else
			return false;
	}*/

//	@Override
//	@Transactional// 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public BlogMember getMember(String email) {
//		List<BlogMember> list = sqlSession.selectList("member.idCheck", email);
//		if (list.size() >= 1)
//			return list.get(0);
//		return null;
//	}

//	@Override
//	@Transactional// 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public boolean updateMember(BlogMember member) {
//		int r = sqlSession.update("member.updateMember", member);
//		if (r > 0)
//			return true;
//		else
//			return false;
//	}

//	@Override
//	@Transactional// 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public boolean dropMember(BlogMember member) {
//		// 패스워드를 찾아오는 sql을 실행
//		List<String> list = sqlSession.selectList("member.pwSelect", member);
//		if (list.size() >= 1) {
//			// 패스워드 비교
//			if (list.get(0).equals(member.getPw())) {
//				int r = sqlSession.delete("member.deleteMember", member);
//				if (r > 0)
//					return true;
//			}
//		}
//		return false;
//	}

//	@Override
//	@Transactional// 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public boolean updatePass(Map<String, Object> map) {
//		int r = sqlSession.update("member.updatePass", map);
//		if (r > 0)
//			return true;
//		else
//			return false;
//	}

//	@Override
//	@Transactional// 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public List<BlogMember> getMember() {
//		List<BlogMember> list = sqlSession.selectList("member.selectMember");
//		if (list.size() > 0)
//			return list;
//		else
//			return null;
//	}

//	@Override
//	@Transactional// 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public boolean deleteMember(BlogMember member) {
//		boolean result = false;
//
//		int r = sqlSession.delete("member.deleteMember", member);
//		if (r >= 1)
//			result = true;
//
//		return result;
//	}

//	@Override
//	@Transactional// 메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public boolean sleepMember() {
//		boolean result = false;
//		int r = sqlSession.delete("member.sleepMember");
//		if (r >= 0)
//			result = true;
//		return result;
//	}
}
