package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.biz.boardBiz;
import com.vo.BoardVo;
import com.vo.page;
import com.vo.PageMaker;

@Controller
public class boardController {
	
	@Autowired
	private boardBiz biz;
	
//	// 게시물 리스트 
//	@RequestMapping(value= "/list.do", method = RequestMethod.GET)
//	public String getList(Model model) {
//		
//		List<BoardVo> list = null;
//		list = biz.list();
//		
//		model.addAttribute("list", list);
//		return "board/list";
//	
//	}
	
	@RequestMapping(value = "/write_form.do")
    public String writeForm() {
		return "board/write";
	}
	
	@RequestMapping(value="/write.do", method = RequestMethod.POST)
	public String postWrite(BoardVo vo) {
		biz.write(vo);
		
		return "redirect: /BoardProject/list.do";
	}
	
	@RequestMapping(value="/view.do", method = RequestMethod.GET)
	public String getView(@RequestParam("bno") int bno, Model model) {
		BoardVo vo = biz.view(bno);
		model.addAttribute("view", vo);
		return "board/view";
	}
	
	@RequestMapping(value = "/edit_form.do" )
	public String editForm(@RequestParam("bno") int bno, Model model) {
		BoardVo vo = biz.view(bno);
		model.addAttribute("view", vo);
		return "board/edit";
	}
	
	@RequestMapping(value = "/edit.do", method = RequestMethod.POST)
	public String getEdit(BoardVo vo) {
		biz.edit(vo);
		
		return "redirect: /BoardProject/view.do?bno=" + vo.getBno();
	}
	
	@RequestMapping(value="/delete.do", method = RequestMethod.GET)
	public String getDelete(@RequestParam("bno") int bno) {
		biz.delete(bno);
		return "redirect: /BoardProject/list.do";
	}
	
	// 게시물 목록 + 페이징 추가
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void getListPage(Model model, @RequestParam("num") int num) throws Exception {
	 
	 // 게시물 총 갯수
	 int count = biz.ListCount();
	  
	 // 한 페이지에 출력할 게시물 갯수
	 int postNum = 10;
	  
	 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
	 int pageNum = (int)Math.ceil((double)count/postNum);
	  
	 // 출력할 게시물
	 int displayPost = (num - 1) * postNum;
	    
	 List list = null; 
	 list = biz.listPage(displayPost, postNum);
	 model.addAttribute("list", list);   
	 model.addAttribute("pageNum", pageNum);
	}
	
	
	

}
