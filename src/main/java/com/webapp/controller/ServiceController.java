package com.webapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.webapp.command.Tcom;
import com.webapp.mapper.MemberMapper;
import com.webapp.mapper.TrainerMapper;
import com.webapp.model.Trainer;
import com.webapp.service.BoardService;

@Controller
public class ServiceController {
	
	@Autowired
	MemberMapper mem;
	
	@Autowired
	TrainerMapper tr;
	
	@Autowired
	private BoardService boardService; // 서비스 자동 주입
	
	@RequestMapping(value="uploadform")
	public String me5(@ModelAttribute("tcom") Tcom tcom, Model trainer) {
		System.out.println("go to uploadform");
		List<Trainer> tr1 = tr.selectList();
		trainer.addAttribute("trs" , tr1);
		
		return "views/form/uploadform";
	}
	
	@RequestMapping(value="fileUpload.do", method=RequestMethod.POST)
	public ModelAndView fileUpload(@ModelAttribute("tcom") Tcom tcom, MultipartHttpServletRequest mRequest) {
		ModelAndView mav = new ModelAndView();
		System.out.println(11111111);
		if(boardService.fileUpload(mRequest, tcom)) {
			mav.addObject("result", "SUCCESS");
		} else {
			mav.addObject("result", "FAIL");
		}
		mav.setViewName("views/result/upload_result");
		System.out.println(222222222);
		return mav;
	}
	
		
	
	@RequestMapping(value="upload.do", method=RequestMethod.POST)
	public ModelAndView upload(@ModelAttribute("tcom") Tcom tcom, MultipartHttpServletRequest mRequest) {
		ModelAndView mav = new ModelAndView();
		if(boardService.fileUpload(mRequest, tcom)) {
			mav.addObject("result", "SUCCESS");
			System.out.println("img update success...");
		} else {
			mav.addObject("result", "FAIL");
			System.out.println("img update failed...");
		}
		mav.setViewName("views/result/upload_result");
		
		return mav;
	}

}
