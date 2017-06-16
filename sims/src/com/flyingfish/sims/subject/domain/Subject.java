package com.flyingfish.sims.subject.domain;

public class Subject {
	private int sub_id;
	private String sub_name;
	private String sub_memo;
	public int getSub_id() {
		return sub_id;
	}
	public void setSub_id(int sub_id) {
		this.sub_id = sub_id;
	}
	public String getSub_name() {
		return sub_name;
	}
	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}
	public String getSub_memo() {
		return sub_memo;
	}
	public void setSub_memo(String sub_memo) {
		this.sub_memo = sub_memo;
	}
	@Override
	public String toString() {
		return "Subject [sub_id=" + sub_id + ", sub_name=" + sub_name
				+ ", sub_memo=" + sub_memo + "]";
	}
}
