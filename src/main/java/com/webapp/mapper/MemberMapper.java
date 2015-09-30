package com.webapp.mapper;

import com.webapp.model.Member;

public interface MemberMapper {
	
	Member selectByName(String name);

}
