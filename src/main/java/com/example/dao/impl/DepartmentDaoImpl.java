//This file implements the DAO
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

import com.example.dao.DepartmentDao;
import com.example.dao.EmployeeDao;
import com.example.model.Department;
import com.example.model.Employee;

//class to implement DepartmentDao
@Repository
public class DepartmentDaoImpl extends JdbcDaoSupport implements DepartmentDao{
	
	//create a datasource object
	@Autowired 
	DataSource dataSource;
	
	//initialize the datasource object
	@PostConstruct
	private void initialize(){
		setDataSource(dataSource);
	}
	
	//Function to execute insert command in department database
	public void insertDepartment(Department emp) {
		String sql = "INSERT INTO department " +
				"(dno,dname,noemp,joindate,hodid) VALUES (?,?,?,?,?)" ;
		getJdbcTemplate().update(sql, new Object[]{
				emp.getdno(), emp.getdname(),emp.getnoemp(),emp.getstartdate(),emp.gethodid()});
	}
	//Function to execute update command in department database
	public Department updateDepartment(Department emp) {
		String sql = "UPDATE department set dno=?,dname=?,noemp=?,joindate=?,hodid=? WHERE dno=?";
		getJdbcTemplate().update(sql, new Object[]{
				emp.getdno(), emp.getdname(),emp.getnoemp(),emp.getstartdate(),emp.gethodid(),emp.getdno()
		});
		return emp;
	}
	//Function which is called to perform delete command in department database
	public void deleteDepartment(Department emp) {
		String sql = "DELETE FROM department WHERE dno=?";
		getJdbcTemplate().update(sql, new Object[]{
				emp.getdno()});
	}
	
	//Function to display all departments by taking from database via sql commands
	public List<Department> getAllDepartments(){
		String sql = "SELECT * FROM department";
		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
		List<Department> result = new ArrayList<Department>();
		for(Map<String, Object> row:rows){
			Department emp = new Department();
			emp.setdno((String)row.get("dno"));
			emp.setdname((String)row.get("dname"));
			emp.setnoemp((String)row.get("noemp"));
			emp.setstartdate((String)row.get("joindate"));
			emp.sethodid((String)row.get("hodid"));
			result.add(emp);
		}
		return result;
	}
	//Function to display user specified department by executing select command in database
	@Override
	public List<Department> getDepartmentById(String empId1, String empId) {
		String sql = "SELECT * FROM department WHERE "+empId1+"="+"\""+empId+"\"";
		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
		System.out.println(sql+empId1+empId);
		List<Department> result = new ArrayList<Department>();
		for(Map<String, Object> row:rows){
			Department emp = new Department();
			emp.setdno((String)row.get("dno"));
			emp.setdname((String)row.get("dname"));
			emp.setnoemp((String)row.get("noemp"));
			emp.setstartdate((String)row.get("startdate"));
			emp.sethodid((String)row.get("hodid"));
			result.add(emp);
		}
		return result;
	}
	
}