package com.flyingfish.sims.department.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flyingfish.sims.department.domain.Department;
import com.flyingfish.sims.department.service.DepartmentService;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

public class DepartmentServlet extends BaseServlet {
	DepartmentService departmentService=new DepartmentService();
	public String add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			Department department=CommonUtils.toBean(request.getParameterMap(),Department.class);
			departmentService.addDepartment(department);
			return "f:home.jsp";
	}
}
