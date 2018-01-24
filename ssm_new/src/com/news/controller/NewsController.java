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
import com.news.entity.News;
import com.news.service.NewsService;
import com.news.tools.Msg;

@Controller
public class NewsController {
	
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value="/getNews",method=RequestMethod.GET)
	@ResponseBody
	public Msg ListNewsContrllor(@RequestParam(value="pn",defaultValue="1")Integer pn,News news){
		PageHelper.startPage(pn,5);
		List<News> list = newsService.listAllNews(news);
		
		PageInfo<News> page = new PageInfo<News>(list,5);

		return Msg.success().add("newlist", page);
	}
	
	@RequestMapping(value="addNews",method=RequestMethod.POST)
	public String insertNewsController(News list){
		int row = newsService.insertNewsService(list);
		return "AllNews";
	}
	
	@RequestMapping(value="updataNews",method=RequestMethod.POST)
	public String updataNewsController(News news){
		int row = newsService.updataNewsService(news);
		return "redirect:listNews";
	}
	
}
