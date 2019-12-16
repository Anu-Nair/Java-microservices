package com.example;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.example.model.Department;
import com.example.model.Employee;
import com.example.model.SelectAttributeValue;
import com.example.service.DepartmentService;

//To map the end points of APIs
@Controller
public class DepartmentController {
	//Create an object of service class.
	@Autowired
	DepartmentService deptService;
	
		//GET
	    //show the add employee form and also pass an empty backing bean object to store the form field values
		@RequestMapping(value = "/addNewDepartment", method = RequestMethod.GET)
		public ModelAndView show() {
			return new ModelAndView("addDepartment", "emp", new Department());
		}
		//POST
	    //Get the form field vaues which are populated using the backing bean and store it in db
		@RequestMapping(value = "/addNewDepartment", method = RequestMethod.POST)
		public ModelAndView processRequest(@ModelAttribute("emp") Department emp) {
			deptService.insertDepartment(emp);
			List<Department> employees = deptService.getAllDepartments();
			ModelAndView model = new ModelAndView("getDepartments");
			model.addObject("employees", employees);
			return model;
		}
		
		
		//UPDATE
		//GET
		//show the add employee form and also pass an empty backing bean object to store the form field values
			@RequestMapping(value = "/updateDepartment", method = RequestMethod.GET)
			public ModelAndView showupdate() {
				return new ModelAndView("updateDepartment", "emp", new Department());
			}
			//UPDATE
			//POST
		    //Get the form field values which are populated using the backing bean and store it in db
			@RequestMapping(value = "/updateDepartment", method = RequestMethod.POST)
			public ModelAndView processRequestupdate(@ModelAttribute("emp") Department emp) {
				//Employee old = employeeService.getEmployeeById(emp.getid());
				deptService.updateDepartment(emp);
				List<Department> employees = deptService.getAllDepartments();
				ModelAndView model = new ModelAndView("getDepartments");
				model.addObject("employees", employees);
				return model;
			}
			//DELETE
			//GET
			@RequestMapping(value = "/deleteDepartment", method = RequestMethod.GET)
			public ModelAndView del() {
				return new ModelAndView("deleteDepartment", "emp", new Department());
			}
			//DELETE
			//POST
			@RequestMapping(value = "/deleteDepartment", method = RequestMethod.POST)
			public ModelAndView processReques(@ModelAttribute("emp") Department emp) {
				deptService.deleteDepartment(emp);
				List<Department> employees = deptService.getAllDepartments();
				ModelAndView model = new ModelAndView("getDepartments");
				model.addObject("employees", employees);
				return model;
			}
		//DISPLAY ALL
	    //show all employees saved in db
		@RequestMapping("/getDepartments")
		public ModelAndView getEmployees() {
			List<Department> employees = deptService.getAllDepartments();
			ModelAndView model = new ModelAndView("getDepartments");
			model.addObject("employees", employees);
			return model;
		}
		//SEARCH
		//GET
		@RequestMapping(value = "/getDepartmentById", method = RequestMethod.GET)
		public ModelAndView show1() {
			return new ModelAndView("getDepartmentById", "v", new SelectAttributeValue());
		}
		//SEARCH
		//POST
		//show all employees saved in db
			@RequestMapping(value= "/getDepartmentById",method = RequestMethod.POST)
			public ModelAndView getspecDepart(@ModelAttribute("v") SelectAttributeValue v) {
				List<Department> employees = deptService.getDepartmentById(v.getattribute(),v.getvalue());
				ModelAndView model = new ModelAndView("getDepartmentById");
				model.addObject("employees", employees);
				return model;
			}
}
