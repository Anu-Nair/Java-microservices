package com.example.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.EmployeeDao;
import com.example.model.Employee;
import com.example.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDao employeeDao;
	
	@Override
	public Employee updateEmployee(Employee emp) {
		return employeeDao.updateEmployee(emp);
	}
	
	@Override
	public void insertEmployee(Employee employee) {
		employeeDao.insertEmployee(employee);
	}

	@Override
	public List<Employee> getAllEmployees() {
		return employeeDao.getAllEmployees();
	}

	public List<Employee> getEmployeeById(String empId1,String empid) {
		List<Employee> employee = employeeDao.getEmployeeById(empId1,empid);
	
		return employee;
	}
	
	public List<Employee> getEmployeesdname(String empId1,String empid) {
		List<Employee> employee = employeeDao.getEmployeesdname(empId1,empid);
		System.out.println("hey service");
		return employee;
	}
	
	public void deleteEmployee(Employee employee) {
		employeeDao.deleteEmployee(employee);
	}

}