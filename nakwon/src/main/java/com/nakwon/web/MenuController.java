package com.nakwon.web;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import com.nakwon.service.MenuService;
import com.nakwon.domain.MenuVO;

@Controller
@RequestMapping("/project/manager/menu/*")
public class MenuController {
	@Inject
	private MenuService menuservice;
	
	//¸Þ´ºµî·Ï GET
	@RequestMapping(value="/menuAdd", method=RequestMethod.GET)
	public String menuAddGET(MenuVO vo, Model model) {
		System.out.println("MenuVO GET Called");
		return "/project/manager/menu/menuAdd";
	}
	
	//¸Þ´ºµî·Ï POST
	@RequestMapping(value="/menuAdd", method=RequestMethod.POST)
	public void menuAddPOST(MenuVO vo, Model model) throws Exception {
		System.out.println("MenuVO POST Called");
		menuservice.insert(vo);
	}
	
	
}