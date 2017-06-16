package com.flyingfish.sims.teacher.paging.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.flyingfish.sims.teacher.domain.Teacher;

import cn.itcast.jdbc.TxQueryRunner;
/**
 * 对数据多条件分页查询
 * @author 张家俊
 *
 */
public class TeacherDao {
	private QueryRunner qr=new TxQueryRunner();
	public int count(Teacher criteria) throws SQLException{
		
		StringBuilder sb=new StringBuilder("select count(*) from teacher where 1=1");
		List<Object> params=new ArrayList<Object>();//有一个条件就要加一个参数
		//名字
		String name=criteria.getEmp_name();
		if (name!=null&&!name.trim().isEmpty()) {
			sb.append(" and emp_name like ?");
			params.add("%"+name+"%");
		}
		//状态
		String sta=criteria.getEmp_sta();
		if (sta!=null&&!sta.trim().isEmpty()) {
			sb.append(" and emp_sta=?");
			params.add(sta);
		}
		//电话
		String phone=criteria.getEmp_phone();
		if (phone!=null&&!phone.trim().isEmpty()) {
			sb.append(" and emp_phone like ?");
			params.add("%"+phone+"%");
		}
		//学历
		String level=criteria.getEmp_edu_level();
		if (level!=null&&!level.trim().isEmpty()) {
			sb.append(" and emp_edu_level=?");
			params.add(level);
		}
		/*//部门
		String dept_id=String.valueOf(criteria.getEmp_fk_dept_id());
		if (dept_id!=null&&!dept_id.trim().isEmpty()&&!dept_id.equals("0")) {
			sb.append(" and emp_edu_level=?");
			params.add(dept_id);
		}*/
		
		Number n=(Number) qr.query(sb.toString(), new ScalarHandler(),params.toArray());
		return n.intValue();
	}
	public List<Teacher> queryByPage(Teacher criteria,int pageCode) throws SQLException{
		//String sql="select top 3 * from student where id not in(select top (?) id from student)";
		//return qr.query(sql, new BeanListHandler<Student>(Student.class),pageCode);
		StringBuilder sb=new StringBuilder("select top 3 * from teacher where emp_id not in(select top (?) emp_id from teacher)");
		List<Object> params=new ArrayList<Object>();//有一个条件就要加一个参数
		
		params.add(pageCode);
		//名字
		String name=criteria.getEmp_name();
		if (name!=null&&!name.trim().isEmpty()) {
			sb.append(" and emp_name like ?");
			params.add("%"+name+"%");
		}
		//状态
		String sta=criteria.getEmp_sta();
		if (sta!=null&&!sta.trim().isEmpty()) {
			sb.append(" and emp_sta=?");
			params.add(sta);
		}
		//电话
		String phone=criteria.getEmp_phone();
		if (phone!=null&&!phone.trim().isEmpty()) {
			sb.append(" and emp_phone like ?");
			params.add("%"+phone+"%");
		}
		//学历
		String level=criteria.getEmp_edu_level();
		if (level!=null&&!level.trim().isEmpty()) {
			sb.append(" and emp_edu_level=?");
			params.add(level);
		}
		/*//部门
		String dept_id=String.valueOf(criteria.getEmp_fk_dept_id());
		if (dept_id!=null&&!dept_id.trim().isEmpty()&&!dept_id.equals("0")) {
			sb.append(" and emp_edu_level=?");
			params.add(dept_id);
		}*/
		return qr.query(sb.toString(), new BeanListHandler<Teacher>(Teacher.class),params.toArray());
	}
}
