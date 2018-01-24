package com.news.dao;

import java.util.List;
import java.util.Map;

import com.news.entity.Employee;

public interface EmployeeMapper {
	public int selectInsertService(Employee employee);
	
	public List<Employee> seletAll();
	
	public List<Employee> selectService(Employee employee);
	
	public int UpdataService(Employee employee);
}
