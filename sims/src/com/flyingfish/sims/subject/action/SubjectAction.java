package com.flyingfish.sims.subject.action;

import org.apache.commons.dbutils.QueryRunner;

import cn.itcast.jdbc.TxQueryRunner;

import com.flyingfish.sims.subject.domain.Subject;

public class SubjectAction {
private Subject subject;
	
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	private QueryRunner qr = new TxQueryRunner();
	//添加课程
	public void add() {	
		String sql = "insert into subject (sub_name,sub_memo) values(?,?)";
		Object[] params = {subject.getSub_name(),subject.getSub_memo()};
		try {
			qr.update(sql, params);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	//调用添加的方法
	public String addSubject() {
		System.out.println(subject);
		add();
		return "success";
	}
}
