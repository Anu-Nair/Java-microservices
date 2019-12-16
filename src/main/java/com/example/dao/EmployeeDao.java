//DAO stands for Data Access Object
//This is an interface class that contains definitions of all the functions that will be using the database
package com.example.dao;
import java.util.List;
import com.example.model.Employee;

//Dao interface
public interface EmployeeDao {
	//insert
	void insertEmployee(Employee cus);
	//display
	List<Employee> getAllEmployees();
	//update
	Employee updateEmployee(Employee emp);
	//search
	List<Employee> getEmployeeById(String empId1,String empId);
	//search
	List<Employee> getEmployeesdname(String empId1,String empId);
	//delete
    public void deleteEmployee(Employee emp);
}