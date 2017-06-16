package com.flyingfish.sims.teacher.domain;	

import java.util.Date;

public class Teacher {
	private int emp_id;//教师编号，自增
	private int emp_fk_sc_id;//校区外键
	private String emp_sta;//教师状态
	private String emp_username;//用户名，不能重复
	private String emp_pass;//密码
	private String emp_name;//教师姓名
	private Date emp_age;//教师出生日期
	private String emp_gender;//教师性别
	private String emp_cardid;//身份证号码
	private String emp_phone;//联系电话
	private String emp_qq;//QQ号
	private String emp_email;//邮箱地址
	private String emp_address_prov;//老师省份
	private String emp_address_city;//老师城市
	private String emp_address_area;//老师区县
	private String emp_edu_level;//学历
	private String emp_graduate_school;//毕业院校
	private int emp_fk_dept_id;//部门外键
	private int emp_fk_posi_id;//职位外键
	private String emp_pic;//教师照片
	private String emp_memo;//教师档案备注
	public Teacher() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public int getEmp_fk_sc_id() {
		return emp_fk_sc_id;
	}
	public void setEmp_fk_sc_id(int emp_fk_sc_id) {
		this.emp_fk_sc_id = emp_fk_sc_id;
	}
	public String getEmp_sta() {
		return emp_sta;
	}
	public void setEmp_sta(String emp_sta) {
		this.emp_sta = emp_sta;
	}
	public String getEmp_username() {
		return emp_username;
	}
	public void setEmp_username(String emp_username) {
		this.emp_username = emp_username;
	}
	public String getEmp_pass() {
		return emp_pass;
	}
	public void setEmp_pass(String emp_pass) {
		this.emp_pass = emp_pass;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public Date getEmp_age() {
		return emp_age;
	}
	public void setEmp_age(Date emp_age) {
		this.emp_age = emp_age;
	}
	public String getEmp_gender() {
		return emp_gender;
	}
	public void setEmp_gender(String emp_gender) {
		this.emp_gender = emp_gender;
	}
	public String getEmp_cardid() {
		return emp_cardid;
	}
	public void setEmp_cardid(String emp_cardid) {
		this.emp_cardid = emp_cardid;
	}
	public String getEmp_phone() {
		return emp_phone;
	}
	public void setEmp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}
	public String getEmp_qq() {
		return emp_qq;
	}
	public void setEmp_qq(String emp_qq) {
		this.emp_qq = emp_qq;
	}
	public String getEmp_email() {
		return emp_email;
	}
	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}
	public String getEmp_address_prov() {
		return emp_address_prov;
	}
	public void setEmp_address_prov(String emp_address_prov) {
		this.emp_address_prov = emp_address_prov;
	}
	public String getEmp_address_city() {
		return emp_address_city;
	}
	public void setEmp_address_city(String emp_address_city) {
		this.emp_address_city = emp_address_city;
	}
	public String getEmp_address_area() {
		return emp_address_area;
	}
	public void setEmp_address_area(String emp_address_area) {
		this.emp_address_area = emp_address_area;
	}
	public String getEmp_edu_level() {
		return emp_edu_level;
	}
	public void setEmp_edu_level(String emp_edu_level) {
		this.emp_edu_level = emp_edu_level;
	}
	public String getEmp_graduate_school() {
		return emp_graduate_school;
	}
	public void setEmp_graduate_school(String emp_graduate_school) {
		this.emp_graduate_school = emp_graduate_school;
	}
	public int getEmp_fk_dept_id() {
		return emp_fk_dept_id;
	}
	public void setEmp_fk_dept_id(int emp_fk_dept_id) {
		this.emp_fk_dept_id = emp_fk_dept_id;
	}
	public int getEmp_fk_posi_id() {
		return emp_fk_posi_id;
	}
	public void setEmp_fk_posi_id(int emp_fk_posi_id) {
		this.emp_fk_posi_id = emp_fk_posi_id;
	}
	public String getEmp_pic() {
		return emp_pic;
	}
	public void setEmp_pic(String emp_pic) {
		this.emp_pic = emp_pic;
	}
	public String getEmp_memo() {
		return emp_memo;
	}
	public void setEmp_memo(String emp_memo) {
		this.emp_memo = emp_memo;
	}
	@Override
	public String toString() {
		return "Teacher [emp_id=" + emp_id + ", emp_fk_sc_id=" + emp_fk_sc_id
				+ ", emp_sta=" + emp_sta + ", emp_username=" + emp_username
				+ ", emp_pass=" + emp_pass + ", emp_name=" + emp_name
				+ ", emp_age=" + emp_age + ", emp_gender=" + emp_gender
				+ ", emp_cardid=" + emp_cardid + ", emp_phone=" + emp_phone
				+ ", emp_qq=" + emp_qq + ", emp_email=" + emp_email
				+ ", emp_address_prov=" + emp_address_prov
				+ ", emp_address_city=" + emp_address_city
				+ ", emp_address_area=" + emp_address_area + ", emp_edu_level="
				+ emp_edu_level + ", emp_graduate_school="
				+ emp_graduate_school + ", emp_fk_dept_id=" + emp_fk_dept_id
				+ ", emp_fk_posi_id=" + emp_fk_posi_id + ", emp_pic=" + emp_pic
				+ ", emp_memo=" + emp_memo + "]";
	}
	
}
