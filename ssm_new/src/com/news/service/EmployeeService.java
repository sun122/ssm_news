package com.news.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.news.dao.EmployeeMapper;
import com.news.entity.Employee;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeMapper employeeMapper;
	
	public int selectInsertService(Employee employee){
		
		return employeeMapper.selectInsertService(employee);
	}
	
	public List<Employee> seletAllEmp(){
		
		return employeeMapper.seletAll();
	}
	
	public List<Employee> selectService(Employee employee){
		return employeeMapper.selectService(employee);
	}
	
	public int UpdataService(Employee employee){
		return employeeMapper.UpdataService(employee);
	}
}
