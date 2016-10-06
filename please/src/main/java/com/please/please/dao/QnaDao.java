package com.please.please.dao;

import java.util.List;

import com.please.please.dto.QnaBean;

public interface QnaDao {
	public void insertBoard(QnaBean b) throws Exception;

	public List<QnaBean> getBoardList(int page) throws Exception;
//
	public int getListCount() throws Exception;
//
//	public QandA_BoardBean getBoardCont(int item_num) throws Exception;
//
//	public void boardHit(int item_num) throws Exception;
//
//	public void boardEdit(QandA_BoardBean b) throws Exception;
//
//	public void boardDelete(int item_num) throws Exception;
//
//	public void refEdit(QandA_BoardBean b) throws Exception;
//
//	public void boardReplyOk(QandA_BoardBean b) throws Exception;

}
