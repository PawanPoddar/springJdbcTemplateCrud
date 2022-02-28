package com.spring.service;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.spring.model.Employee;

@Service
public class EmployeeDaoImpl implements EmployeeDao{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;  
	  
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {  
	    this.jdbcTemplate = jdbcTemplate;  
	}  

	public int saveEmp(Employee emp) {
		String query="insert into employee values("+emp.getEmpId()+",'"+emp.getEmpName()+"','"+emp.getDesignation()+"',"+emp.getSalary()+")";  
	  return jdbcTemplate.update(query);
	}

	public int updateEmp(Employee emp) {
		String query="update employee set empName='"+emp.getEmpName()+"',designation='"+emp.getDesignation()+"',salary='"+emp.getSalary()+"' where empId="+emp.getEmpId();  
		return jdbcTemplate.update(query);  
	}

	public String deleteEmp(int id) {
		String sql="delete from employee where empId="; 
		   jdbcTemplate.update(sql+""+id);  
		   return "index";
	}

	public List<Employee> getEmployees(){    
		final String ALL = "SELECT *from employee";
		return this.jdbcTemplate.query(ALL, new EmployeeMapper());
	}   
	private static final class EmployeeMapper implements RowMapper<Employee> {
	    public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
	      Employee emp = new Employee();
	      emp.setEmpId(rs.getInt("empId"));
	      emp.setEmpName(rs.getString("empName"));
	      emp.setDesignation(rs.getString("designation"));
	      emp.setSalary(rs.getFloat("salary"));
//	      System.out.print(emp.getEmpName());
	      return emp;
	    }
	  }
	public List<Employee> getEmployeesByName(String name) {
		final String ALL = "SELECT *from employee where empName like '"+name+"%'";
		return this.jdbcTemplate.query(ALL, new EmployeeMapper());
	}  
	

}
