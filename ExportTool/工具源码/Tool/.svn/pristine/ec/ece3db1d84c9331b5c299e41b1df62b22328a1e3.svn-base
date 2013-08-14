package com.bean;

import java.util.List;

public class BeanGrade {
	private String garde;
	private List<BeanClassInfo> classList;
	
	public BeanClassInfo getClassInfo(int i) {
		return classList.get(i);
	}
	
	public BeanClassInfo getClassInfo(String name) {
		for (BeanClassInfo item : classList) {
			if (item.getName().equals(name)) {
				return item;
			}
		}
		return null;
	}
	
	public String getGarde() {
		return garde;
	}

	public void setGarde(String garde) {
		this.garde = garde;
	}

	public List<BeanClassInfo> getClassList() {
		return classList;
	}

	public void setClassList(List<BeanClassInfo> classList) {
		this.classList = classList;
	}
}
