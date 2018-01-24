package com.news.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.news.dao.NewCateloryMapper;
import com.news.entity.NewCatelory;

@Service
public class NewCateloryService {
	
	@Autowired
	private NewCateloryMapper newCateloryMapper;
	
	public List<NewCatelory> selectAllCateService(){
		return newCateloryMapper.selectAllCate();
	}
	
	public int insertCateloryServices(NewCatelory newCatelory){
		return newCateloryMapper.insertCateloryService(newCatelory);
	}
	
	public int updataCatelorySer(NewCatelory newCatelory){
		return newCateloryMapper.updataCatelory(newCatelory);
	}
}
