package com.please.please.dao;

import java.util.List;

import com.please.please.dto.QnaBean;
import com.please.please.service.QnaAction;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class QnaDaoImpl implements QnaDao{

	@Autowired
	private SqlSession sqlSession;

//	public void setSqlSession(SqlSession sqlSession) {
//		this.sqlSession = sqlSession;
//	}//스프링 setter DI 의존관계를 설정
	
	
	/* 게시판 저장 */	
	@Transactional   //메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
	public void insertBoard(QnaBean b) throws Exception {
//		getSession();		
		sqlSession.insert("qna.qna_insert", b);
//		sqlsession.commit();		
	}

	
	/* 게시물 목록  */
	@Transactional
	public List<QnaBean> getBoardList(int page) throws Exception {
		List<QnaBean> list = sqlSession.selectList("qna.qna_list", page);

		return list;
	}

	
	/* 게시판 총 갯수  */
	@Transactional
	public int getListCount() throws Exception {
		int count = 0;	
		count = ((Integer) sqlSession.selectOne("qna.qna_count")).intValue();

		return count;
	}

	
	/* 게시판 글내용보기  */
//	@Transactional
//	public QandA_BoardBean getBoardCont(int item_num) throws Exception {
//		return (QandA_BoardBean) sqlSession.selectOne("qna.qna_cont",item_num);
//	}

	
	/* 게시판 조회수 증가  */
//	@Transactional 
//	public void boardHit(int item_num) throws Exception {
//		sqlSession.update("qna.qna_hit", item_num);		
//	}

	
	/* 게시물 수정  */	
//	@Transactional   //메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public void boardEdit(QandA_BoardBean b) throws Exception {
//		sqlSession.update("qna.qna_edit", b);		
//	}

	
	/* 게시물 삭제  */
//	@Transactional   //메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public void boardDelete(int item_num) throws Exception {
//		sqlSession.delete("qna.qna_del", item_num);				
//	}

	
	/* 답변글 레벨 증가  */
//	@Transactional   //메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public void refEdit(QandA_BoardBean b) throws Exception {
//		sqlSession.update("qna.qna_Level", b);		
//	}

	
	/* 답변글 저장  */
//	@Transactional   //메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
//	public void boardReplyOk(QandA_BoardBean b) throws Exception {
//		sqlSession.insert("qna.board_reply", b);		
//	}
//
}
