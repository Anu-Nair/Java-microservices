package com.example.model;

public class Department {
	private String dno;
	private String dname;
	private String noemp;
	private String startdate;
	private String hodid;
	
	public void setdno(String dno) {
		this.dno = dno;
	}
	public String getdno() {
		return dno;
	}

	public void setdname(String dno) {
		this.dname = dno;
	}
	public String getdname() {
		return dname;
	}
	
	public void setnoemp(String dno) {
		this.noemp = dno;
	}
	public String getnoemp() {
		return noemp;
	}
	
	public void setstartdate(String dno) {
		this.startdate = dno;
	}
	public String getstartdate() {
		return startdate;
	}
	
	public void sethodid(String dno) {
		this.hodid = dno;
	}
	public String gethodid() {
		return hodid;
	}
	@Override
	public String toString() {
		return "Department[dno=" + dno + ", dname=" + dname + ",noemp="+noemp  + ",startdate="+startdate+ ",hodid=" + hodid+"]";
		//return "HEYY, this part works:)"; 
	}
}
