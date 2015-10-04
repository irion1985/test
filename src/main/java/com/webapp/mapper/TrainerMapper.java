package com.webapp.mapper;

import java.util.List;

import com.webapp.command.Tcom;
import com.webapp.model.Img;
import com.webapp.model.Trainer;

public interface TrainerMapper {
	
	List<Trainer> selectList();
	Trainer selectByTr_name(String tr_name);
	Trainer update(String tr_profile);
	int insertImg(Img img);

}
