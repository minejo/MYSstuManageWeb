package com.bean;

public class BeanStudentInfo {
	private String name;
	private String id;
	private String classNum;
	private String pwdRandom;
	private String pwdMD5;
	private String admitMajor;

	public String getName() {
		return name;
	}

	public String getPwdRandom() {
		return pwdRandom;
	}

	public void setPwdRandom(String pwdRandom) {
		this.pwdRandom = pwdRandom;
	}

	public String getPwdMD5() {
		return pwdMD5;
	}

	public void setPwdMD5(String pwdMD5) {
		this.pwdMD5 = pwdMD5;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getClassNum() {
		return classNum;
	}

	public void setClassNum(String classNum) {
		this.classNum = classNum;
	}

	public String getAdmitMajor() {
		return admitMajor;
	}

	public void setAdmitMajor(String admitMajor) {
		this.admitMajor = admitMajor;
	}

	@Override
	public String toString() {
		return "BeanStudentInfo [name=" + name + ", id=" + id + ", classNum="
				+ classNum + ", pwdRandom=" + pwdRandom + ", pwdMD5=" + pwdMD5
				+ "]";
	}
}
