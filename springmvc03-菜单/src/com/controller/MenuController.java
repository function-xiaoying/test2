package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Menu;
import com.service.MenuService;

@Controller
public class MenuController {
	
	/**
	 * springmvc��������spring����������
	 */
	@Resource
	private MenuService menuServiceImpl;
	
	@RequestMapping("show")
	@ResponseBody
	public List<Menu> show()
	{
		List<Menu> list = menuServiceImpl.showInfo();
		return list;
	}
	
}
