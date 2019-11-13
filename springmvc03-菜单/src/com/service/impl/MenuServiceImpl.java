package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mapper.MenuMapper;
import com.pojo.Menu;
import com.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService{

	@Resource
	private MenuMapper menuMapper;
	
	@Override
	public List<Menu> showInfo() {
		
		//为什么参数是0
		return menuMapper.seleMenuByPid(0);
	}

}
