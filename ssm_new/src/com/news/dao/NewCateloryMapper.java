package com.news.dao;

import java.util.List;

import com.news.entity.NewCatelory;

public interface NewCateloryMapper {
	public List<NewCatelory> selectAllCate();
	
	public int insertCateloryService(NewCatelory newCatelory);
	
	public int updataCatelory(NewCatelory newCatelory);
}
