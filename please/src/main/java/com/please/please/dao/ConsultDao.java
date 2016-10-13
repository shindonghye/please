package com.please.please.dao;


import java.util.List;

import com.please.please.dto.ConsultBean;


public interface ConsultDao {

	// 작성글 인서트
	public boolean consult_write_ok(ConsultBean cb);
	
	// 게시물 총갯수
	public int getListCount();
	
	// 게시물 목록
	public List<ConsultBean> getBoardList(int page);
	
	
}
