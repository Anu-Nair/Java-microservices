package com.example.service;

import java.util.List;

import com.example.model.Employee;

public interface EmployeeService {
	void insertEmployee(Employee emp);
	public Employee updateEmployee(Employee emp);
	List<Employee> getAllEmployees();
	List<Employee> getEmployeeById(String empId1,String empid);
	List<Employee> getEmployeesdname(String empId1,String empid);
	void deleteEmployee(Employee emp);
}
