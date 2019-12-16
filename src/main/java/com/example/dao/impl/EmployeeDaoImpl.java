//This file contains implementation of the DAO
package com.example.dao.impl;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.example.dao.EmployeeDao;
import com.example.model.Employee;
//Class that will implement the Employee DAO
@Repository
public class EmployeeDaoImpl extends JdbcDaoSupport implements EmployeeDao{
	//create datasource object
	@Autowired 
	DataSource dataSource;
	//initialize the datasource object
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
	}
	//Function called to execute an insert operation. This is called in Employee Controller.
	@Override
	public void insertEmployee(Employee emp) {
		String sql = "INSERT INTO employee " +
				"(fname,lname,id,bdate,joindate,gender,lang,exp,address,dno,salary,contact) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)" ;
		getJdbcTemplate().update(sql, new Object[]{
				emp.getfname(), emp.getlname(),emp.getid(),emp.getbdate(),emp.getjoindate(),emp.getgender(),emp.getlang(),emp.getexp(),emp.getaddress(),emp.getdno(),emp.getsalary(),emp.getcontact()
		});
	}
	//Function called to execute an update operation.This is called in Employee Controller.
	public Employee updateEmployee(Employee emp) {
		String sql = "UPDATE employee set fname=?,lname=?,id=?,bdate=?,joindate=?,gender=?,lang=?,exp=?,address=?,dno=?,salary=?,contact=? WHERE id=?";
		getJdbcTemplate().update(sql, new Object[]{
				emp.getfname(), emp.getlname(),emp.getid(),emp.getbdate(),emp.getjoindate(),emp.getgender(),emp.getlang(),emp.getexp(),emp.getaddress(),emp.getdno(),emp.getsalary(),emp.getcontact(),emp.getid()
		});
		return emp;
	}
	//Function called to execute an delete operation.This is called in Employee Controller.
	public void deleteEmployee(Employee emp) {
		String sql = "DELETE FROM employee WHERE id=?";
		getJdbcTemplate().update(sql, new Object[]{
				emp.getid()});
	}
	//Function called to execute an select operation and display all the employee entires in db. This is called in Employee Controller.
	@Override
	public List<Employee> getAllEmployees(){
		String sql = "SELECT * FROM employee";
		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
		
		List<Employee> result = new ArrayList<Employee>();
		for(Map<String, Object> row:rows){
			Employee emp = new Employee();
			emp.setfname((String)row.get("fname"));
			emp.setlname((String)row.get("lname"));
			emp.setid((String)row.get("id"));
			emp.setbdate((String)row.get("bdate"));
			emp.setjoindate((String)row.get("joindate"));
			emp.setgender((String)row.get("gender"));
			emp.setlang((String)row.get("lang"));
			emp.setexp((String)row.get("exp"));
			emp.setaddress((String)row.get("address"));
			emp.setdno((String)row.get("dno"));
			emp.setsalary((String)row.get("salary"));
			emp.setcontact((String)row.get("contact"));
			result.add(emp);
		}
		return result;
	}
	//Function called to execute an select operation to choose depending on user input. This is called in Employee Controller.
	@Override
	public List<Employee> getEmployeeById(String empId1,String empId) {
			String sql = "SELECT * FROM employee WHERE "+empId1+"="+"\""+empId+"\"";
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
			System.out.println(sql+empId1+empId);
			List<Employee> result = new ArrayList<Employee>();
			for(Map<String, Object> row:rows){
				Employee emp = new Employee();
				emp.setfname((String)row.get("fname"));
				emp.setlname((String)row.get("lname"));
				emp.setid((String)row.get("id"));
				emp.setbdate((String)row.get("bdate"));
				emp.setjoindate((String)row.get("joindate"));
				emp.setgender((String)row.get("gender"));
				emp.setlang((String)row.get("lang"));
				emp.setexp((String)row.get("exp"));
				emp.setaddress((String)row.get("address"));
				emp.setdno((String)row.get("dno"));
				emp.setsalary((String)row.get("salary"));
				emp.setcontact((String)row.get("contact"));
				result.add(emp);
			}
			return result;
	}
	//This function is used to extract employees department wise
	@Override
	public List<Employee> getEmployeesdname(String empId1,String empId) {
			String sql = "SELECT * FROM employee WHERE dno IN ( SELECT dno from department where dname = "+"\""+empId+"\")";
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
			System.out.println(sql+empId1+empId);
			List<Employee> result = new ArrayList<Employee>();
			for(Map<String, Object> row:rows){
				Employee emp = new Employee();
				emp.setfname((String)row.get("fname"));
				emp.setlname((String)row.get("lname"));
				emp.setid((String)row.get("id"));
				emp.setbdate((String)row.get("bdate"));
				emp.setjoindate((String)row.get("joindate"));
				emp.setgender((String)row.get("gender"));
				emp.setlang((String)row.get("lang"));
				emp.setexp((String)row.get("exp"));
				emp.setaddress((String)row.get("address"));
				emp.setdno((String)row.get("dno"));
				emp.setsalary((String)row.get("salary"));
				emp.setcontact((String)row.get("contact"));
				result.add(emp);
			}
			return result;
	}
	
}