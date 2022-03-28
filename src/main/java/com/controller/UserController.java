package com.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


import com.biz.*;
import com.vo.UserVo;

@Controller
@SessionAttributes({"loginUser", "userID", "check", "findID","userPw","findPw"})
public class UserController {

	@Autowired
	private userBiz biz;
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String trylogin(UserVo vo, Model model) {
		UserVo loginUser = biz.tryLogin(vo);
		if(loginUser == null) {
			model.addAttribute("check", 1);
			return "redirect:login.jsp";
		}else {
			model.addAttribute("loginUser", loginUser);
			model.addAttribute("check", 0);
			return "redirect:index.jsp";
		}
	}
	
	@RequestMapping(value="/fialLogin.do")
    public String failLogin(Model model) {
    	model.addAttribute("check", 2);
        return "redirect:login.jsp";        
        
    }
	

    @RequestMapping(value="/logout.do")
    public String logout(Model model) {
    	model.addAttribute("loginUser", "");
        return "redirect:index.jsp";        
        
    }
	

	@RequestMapping(value = "/join_form.do", method = RequestMethod.POST)
	public ModelAndView insert(UserVo  vo){
		String result=biz.join(vo);	
		ModelAndView mav=new ModelAndView("user/result","myresult" , result);
		     
		return mav; 
	}	
	
	
	
	
	@RequestMapping(value="/find_id_form.do")
	public String findIdView() {
		return "user/findId";
	}
	

	@RequestMapping(value="/find_id.do", method=RequestMethod.POST)
	public String findIdAction(UserVo vo, Model model) {
		UserVo user = biz.findId(vo);
		if(user == null) { 
			model.addAttribute("findID", 1);
		} else { 
			model.addAttribute("userID", user.getUserID());
			model.addAttribute("findID", 0);
			
			
		}
		
		return "user/findId";
	}
	
	 @RequestMapping(value="/resetFindID.do")
	    public String resetFindId(Model model) {
		 model.addAttribute("findID", 2);
	    	model.addAttribute("userID", "");
	        
	        return "user/findId";        
	        
	    }
	
 
	@RequestMapping(value="/find_password_form.do")
	public String findPasswordView() {
		return "user/findPassword";
	}
	
	@RequestMapping(value="/find_password.do", method=RequestMethod.POST)
	public String findPasswordAction(UserVo vo, Model model) {
		UserVo user = biz.findPassword(vo);
		
		if(user == null) { 
			model.addAttribute("findPw", 1);
		} else { 
			model.addAttribute("findPw", 0);
			model.addAttribute("userPw", user.getUserPassword());
		}
		
		return "user/findPassword";
	}
	 @RequestMapping(value="/resetFindPw.do")
	    public String resetFindPw(Model model) {
		 model.addAttribute("findPw", 2);
	    	model.addAttribute("userPw", "");
	        
	        return "user/findPassword";        
	        
	    }
}
