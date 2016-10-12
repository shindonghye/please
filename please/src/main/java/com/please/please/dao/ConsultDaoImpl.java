package com.please.please.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.please.please.dto.ConsultBean;

@Repository
public class ConsultDaoImpl implements ConsultDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public boolean consult_write_ok(ConsultBean cb) {
		System.out.println("consult_DAO까지 들어옴");
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

	

