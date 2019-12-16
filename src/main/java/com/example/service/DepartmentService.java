package com.example.service;

import java.util.List;

import com.example.model.Department;

public interface DepartmentService {
	void insertDepartment(Department cus);
	List<Department> getAllDepartments();
	Department updateDepartment(Department emp);
	List<Department> getDepartmentById(String empId1,String empId);
    public void deleteDepartment(Department emp);
}