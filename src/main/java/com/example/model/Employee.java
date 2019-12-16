package com.example.model;
public class Employee {

	private String fname;
	private String lname;
	private String id;
	private String bdate;
	private String joindate;
	private String gender;
	private String lang;
	private String exp;
	private String address;
	private String dno;
	private String salary;
	private String contact;

	public String getfname() {
		return fname;
	}

	public void setfname(String fname) {
		this.fname = fname;
	}

	public String getlname() {
		return lname;
	}

	public void setid(String id) {
		this.id = id;
	}
	public String getid() {
		return id;
	}
	public String getbdate() {
		return bdate;
	}

	public void setbdate(String bdate) {
		this.bdate = bdate;
	}
	public String getjoindate() {
		return joindate;
	}

	public void setjoindate(String joindate) {
		this.joindate = joindate;
	}
	public String getgender() {
		return gender;
	}

	public void setgender(String gender) {
		this.gender = gender;
	}

	public String getlang() {
		return lang;
	}

	public void setlang(String lang) {
		this.lang = lang;
	}
	public String getexp() {
		return exp;
	}

	public void setexp(String exp) {
		this.exp = exp;
	}
	public String getaddress() {
		return address;
	}

	public void setaddress(String address) {
		this.address = address;
	}
	public String getdno() {
		return dno;
	}

	public void setdno(String dno) {
		this.dno = dno;
	}
	public String getsalary() {
		return salary;
	}

	public void setsalary(String salary) {
		this.salary = salary;
	}
	public String getcontact() {
		return contact;
	}

	public void setcontact(String contact) {
		this.contact = contact;
	}
	public void setlname(String lname) {
		this.lname = lname;
	}
	@Override
	public String toString() {
		return "Employee[fname=" + fname + ", lname=" + lname + ",id="+id  + ",bdate="+bdate+ ",joindate=" + joindate+ ",gender="+gender+ ",lang="+lang+ ",exp="+exp+ ",address="+address+ ",dno="+dno+ ",salary="+salary+ ",contact="+contact+"]";
		//return "HEYY, this part works:)"; 
	}
}