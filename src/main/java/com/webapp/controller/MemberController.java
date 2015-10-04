package com.webapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webapp.mapper.MemberMapper;
import com.webapp.model.Member;

@Controller
public class MemberController {
	
	@Autowired
	MemberMapper mem;
	
	@RequestMapping(value="template", method=RequestMethod.GET)
	public String me1(Model member){
		System.out.println("hi");
		
		Member member1 = mem.selectByName("hong");
		
		member.addAttribute("members" ,member1);
		
		return "views/template";
	}

}
