package com.webapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webapp.mapper.MemberMapper;
import com.webapp.mapper.TrainerMapper;
import com.webapp.model.Trainer;

@Controller
public class TrainerController {
	
	@Autowired
	MemberMapper mem;
	
	@Autowired
	TrainerMapper tr;
	
	@RequestMapping(value="gallery", method=RequestMethod.GET)
	public String me2(Model trainer){
		System.out.println("go to gallery");
		List<Trainer> tr1 = tr.selectList();
		System.out.println(tr1.get(1));
		trainer.addAttribute("trs" , tr1);
		return "views/gallery/gallery";
	}
	
	@RequestMapping(value="profile", method=RequestMethod.GET)
	public String me24(Model trainer){
		System.out.println("go to profile");
		
//		Trainer tr1 = tr.selectByTr_name("Red");
		List<Trainer> tr1 = tr.selectList();
		System.out.println(tr1.get(1));
		
		trainer.addAttribute("trs" , tr1);
		
		
		return "views/trainers/profile";
	}
	
	@RequestMapping(value="gallery2", method=RequestMethod.GET)
	public String me21(){
		System.out.println("go to gallery2");
		
		return "views/gallery/gallery2";
	}
	
	@RequestMapping(value="gallery3", method=RequestMethod.GET)
	public String me22(){
		System.out.println("go to gallery3");
		
		return "views/gallery/gallery3";
	}
	
	@RequestMapping(value="gallery4", method=RequestMethod.GET)
	public String me23(){
		System.out.println("go to gallery4");
		
		return "views/gallery/gallery4";
	}
	
}
