package com.webapp.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webapp.mapper.MemberMapper;
import com.webapp.mapper.TrainerMapper;

@Controller
public class AjaxController {
	
	@Autowired
	MemberMapper mem;
	
	@Autowired
	TrainerMapper tr;
	
	@RequestMapping("view")
	public String me3(){
		
		System.out.println("hellozz");
		return "views/view";
	}
	
//	@RequestMapping("/ggo")
//	public void me2(HttpServletResponse response) throws IOException{
//		
//		response.setContentType("application/json; charset=utf-8");
//	    PrintWriter writer = response.getWriter();
//		
//		Gson gson = new Gson();
//		
//		Member member = mapper.selectByName("hong");
//		
//		String name = member.getName();
//		String password = member.getPassword();
//		
//		
//		
//		writer.println(gson.toJson(name + "," +password));
//		
//		System.out.println("hello");
//	}
	
}
