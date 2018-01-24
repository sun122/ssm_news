package com.news.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.news.dao.NewsMapper;
import com.news.entity.News;

@Service
public class NewsService {
	
	@Autowired
	private NewsMapper newsMapper;
	
	public List<News> listAllNews(News news){
		return newsMapper.listAllNews(news);
	}
	
	public int insertNewsService(News list){
		return newsMapper.insertNewsService(list);
	}
	
	public int updataNewsService(News news){
		return newsMapper.updataNews(news);
	}
}
