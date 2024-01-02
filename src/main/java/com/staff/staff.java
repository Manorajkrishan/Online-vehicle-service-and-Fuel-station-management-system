package com.staff;

public class staff {
	private int eid;
	private String name;
	private String NIC;
	private String number;
	private String gender;
	private String address;
	private String position;
	private String staff_detailscol;
	public staff(int eid, String name, String NIC, String number, String gender, String address, String position,
		 String staff_detailscol) {
		super();
		this.eid = eid;
		this.name = name;
		this.NIC = NIC;
		this.number = number;
		this.gender = gender;
		this.address = address;
		this.position = position;
		this.staff_detailscol = staff_detailscol;
	}
	public int geteid() {
		return eid;
	}
	
	public String getname() {
		return name;
	}
	
	public String getNIC() {
		return NIC;
	}
	
	public String getnumber() {
		return number;
	}
	
	
	public String getgender() {
		return gender;
	}
	
	
	public String getaddress() {
		return address;
	}
	
	public String getposition() {
		return position;
	}
	
	public String getstaff_detailscol() {
		return staff_detailscol;
	}
}
