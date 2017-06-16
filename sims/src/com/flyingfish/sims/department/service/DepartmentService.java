package com.flyingfish.sims.department.service;

import java.sql.SQLException;

import com.flyingfish.sims.department.dao.DepartmentDao;
import com.flyingfish.sims.department.domain.Department;

public class DepartmentService {
	DepartmentDao dao=new DepartmentDao();
	public void addDepartment(Department d) {
		try {
			dao.createDepartment(d);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
