package com.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vo.BoardVo;
import com.vo.page;

@Repository
public class boardDAO {
	

	@Autowired
	private SqlSessionFactory factory;
	
	public List<BoardVo> list(){
		SqlSession session = factory.openSession();
		return session.selectList("board.list");
	}
	
	public void write(BoardVo vo) {
		SqlSession session = factory.openSession();
		session.insert("board.write", vo);
	}
	
	public BoardVo view(int bno) {
		SqlSession session = factory.openSession();
		return session.selectOne("board.view", bno);
	}
	
	public void edit(BoardVo vo) {
		SqlSession session = factory.openSession();
		session.update("board.edit", vo);
	}
	
	public void delete(int bno) {
		SqlSession session = factory.openSession();
		session.delete("board.delete", bno);
	}
	
	public List<BoardVo> listPage(page pl){
		SqlSession session = factory.openSession();
		return session.selectList("board.listPage", pl);
	}
	
	public int ListCount() {
		SqlSession session = factory.openSession();
		return session.selectOne("board.count");
	}

}
