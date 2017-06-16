package com.flyingfish.sims.classroom.action;

import java.text.SimpleDateFormat;

import org.apache.commons.dbutils.QueryRunner;

import com.flyingfish.sims.classroom.domin.Classroom;

import cn.itcast.jdbc.TxQueryRunner;

public class ClassAction {
private Classroom cla;
	
	public Classroom getCla() {
		return cla;
	}
	public void setCla(Classroom cla) {
		this.cla = cla;
	}
	
	private QueryRunner qr = new TxQueryRunner();
	public void add() throws Exception {
		System.out.println(cla.getClass_create_date());
		String dateTime = cla.getClass_create_date().toString();
		String dateTime1 = cla.getClass_graduate_date().toString();

		
		String time=formatDataStr(dateTime);
		String time1=formatDataStr(dateTime1);
				
		String sql = "insert into class (class_fk_sc_id,class_sta,class_name,class_create_date,class_days," +
				"class_time_begin,class_time_end,classs_fk_classsroom_id,class_fk_pro_id," +
				"class_fk_sub_id,class_graduate_date,class_memo) values (?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = {cla.getClass_fk_sc_id(),
				cla.getClass_sta(),cla.getClass_name(),
				time,cla.getClass_days(),cla.getClass_time_begin(),
				cla.getClass_time_end(),cla.getClasss_fk_classsroom_id(),
				cla.getClass_fk_pro_id(),cla.getClass_fk_sub_id(),
				time1,cla.getClass_memo()};
		qr.update(sql, params);
		
	}
	public String addClassroom() throws Exception{
		System.out.println(cla);
		add();
		return "success";
	}
	public String formatDataStr(String dateStr) {
		SimpleDateFormat sfEnd = new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
		SimpleDateFormat sfStart = new SimpleDateFormat("EEE MMM dd HH:mm:ss 'CST' yyyy",java.util.Locale.ENGLISH);
		String dateResult = dateStr;
		try {
			 dateResult = sfEnd.format(sfStart.parse(dateStr));
		} catch (Exception e) {
			// TODO: handle exception
		}
		 return dateResult;
	}
}
