package com.flyingfish.sims.teacher.domain;

import java.util.List;

public class PageBean<T> {
	private int pageCode;//当前页码
	//private int totalPage;//总页数
	private List<T> datas;//当前页数记录
	private int totalRecord;//总记录数
	private int pageSize=3;//每页记录数
	public PageBean() {
	}
	public PageBean(int pageCode, int totalRecord) {
		this(pageCode,totalRecord,3);
	}
	public PageBean(int pageCode, int totalRecord, int pageSize) {
		this.pageCode = pageCode;
		this.totalRecord = totalRecord;
		this.pageSize = pageSize;
	}
	public int getPageCode() {
		return pageCode;
	}
	public void setPageCode(int pageCode) {
		this.pageCode = pageCode;
	}
	public List<T> getDatas() {
		return datas;
	}
	public void setDatas(List<T> datas) {
		this.datas = datas;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPage() {
		int totalPage =this.totalRecord / pageSize;
		return totalRecord % pageSize ==0? totalPage:totalPage+1;
	}
	
}
