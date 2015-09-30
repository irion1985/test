package com.webapp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.webapp.mapper.MemberMapper;
import com.webapp.mapper.TrainerMapper;
import com.webapp.model.Member;

@Controller
public class AjaxController {
	
	@Autowired
	TrainerMapper mapper;
	
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
