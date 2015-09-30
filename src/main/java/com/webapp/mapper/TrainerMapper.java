package com.webapp.mapper;

import java.util.List;

import com.webapp.model.Trainer;

public interface TrainerMapper {
	
	List<Trainer> selectList(int fitem, int litem);
	Trainer selectByTr_name(String tr_name);

}
