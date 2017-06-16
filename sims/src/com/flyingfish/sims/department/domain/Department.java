package com.flyingfish.sims.department.domain;

public class Department {
	private int dept_id;//部门编号，自增
	private String dept_sta;//部门状态
	private String dept_name;//部门名称
	private int dept_fk_sc_id;//校区外键
	private String dept_phone;//部门电话
	private String dept_memo;//部门备注
	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public String getDept_sta() {
		return dept_sta;
	}
	public void setDept_sta(String dept_sta) {
		this.dept_sta = dept_sta;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public int getDept_fk_sc_id() {
		return dept_fk_sc_id;
	}
	public void setDept_fk_sc_id(int dept_fk_sc_id) {
		this.dept_fk_sc_id = dept_fk_sc_id;
	}
	public String getDept_phone() {
		return dept_phone;
	}
	public void setDept_phone(String dept_phone) {
		this.dept_phone = dept_phone;
	}
	public String getDept_memo() {
		return dept_memo;
	}
	public void setDept_memo(String dept_memo) {
		this.dept_memo = dept_memo;
	}
	@Override
	public String toString() {
		return "Department [dept_id=" + dept_id + ", dept_sta=" + dept_sta
				+ ", dept_name=" + dept_name + ", dept_fk_sc_id="
				+ dept_fk_sc_id + ", dept_phone=" + dept_phone + ", dept_memo="
				+ dept_memo + "]";
	}
	
}
