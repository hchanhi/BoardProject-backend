 package com.dao;


 import org.apache.ibatis.session.SqlSession;
 import org.apache.ibatis.session.SqlSessionFactory;
 import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Repository;

import com.vo.UserVo;



@Repository
public class userDAO{
	
	@Autowired
	private SqlSessionFactory factory;
	public String join(UserVo vo) {
		SqlSession session = factory.openSession();
		String result = null;
		try {
			int n = session.insert("user.join", vo);
			if (n > 0)
				result = vo.getUserID();
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		return result;
	}
	
	
	
	
	
	
	public UserVo tryLogin(UserVo vo) {
		SqlSession session = factory.openSession();
			vo = session.selectOne("user.login", vo);
			session.close();
			return vo;
	}
	
	public UserVo findId(UserVo vo) {
		SqlSession session = factory.openSession();
		vo = session.selectOne("user.findId", vo);
		session.close();
		return vo;
	}

	public UserVo findPassword(UserVo vo) {
		SqlSession session = factory.openSession();
		vo = session.selectOne("user.findPassword", vo);
		session.close();
		return vo;
	}
	

}
