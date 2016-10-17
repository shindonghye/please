package com.please.please.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.please.please.dto.ConsultBean;

@Repository
public class ConsultDaoImpl implements ConsultDao{
	
	@Autowired
	private SqlSession sqlSession;

	// 1:1상담 인서트
	@Override
	public boolean consult_write_ok(ConsultBean cb) {
		System.out.println("consult_write_ok dao까지 들어옴");
		System.out.println("제목="+cb.getCon_subject());
		System.out.println("작성자="+cb.getCon_writer());
		System.out.println("내용="+cb.getCon_content());
		
		int r = sqlSession.insert("consult.consult_write_ok", cb);
		System.out.println("r="+r);
		if (r > 0) 
			return true;
		else 
			return false;
		}
	
	// 1:1답변글 인서트
	@Override
	public ConsultBean consult_reply_ok(ConsultBean cb, int num) {
		System.out.println("consult_write_ok dao까지 들어옴");
		System.out.println("내용="+cb.getCon_content());
		System.out.println("부모번호="+cb.getCon_no());
		
		ConsultBean rcb = sqlSession.insert("consult.consult_reply_ok", cb);
		System.out.println("r="+r);
		
		return rcb;
		}
	
	//1:1상담게시물 갯수
	public int getListCount() {
		int count = 0;
		
		System.out.println("getListCount DAO들어옴.");
		
		count = sqlSession.selectOne("consult.getListCount");
		System.out.println("1:1상담게시물갯수="+count);
		
		return count;
		
	}
	
	// 게시물 목록
	public List<ConsultBean> getBoardList(int page) {
		List<ConsultBean> list = sqlSession.selectList("consult.getBoardList", page);

		System.out.println("구해온list="+list);
		
		return list;
	}
	
	// 게시물 상세보기
	public ConsultBean consult_detail(int num) {
		System.out.println("consult_detail DAO들어옴");
		System.out.println("num="+num);
		ConsultBean cb = sqlSession.selectOne("consult.consult_detail", num);
		System.out.println("content=" + cb.getCon_content());
		
		return cb;
	}
	
	// 게시물 삭제
	public void consult_delete(int num) {
		
		sqlSession.delete("consult_delete", num);
		
	}
	
	// 게시물 수정ok
	public void consult_Edit_ok(ConsultBean cb) {
		System.out.println("수정하기DAO들어옴");
		System.out.println("dao단 번호="+cb.getCon_no());
		sqlSession.update("consult.consult_Edit_ok", cb);
		
	}
	
	// 해당하는 상담게시글의 답변글 갯수
	public int consult_rcount(int num) {
		int rcount = sqlSession.selectOne("consult.consult_rcount", num);
		
		return rcount;
	}
}
	

	/*public boolean itemInsert(ItemBean item) {
		
			System.out.println("아이템DAO까지들어옴");
		
			System.out.println("name="+item.getItem_name());
			System.out.println("value="+item.getItem_value());
			System.out.println("color1="+item.getItem_color1());
			System.out.println("color2="+item.getItem_color2());
			System.out.println("color3="+item.getItem_color3());
			System.out.println("color4="+item.getItem_color4());
			System.out.println("color5="+item.getItem_color5());
			System.out.println("size1="+item.getItem_size1());
			System.out.println("size2="+item.getItem_size2());
			System.out.println("size3="+item.getItem_size3());
			System.out.println("amount="+item.getItem_amount());
			
			int r = sqlSession.insert("item.top_insert", item);
			System.out.println("r=" + r);
			
			if(r > 0)
				return true;
			else
				return false;
		
	}*/

	

