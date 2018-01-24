package com.news.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.news.entity.News;

public interface NewsMapper {
	public List<News> listAllNews(News news);
	
	public int insertNewsService(News news);
	
	public int updataNews(News news);
	
	
}
