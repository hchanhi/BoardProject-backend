package com.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.boardDAO;
import com.vo.BoardVo;
import com.vo.page;

@Service
public class boardBiz {
		
	@Autowired
	private boardDAO dao;
	
	public List<BoardVo> list(){
		return dao.list();
	}
	
	public void write(BoardVo vo) {
		dao.write(vo);
	}
	
	public BoardVo view(int bno) {
		return dao.view(bno);
	}
	
	public void edit(BoardVo vo) {
		dao.edit(vo);
	}
	
	public void delete(int bno) {
		dao.delete(bno);
	}
	
	public List<BoardVo> listPage(page pl){
		return dao.listPage(pl);
	}

	public int ListCount() {
		return dao.ListCount();
	}
}
