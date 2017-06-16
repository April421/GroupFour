package com.flyingfish.sims.department.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import com.flyingfish.sims.department.domain.Department;

import cn.itcast.jdbc.TxQueryRunner;

public class DepartmentDao {
	public void createDepartment(Department d) throws SQLException{
		QueryRunner qr= new TxQueryRunner();
		String sql="insert into department (dept_sta,dept_name,dept_phone,dept_fk_sc_id,dept_memo) values(?,?,?,?,?)";
		Object[] param=new Object[]{d.getDept_sta(),d.getDept_name(),d.getDept_phone(),d.getDept_fk_sc_id(),d.getDept_memo()};
		qr.update(sql, param);
	}
}
