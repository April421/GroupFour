package com.flyingfish.sims.teacher.paging.servce;

import java.util.List;
import com.flyingfish.sims.teacher.domain.PageBean;
import com.flyingfish.sims.teacher.domain.Teacher;
import com.flyingfish.sims.teacher.paging.dao.TeacherDao;
/**
 * 分页查询
 * @author 张家俊
 *
 */
public class TeacherServce {
	private TeacherDao tDao=new TeacherDao();
	public PageBean<Teacher> queryPage(Teacher criteria,int pageCode){
		try {
			int totalRecord =tDao.count(criteria);//获取总记录数
			//使用当前页码和总记录数创建PageBean
			PageBean<Teacher> pb=new PageBean<Teacher>(pageCode,totalRecord);		
			//查询本页记录
			List<Teacher> datas=tDao.queryByPage(criteria,(pageCode-1)*3);
			//保存到PageBean中
			pb.setDatas(datas);
			return pb;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}
