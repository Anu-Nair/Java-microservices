package com.example;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.example.model.Department;
import com.example.model.Employee;
import com.example.model.SelectAttributeValue;
import com.example.service.DepartmentService;
import com.example.service.EmployeeService;

//This class is used to map to the API endpoints
@Controller
public class EmployeeController {

	//Create object of service class
	@Autowired
	EmployeeService employeeService;
	
	//First page
	//the welcome page
	@RequestMapping("/welcome")
	public ModelAndView firstPage() {
			return new ModelAndView("welcome");
	}

	//GET METHOD
    //show the add employee form and also pass an empty backing bean object to store the form field values
	@RequestMapping(value = "/addNewEmployee", method = RequestMethod.GET)
	public ModelAndView show() {
		return new ModelAndView("addEmployee", "emp", new Employee());
	}

	//POST METHOD
    //Get the form field vaues which are populated using the backing bean and store it in db
	@RequestMapping(value = "/addNewEmployee", method = RequestMethod.POST)
	public ModelAndView processRequest(@ModelAttribute("emp") Employee emp) {
		employeeService.insertEmployee(emp);
		List<Employee> employees = employeeService.getAllEmployees();
		ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("employees", employees);
		return model;
	}
	
	
	//UPDATE 
	//GET METHOD
	//show the add employee form and also pass an empty backing bean object to store the form field values
		@RequestMapping(value = "/updateEmployee", method = RequestMethod.GET)
		public ModelAndView showupdate() {
			return new ModelAndView("updateEmployee", "emp", new Employee());
		}
		
		
		//UPDATE
		//POST METHOD
	    //Get the form field values which are populated using the backing bean and store it in db
		@RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
		public ModelAndView processRequestupdate(@ModelAttribute("emp") Employee emp) {
			//Employee old = employeeService.getEmployeeById(emp.getid());
			employeeService.updateEmployee(emp);
			List<Employee> employees = employeeService.getAllEmployees();
			ModelAndView model = new ModelAndView("getEmployees");
			model.addObject("employees", employees);
			return model;
		}
	
	
		//DELETE
		//GET METHOD
		// Pass backing javaBean
		@RequestMapping(value = "/deleteEmployee", method = RequestMethod.GET)
		public ModelAndView del() {
			return new ModelAndView("deleteEmployee", "emp", new Employee());
		}
		
		//DELETE
		//POST METHOD
		@RequestMapping(value = "/deleteEmployee", method = RequestMethod.POST)
		public ModelAndView processReques(@ModelAttribute("emp") Employee emp) {
			employeeService.deleteEmployee(emp);
			List<Employee> employees = employeeService.getAllEmployees();
			ModelAndView model = new ModelAndView("getEmployees");
			model.addObject("employees", employees);
			return model;
		}
	
	
	//DISPLAY ALL
    //show all employees saved in db
	@RequestMapping("/getEmployees")
	public ModelAndView getEmployees() {
		List<Employee> employees = employeeService.getAllEmployees();
		ModelAndView model = new ModelAndView("getEmployees");
		model.addObject("employees", employees);
		return model;
	}
	
	
	//GET METHOD
	//SEARCH BASED ON USER PASSED VALUES
	@RequestMapping(value = "/getEmployeeById", method = RequestMethod.GET)
	public ModelAndView show1() {
		return new ModelAndView("getEmployeeById", "v", new SelectAttributeValue());
	}
	//POST
	//show all employees saved in db
		@RequestMapping(value= "/getEmployeeById",method = RequestMethod.POST)
		public ModelAndView getspecEmployee(@ModelAttribute("v") SelectAttributeValue v) {
			List<Employee> employees = employeeService.getEmployeeById(v.getattribute(),v.getvalue());
			ModelAndView model = new ModelAndView("getEmployeeById");
			model.addObject("employees", employees);
			return model;
		}
		
		//DEPARTMENT WISE
		//GET
		@RequestMapping(value = "/getEmployeesdname", method = RequestMethod.GET)
		public ModelAndView show2() {
			return new ModelAndView("getEmployeeById", "v", new SelectAttributeValue());
		}
		//POST
		//show all employees saved in db
			@RequestMapping(value= "/getEmployeesdname",method = RequestMethod.POST)
			public ModelAndView getspecEmployee2(@ModelAttribute("v") SelectAttributeValue v) {
				List<Employee> employees = employeeService.getEmployeesdname(v.getattribute(),v.getvalue());
				ModelAndView model = new ModelAndView("getEmployeeById");
				model.addObject("employees", employees);
				return model;
			}
			
}