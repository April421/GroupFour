package com.flyingfish.sims.teacher.action;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.dbutils.QueryRunner;

import com.flyingfish.sims.teacher.domain.Teacher;

import cn.itcast.jdbc.TxQueryRunner;

public class TeacherAction {
	private Teacher teacher;
	
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	
	private QueryRunner qr = new TxQueryRunner();
	//添加老师
	public void add(){
		String dateTime = teacher.getEmp_age().toString();
		String time=formatDateStr(dateTime);
		
		String sql = "insert into teacher (emp_fk_sc_id,emp_name,emp_username,emp_pass,emp_gender," +
				"emp_age,emp_edu_level,emp_graduate_school,emp_memo,emp_sta," +
				"emp_cardid,emp_address_prov,emp_address_city,emp_address_area,emp_phone," +
				"emp_qq,emp_email,emp_fk_dept_id,emp_fk_posi_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = {teacher.getEmp_fk_sc_id(),teacher.getEmp_name(),teacher.getEmp_username(),teacher.getEmp_pass(),teacher.getEmp_gender(),
				time,teacher.getEmp_edu_level(),teacher.getEmp_graduate_school(),teacher.getEmp_memo(),teacher.getEmp_sta(),
				teacher.getEmp_cardid(),teacher.getEmp_address_prov(),teacher.getEmp_address_city(),teacher.getEmp_address_area(),teacher.getEmp_phone(),
				teacher.getEmp_qq(),teacher.getEmp_email(),teacher.getEmp_fk_dept_id(),teacher.getEmp_fk_posi_id()};
		try {
			qr.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//调用添加的方法
	public String addTeacher(){
		System.out.println(teacher);
		add();
		return "success";
	}
	
	//时间格式转换方法
	 public String formatDateStr(String dateStr) {
	    	SimpleDateFormat sfEnd   = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        SimpleDateFormat sfStart = new SimpleDateFormat("EEE MMM dd HH:mm:ss 'CST' yyyy",java.util.Locale.ENGLISH);
	        String dateResult = dateStr;
	        try {
	            dateResult = sfEnd.format(sfStart.parse(dateStr));
	        } catch (Exception e) {
	        }
	        return dateResult;
	    }
	 
}
