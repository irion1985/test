package com.webapp.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.HandlerMapping;

import com.webapp.mapper.MemberMapper;
import com.webapp.mapper.TrainerMapper;

@Controller
public class MainController {
	
	@Autowired
	MemberMapper mem;
	
	@Autowired
	TrainerMapper tr;
//	
//	
//	@RequestMapping(value="template", method=RequestMethod.GET)
//	public String me1(Model member){
//		System.out.println("hi");
		
//		Member member1 = mem.selectByName("hong");
//		
//		member.addAttribute("members" ,member1);
		
//		return "views/template";
//	}
	
//	@RequestMapping(value="gallery", method=RequestMethod.GET)
//	public String me2(Model trainer){
//		System.out.println("go to gallery");
//		List<Trainer> tr1 = tr.selectList();
//		System.out.println(tr1.get(1));
//		trainer.addAttribute("trs" , tr1);
//		
//		return "views/gallery/gallery";
//	}
//	
//	
//	@RequestMapping(value="profile", method=RequestMethod.GET)
//	public String me24(Model trainer){
//		System.out.println("go to profile");
		
//		Trainer tr1 = tr.selectByTr_name("Red");
//		List<Trainer> tr1 = tr.selectList();
//		System.out.println(tr1.get(1));
//		
//		trainer.addAttribute("trs" , tr1);
//		
//		
//		return "views/trainers/profile";
//	}
	
//	@RequestMapping(value="gallery2", method=RequestMethod.GET)
//	public String me21(){
//		System.out.println("go to gallery2");
//		
//		return "views/gallery/gallery2";
//	}
//	
//	@RequestMapping(value="gallery3", method=RequestMethod.GET)
//	public String me22(){
//		System.out.println("go to gallery3");
//		
//		return "views/gallery/gallery3";
//	}
//	
//	@RequestMapping(value="gallery4", method=RequestMethod.GET)
//	public String me23(){
//		System.out.println("go to gallery4");
//		
//		return "views/gallery/gallery4";
//	}
//	
	@RequestMapping(value="/**")
	public String me3(){
		System.out.println("welcome to mainpage");
		
		return "mainpage";
	}
	
	@RequestMapping(value="/")
	public String me0(){
		System.out.println("welcome to mainpage");
		
		return "mainpage";
	}

	@RequestMapping(value="/{path}/**", method = RequestMethod.GET)
	public String categoryTest(@PathVariable("path") String path, HttpServletRequest request) throws Exception {
	    String remainingPaths = (String)request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
	    System.out.println("path = " + path + "/" + remainingPaths);
	    
	    return "mainpage";
	}
	
}
