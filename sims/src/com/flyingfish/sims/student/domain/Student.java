package com.flyingfish.sims.student.domain;

import java.util.Date;

public class Student {
	private int stu_id;//--学生编号，自增
	private int stu_fk_sc_id;//--校区外键
	private String stu_sta;//--学生状态
	private String stu_roll_id;//--学生学籍编号（学生用户名，不能重复）
	private String stu_pwd;//--学生密码
	private String stu_name;//--学生姓名
	private String stu_gender;//--学生性别
	private String stu_cardid;//--身份证号码
	private String stu_address_prov;//--学生省份
	private String stu_address_city;//--学生城市
	private String stu_address_area;//--学生区县
	private Date stu_age;//--出生日期
	private String stu_phone;//--联系电话
	private String stu_qq;//--QQ号
	private String stu_email;//--邮箱地址
	private String stu_edu_level;//--学历
	private String stu_graduate_shcool;//--毕业院校
	private String stu_professional;//--所学专业
	private int stu_fk_class_id;//--班级外键
	private String stu_fama_name;//--监护人姓名
	private String stu_fama_phone;//--监护人电话
	private String stu_pic;//--学生照片
	private String stu_memo;//--学生档案备注
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getStu_id() {
		return stu_id;
	}
	public void setStu_id(int stu_id) {
		this.stu_id = stu_id;
	}
	public int getStu_fk_sc_id() {
		return stu_fk_sc_id;
	}
	public void setStu_fk_sc_id(int stu_fk_sc_id) {
		this.stu_fk_sc_id = stu_fk_sc_id;
	}
	public String getStu_sta() {
		return stu_sta;
	}
	public void setStu_sta(String stu_sta) {
		this.stu_sta = stu_sta;
	}
	public String getStu_roll_id() {
		return stu_roll_id;
	}
	public void setStu_roll_id(String stu_roll_id) {
		this.stu_roll_id = stu_roll_id;
	}
	public String getStu_pwd() {
		return stu_pwd;
	}
	public void setStu_pwd(String stu_pwd) {
		this.stu_pwd = stu_pwd;
	}
	public String getStu_name() {
		return stu_name;
	}
	public void setStu_name(String stu_name) {
		this.stu_name = stu_name;
	}
	public String getStu_gender() {
		return stu_gender;
	}
	public void setStu_gender(String stu_gender) {
		this.stu_gender = stu_gender;
	}
	public String getStu_cardid() {
		return stu_cardid;
	}
	public void setStu_cardid(String stu_cardid) {
		this.stu_cardid = stu_cardid;
	}
	public String getStu_address_prov() {
		return stu_address_prov;
	}
	public void setStu_address_prov(String stu_address_prov) {
		this.stu_address_prov = stu_address_prov;
	}
	public String getStu_address_city() {
		return stu_address_city;
	}
	public void setStu_address_city(String stu_address_city) {
		this.stu_address_city = stu_address_city;
	}
	public String getStu_address_area() {
		return stu_address_area;
	}
	public void setStu_address_area(String stu_address_area) {
		this.stu_address_area = stu_address_area;
	}
	public Date getStu_age() {
		return stu_age;
	}
	public void setStu_age(Date stu_age) {
		this.stu_age = stu_age;
	}
	public String getStu_phone() {
		return stu_phone;
	}
	public void setStu_phone(String stu_phone) {
		this.stu_phone = stu_phone;
	}
	public String getStu_qq() {
		return stu_qq;
	}
	public void setStu_qq(String stu_qq) {
		this.stu_qq = stu_qq;
	}
	public String getStu_email() {
		return stu_email;
	}
	public void setStu_email(String stu_email) {
		this.stu_email = stu_email;
	}
	public String getStu_edu_level() {
		return stu_edu_level;
	}
	public void setStu_edu_level(String stu_edu_level) {
		this.stu_edu_level = stu_edu_level;
	}
	public String getStu_graduate_shcool() {
		return stu_graduate_shcool;
	}
	public void setStu_graduate_shcool(String stu_graduate_shcool) {
		this.stu_graduate_shcool = stu_graduate_shcool;
	}
	public String getStu_professional() {
		return stu_professional;
	}
	public void setStu_professional(String stu_professional) {
		this.stu_professional = stu_professional;
	}
	public int getStu_fk_class_id() {
		return stu_fk_class_id;
	}
	public void setStu_fk_class_id(int stu_fk_class_id) {
		this.stu_fk_class_id = stu_fk_class_id;
	}
	public String getStu_fama_name() {
		return stu_fama_name;
	}
	public void setStu_fama_name(String stu_fama_name) {
		this.stu_fama_name = stu_fama_name;
	}
	public String getStu_fama_phone() {
		return stu_fama_phone;
	}
	public void setStu_fama_phone(String stu_fama_phone) {
		this.stu_fama_phone = stu_fama_phone;
	}
	public String getStu_pic() {
		return stu_pic;
	}
	public void setStu_pic(String stu_pic) {
		this.stu_pic = stu_pic;
	}
	public String getStu_memo() {
		return stu_memo;
	}
	public void setStu_memo(String stu_memo) {
		this.stu_memo = stu_memo;
	}
	@Override
	public String toString() {
		return "Student [stu_id=" + stu_id + ", stu_fk_sc_id=" + stu_fk_sc_id
				+ ", stu_sta=" + stu_sta + ", stu_roll_id=" + stu_roll_id
				+ ", stu_pwd=" + stu_pwd + ", stu_name=" + stu_name
				+ ", stu_gender=" + stu_gender + ", stu_cardid=" + stu_cardid
				+ ", stu_address_prov=" + stu_address_prov
				+ ", stu_address_city=" + stu_address_city
				+ ", stu_address_area=" + stu_address_area + ", stu_age="
				+ stu_age + ", stu_phone=" + stu_phone + ", stu_qq=" + stu_qq
				+ ", stu_email=" + stu_email + ", stu_edu_level="
				+ stu_edu_level + ", stu_graduate_shcool="
				+ stu_graduate_shcool + ", stu_professional="
				+ stu_professional + ", stu_fk_class_id=" + stu_fk_class_id
				+ ", stu_fama_name=" + stu_fama_name + ", stu_fama_phone="
				+ stu_fama_phone + ", stu_pic=" + stu_pic + ", stu_memo="
				+ stu_memo + "]";
	}
	
}
