package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Employee;
import com.spring.service.EmployeeDao;
import com.spring.service.EmployeeDaoImpl;

@Controller
public class CrudOperation {
	
	@Autowired
	public EmployeeDao employeeDao;
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	@PostMapping("/store")
	public String save(@ModelAttribute Employee emp,Model modal) {
		int val=employeeDao.saveEmp(emp);
		modal.addAttribute("alert","Successfully Added");
		return "register";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		 employeeDao.deleteEmp(id);
		
		return "redirect:/show";
	}
	
	@PostMapping("/update")
	public String udpate(@ModelAttribute Employee emp,Model modal) {
		employeeDao.updateEmp(emp);
		modal.addAttribute("alert","Successfully Added");
		return "redirect:/show";
	}
	@GetMapping("/show")
	public String getUser(Model modal) {
		List<Employee> lst=employeeDao.getEmployees();
		modal.addAttribute("data",lst);
		
//		System.out.print("pawan");
	 return "detail";
	}
	@GetMapping("/search")
	public String Search(@RequestParam("sname") String name, Model modal) {
		List<Employee> lst=employeeDao.getEmployeesByName(name);
		modal.addAttribute("data",lst);
		return "detail";
	}
	

}
