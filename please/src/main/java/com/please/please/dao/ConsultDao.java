package com.please.please.dao;


import java.util.List;

import com.please.please.dto.ConsultBean;


public interface ConsultDao {

	// 작성글 인서트
	public boolean consult_write_ok(ConsultBean cb);
	
	// 답변글 인서트
	public boolean consult_reply_ok(ConsultBean cb);
	
	// 해당 답변글 내용 불러오기
//	public ConsultBean consult_getreply(ConsultBean cb);
	
	public ConsultBean consult_getreply(int num);
	
	// 게시물 총갯수
	public int getListCount();
	
	// 게시물 목록
	public List<ConsultBean> getBoardList(int page);
	
	// 게시물 상세보기
	public ConsultBean consult_detail(int num);
	
	// 게시물 삭제
	public void consult_delete(int num);
	
	// 게시물 수정
	public void consult_Edit_ok(ConsultBean cb);
	
	// 게시물의 답변글갯수
	public int consult_rcount(int num);
	
}
