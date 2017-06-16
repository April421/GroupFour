package com.flyingfish.sims.classroom.domin;

import java.util.Date;

public class Classroom {
	private int class_id;//班级编号
	private int class_fk_sc_id;//校区外键
	private String class_sta;//班级状态
	private String class_name;//班级名称
	private Date class_create_date;//开班时间
	private String class_days;//每周上课的天数
	private String class_time_begin;//上课开始时间
	private String class_time_end;//上课结束时间
	private int classs_fk_classsroom_id;//班级教室外键
	private int class_fk_pro_id;//班级专业外键
	private int class_fk_sub_id;//班级课程外键
	private Date class_graduate_date;//班级毕业时间
	private String class_memo;//班级备注
	public Classroom() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	public int getClass_fk_sc_id() {
		return class_fk_sc_id;
	}
	public void setClass_fk_sc_id(int class_fk_sc_id) {
		this.class_fk_sc_id = class_fk_sc_id;
	}
	public String getClass_sta() {
		return class_sta;
	}
	public void setClass_sta(String class_sta) {
		this.class_sta = class_sta;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public Date getClass_create_date() {
		return class_create_date;
	}
	public void setClass_create_date(Date class_create_date) {
		this.class_create_date = class_create_date;
	}
	public String getClass_days() {
		return class_days;
	}
	public void setClass_days(String class_days) {
		this.class_days = class_days;
	}
	public String getClass_time_begin() {
		return class_time_begin;
	}
	public void setClass_time_begin(String class_time_begin) {
		this.class_time_begin = class_time_begin;
	}
	public String getClass_time_end() {
		return class_time_end;
	}
	public void setClass_time_end(String class_time_end) {
		this.class_time_end = class_time_end;
	}
	public int getClasss_fk_classsroom_id() {
		return classs_fk_classsroom_id;
	}
	public void setClasss_fk_classsroom_id(int classs_fk_classsroom_id) {
		this.classs_fk_classsroom_id = classs_fk_classsroom_id;
	}
	public int getClass_fk_pro_id() {
		return class_fk_pro_id;
	}
	public void setClass_fk_pro_id(int class_fk_pro_id) {
		this.class_fk_pro_id = class_fk_pro_id;
	}
	public int getClass_fk_sub_id() {
		return class_fk_sub_id;
	}
	public void setClass_fk_sub_id(int class_fk_sub_id) {
		this.class_fk_sub_id = class_fk_sub_id;
	}
	public Date getClass_graduate_date() {
		return class_graduate_date;
	}
	public void setClass_graduate_date(Date class_graduate_date) {
		this.class_graduate_date = class_graduate_date;
	}
	public String getClass_memo() {
		return class_memo;
	}
	public void setClass_memo(String class_memo) {
		this.class_memo = class_memo;
	}
	@Override
	public String toString() {
		return "Classroom [class_id=" + class_id + ", class_fk_sc_id="
				+ class_fk_sc_id + ", class_sta=" + class_sta + ", class_name="
				+ class_name + ", class_create_date=" + class_create_date
				+ ", class_days=" + class_days + ", class_time_begin="
				+ class_time_begin + ", class_time_end=" + class_time_end
				+ ", classs_fk_classsroom_id=" + classs_fk_classsroom_id
				+ ", class_fk_pro_id=" + class_fk_pro_id + ", class_fk_sub_id="
				+ class_fk_sub_id + ", class_graduate_date="
				+ class_graduate_date + ", class_memo=" + class_memo + "]";
	}
}
