package com.webapp.service;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.webapp.command.Tcom;
import com.webapp.mapper.TrainerMapper;
import com.webapp.model.Img;

public class BoardService {
	
	TrainerMapper trainerMapper;
	
	public void setTrainerMapper(TrainerMapper trainerMapper){
		this.trainerMapper = trainerMapper;
	}
	
	
	public boolean fileUpload(MultipartHttpServletRequest mRequest, Tcom tcom) {
		boolean isSuccess = false;
		//파일이 저장될 위치
		String uploadPath = "/03_Src/testasdf/src/main/webapp/resources/upload/";
							
		System.out.println("uploadPath = "+uploadPath);
		
		Img img = new Img();
		
		//파일객체 생성
		File dir = new File(uploadPath);
		
		System.out.println("dir = "+dir);
		
		//디렉토리 없으면 만듬
		if (!dir.isDirectory()) {
			dir.mkdirs();
			System.out.println(1111111);
		}
		
		//이터레이터로 받음 = 복수 업로드일 경우 여러개 동시에 받아옴
		Iterator<String> iter = mRequest.getFileNames();

		while(iter.hasNext()) {
			String uploadFileName = iter.next();
			System.out.println("uploadFileName = "+uploadFileName);
			
			//업로드한 파일 객체
			MultipartFile mFile = mRequest.getFile(uploadFileName);
			System.out.println("mFile = "+mFile);
			
			String originalFileName = mFile.getOriginalFilename();
			System.out.println("originalFileName = "+originalFileName);
			
			String saveFileName = originalFileName;
			
			//중복된 이름이 있다면 파일명 뒤에 시간붙임
			if(saveFileName != null && !saveFileName.equals("")) {
				System.out.println("not null1");
				if(new File(uploadPath + saveFileName).exists()) {
					System.out.println("not null2");
					saveFileName = saveFileName + "_" + System.currentTimeMillis();
				}
				try {
					System.out.println(1111111);
					mFile.transferTo(new File(uploadPath + saveFileName));
					
					img.setUp(mFile.getOriginalFilename());
					
					trainerMapper.insert(img);
					
					System.out.println("uppath,savefn= "+uploadPath+"_"+saveFileName);
					isSuccess = true;				
				} catch (IllegalStateException e) {
					e.printStackTrace();
					isSuccess = false;
				} catch (IOException e) {
					e.printStackTrace();
					isSuccess = false;
				}
			} // if end
		} // while end
//		tcom.setUp(uploadPath);
//		trainerMapper.insert(tcom);
		return isSuccess;
	} // fileUpload end

}
