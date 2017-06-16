package com.flyingfish.sims.teacher.paging.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.flyingfish.sims.teacher.domain.Teacher;
import com.flyingfish.sims.teacher.paging.servce.TeacherServce;
/**
 * WEB层
 * @author 张家俊
 *
 */
public class TeacherServlet extends BaseServlet{
	private TeacherServce stuServce=new TeacherServce();
	public String query(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Teacher criteria=CommonUtils.toBean(request.getParameterMap(),Teacher.class);//封装表单数据
		
		int pageCode=1;
		String s=request.getParameter("pageCode");
		if (s!=null&&!s.trim().isEmpty()) {
			pageCode=Integer.parseInt(s);
		}
		/**
		 * 把条件查询带到链接中
		 */
		StringBuilder sb=new StringBuilder();
		String name=criteria.getEmp_name();
		if (name!=null&&!name.trim().isEmpty()) {
			//处理编码请求
			/*if (request.getMethod().equalsIgnoreCase("get")) {
				name=new String(name.getBytes("iso-8859-1"),"utf-8");
				criteria.setName(name);
			}*/
			sb.append("&emp_name=").append(name);
		}
		
		String sta=criteria.getEmp_sta();
		if (sta!=null&&!sta.trim().isEmpty()) {
			sb.append("&emp_sta=").append(sta);
		}
		
		String phone=criteria.getEmp_phone();
		if (phone!=null&&!phone.trim().isEmpty()) {
			sb.append("&emp_phone=").append(phone);
		}
		
		String level=criteria.getEmp_edu_level();
		if (level!=null&&!level.trim().isEmpty()) {
			sb.append("&emp_edu_level=").append(level);
		}
		
		/*String dept_id=String.valueOf(criteria.getEmp_fk_dept_id());
		if (dept_id!=null&&!dept_id.trim().isEmpty()&&!dept_id.equals("0")) {
			sb.append("&emp_fk_dept_id=").append(dept_id);
		}*/
		
		request.setAttribute("url",sb.toString());
		request.setAttribute("pb",stuServce.queryPage(criteria,pageCode));
		return "f:search.jsp";
	}
}
