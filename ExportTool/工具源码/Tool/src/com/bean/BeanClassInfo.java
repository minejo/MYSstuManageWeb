package com.bean;

public class BeanClassInfo {
	private int id; 			// 班级编号, 1即为该年级的一班
	private String name; 		// 班级配置名称
	private String classname; 	// 班级的全称,如 2013级1班
	private String num; 		// 班级人数
	private String classid; 	// 数据库里的编号

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getNum() {
		return num;
	}

	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setNum(String num) {
		this.num = num;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public String getClassid() {
		return classid;
	}

	public void setClassid(String classid) {
		this.classid = classid;
	}

	@Override
	public String toString() {
		return "BeanClassInfo [id=" + id + ", name=" + name + ", classname="
				+ classname + ", num=" + num + ", classid=" + classid + "]";
	}
}
