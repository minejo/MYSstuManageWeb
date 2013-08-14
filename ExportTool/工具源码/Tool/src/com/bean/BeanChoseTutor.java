package com.bean;

public class BeanChoseTutor {
	 private String first;
     private String second;
     private String third;
     private String name;
     private String stuid; 
     private String aveSco;
     private String aveRank;
     
	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first;
	}
	public String getSecond() {
		return second;
	}
	public void setSecond(String second) {
		this.second = second;
	}
	public String getThird() {
		return third;
	}
	public void setThird(String third) {
		this.third = third;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStuid() {
		return stuid;
	}
	public void setStuid(String stuid) {
		this.stuid = stuid;
	}
	public String getAveSco() {
		return aveSco;
	}
	public void setAveSco(String aveSco) {
		this.aveSco = aveSco;
	}
	public String getAveRank() {
		return aveRank;
	}
	public void setAveRank(String aveRank) {
		this.aveRank = aveRank;
	}
	
	public String getData(int i)
	{
		switch (i)
		{
			case 0: return getName();
			case 1: return getStuid();
			case 2: return getFirst();
			case 3: return getSecond();
			case 4: return getThird();		
			case 5: return getAveSco();
			case 6: return getAveRank();
		}
		return "";
	}
}
