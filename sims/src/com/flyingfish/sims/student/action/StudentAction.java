package com.flyingfish.sims.student.action;

import java.sql.SQLException;
import java.text.SimpleDateFormat;

import org.apache.commons.dbutils.QueryRunner;

import cn.itcast.jdbc.TxQueryRunner;

import com.flyingfish.sims.student.domain.Student;

public class StudentAction {
	private Student stu;

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}
	private QueryRunner qr = new TxQueryRunner();
	//添加老师
	public void add(){
		String dateTime = stu.getStu_age().toString();
		String time=formatDateStr(dateTime);
		
		String sql = "insert into student (stu_sta,stu_roll_id,stu_pwd,stu_name,stu_gender,stu_edu_level,stu_graduate_shcool,stu_professional,stu_memo,stu_fk_sc_id,stu_cardid,stu_address_prov,stu_address_city,stu_address_area,stu_age,stu_phone,stu_qq,stu_email,stu_fama_name,stu_fama_phone,stu_fk_class_id) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params ={stu.getStu_sta(),stu.getStu_roll_id(),stu.getStu_pwd(),stu.getStu_name(),stu.getStu_gender(),stu.getStu_edu_level(),stu.getStu_graduate_shcool(),stu.getStu_professional(),stu.getStu_memo(),stu.getStu_fk_sc_id(),stu.getStu_cardid(),stu.getStu_address_prov(),stu.getStu_address_city(),stu.getStu_address_area(),time,stu.getStu_phone(),stu.getStu_qq(),stu.getStu_email(),stu.getStu_fama_name(),stu.getStu_fama_phone(),stu.getStu_fk_class_id()};
		try {
			qr.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//调用添加的方法
	public String addStudent(){
		System.out.println(stu);
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
