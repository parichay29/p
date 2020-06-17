package com.miniguru.spring.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miniguru.spring.doa.contentDoa;
import com.miniguru.spring.entity.Homepage;


@Controller
@RequestMapping("/")
public class HomepageController{

	@Autowired
	private contentDoa contentDoa;
	
	@RequestMapping("/show")	
	public String getHomePage(Model theModel){
		
		List<Homepage> homepage = contentDoa.getHomePage();
		
		System.out.println("\n\n\nThis is content"+homepage);
		
		theModel.addAttribute("homepage",homepage);
		return "homepage";
	}
}
