package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.boardBiz;
import com.vo.BoardVo;

@Controller
public class boardController {
	
	@Autowired
	private boardBiz biz;
	
	// 게시물 리스트 
	@RequestMapping(value= "/list.do", method = RequestMethod.GET)
	public String getList(Model model) {
		
		List<BoardVo> list = null;
		list = biz.list();
		
		model.addAttribute("list", list);
		return "board/list";
	
	}
	
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

	

}
