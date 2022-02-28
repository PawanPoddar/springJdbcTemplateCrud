package com.spring.service;

import java.util.List;

import com.spring.model.Employee;

public interface EmployeeDao {
	
	public int saveEmp(Employee emp);
	public int updateEmp(Employee emp);
	public String deleteEmp(int id);
	public List<Employee> getEmployees();
	public List<Employee> getEmployeesByName(String name);

}
