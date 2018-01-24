package com.news.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.news.entity.NewCatelory;
import com.news.service.NewCateloryService;
import com.news.tools.Msg;

@Controller
public class NewCateloryController {
	
	@Autowired
	private NewCateloryService newCateloryService;
	
	@RequestMapping(value="/showAllCatelory",method=RequestMethod.GET)
	@ResponseBody
	public Msg selectAllCatelory1(@RequestParam(value="pn",defaultValue="1")Integer pn){
		PageHelper.startPage(pn,5);
		
		
		List<NewCatelory> catelist = newCateloryService.selectAllCateService();
		PageInfo<NewCatelory> page = new PageInfo<NewCatelory>(catelist,5);
		return Msg.success().add("catelist", page);
	}
	
	@RequestMapping(value="insertCatelory",method=RequestMethod.POST)
	public String insertCateloryController(NewCatelory newCatelory){
		
		newCateloryService.insertCateloryServices(newCatelory);
		return "redirect:/showAllCatelory";
	}
	
	@RequestMapping(value="updataCatelory",method=RequestMethod.POST)
	public String updataCateloryController(NewCatelory newCatelory){
		newCateloryService.updataCatelorySer(newCatelory);
		return "redirect:/showAllCatelory";
	}
}
