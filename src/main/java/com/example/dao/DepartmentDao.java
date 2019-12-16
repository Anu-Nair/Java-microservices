//DAO stands for Data Access Object
package com.example.dao;

import java.util.List;

import com.example.model.Department;
import com.example.model.Employee;
//Dao interface
public interface DepartmentDao {
	//insert
	void insertDepartment(Department cus);
	//display
	List<Department> getAllDepartments();
	//update
	Department updateDepartment(Department emp);
	//search
	List<Department> getDepartmentById(String empId1,String empId);
	//delete
    public void deleteDepartment(Department emp);
}