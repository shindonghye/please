package com.please.please.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.please.please.dto.ItemBean;

@Repository
public class ItemDaoImpl implements ItemDao{
	
	@Autowired
	private SqlSession sqlSession;

	/*public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}//스프링 setter DI 의존관계를 설정
*/
	@Override
	@Transactional
	public boolean itemInsert(ItemBean item) {
		
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
		
	}
}
	
/*	@Transactional   //메소드 수행 중에 예외가 발생하면 rollback 그렇지 않으면 commit
	public void insertItem(ItemBean i) throws Exception {
//		getSession();		
		sqlSession.insert("Test.item_insert", i);
//		sqlsession.commit();		
	}
	
	
}*/
