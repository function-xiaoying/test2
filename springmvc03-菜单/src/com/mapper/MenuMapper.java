package com.mapper;

import java.util.List;

import com.pojo.Menu;

public interface MenuMapper {
	
	public List<Menu> seleMenuByPid(int pid);
	
}
