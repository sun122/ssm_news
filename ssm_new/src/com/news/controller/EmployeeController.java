package com.news.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.news.entity.Employee;
import com.news.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	//插入
	@RequestMapping(value="insertService",method=RequestMethod.POST)
	public String selectInsert(Employee employee){
		int row = employeeService.selectInsertService(employee);
		
	    System.out.println("row="+row);
		return "insertsuccess";
	}
	
	//不安条件查询所有用户
	@RequestMapping(value="/allEmp",method=RequestMethod.GET)
	public String ShowAllEmp(Map<String,Object> map){
		List<Employee> list = employeeService.seletAllEmp();
		map.put("EmpList", list);
		System.out.println(list+"所有用户");
		return "ShowSelectEmpInfo";
	}
	
	//按需查询用户信息
	@RequestMapping(value="/selectService",method=RequestMethod.GET)
	public String ShowFindCont(Employee employee,Map<String,Object> map){
		List<Employee> list = employeeService.selectService(employee);
		map.put("selectServiceList", list);
		return "ShowSelectEmpInfo";
	}
	
	//按需更新用户信息
	@RequestMapping(value="updateInfo",method=RequestMethod.POST)
	public String UpdateInfoController(Employee employee){
		int row = employeeService.UpdataService(employee);
		return "redirect:/allEmp";
	}
	
}
