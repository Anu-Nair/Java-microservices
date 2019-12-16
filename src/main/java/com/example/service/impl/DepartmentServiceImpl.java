package com.example.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.DepartmentDao;
import com.example.dao.EmployeeDao;
import com.example.model.Department;
import com.example.model.Employee;
import com.example.service.DepartmentService;
import com.example.service.EmployeeService;

@Service
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	DepartmentDao employeeDao;
	
	@Override
	public Department updateDepartment(Department emp) {
		return employeeDao.updateDepartment(emp);
	}
	
	@Override
	public void insertDepartment(Department employee) {
		employeeDao.insertDepartment(employee);
	}

	@Override
	public List<Department> getAllDepartments() {
		return employeeDao.getAllDepartments();
	}

	@Override
	public List<Department> getDepartmentById(String empId1,String empId) {
		List<Department> employee = employeeDao.getDepartmentById(empId1,empId);
		return employee;
	}
	
	public void deleteDepartment(Department employee) {
		employeeDao.deleteDepartment(employee);
	}

}