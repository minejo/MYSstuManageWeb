package com.action;

import java.util.ArrayList;
import java.util.List;

import com.bean.BeanClassInfo;
import com.bean.BeanGrade;
import com.bean.BeanStudentInfo;

public class PrRegisterStu {
	
	public boolean LoadBatch() {
		
		// 年级信息
		BeanGrade grade = InputStudentList.getGradeInfo();
		
		// 构造班级编号和班级实际名字
		InputStudentList.compClassInfo(grade);
		// 项数据库添加班级信息
		 if (!InputStudentList.putClass(grade)) {
			 System.out.println("年级已存在或者班级存储失败");
			 return false;
		 }
		// 把班级信息写入配置文件
		if (! InputStudentList.isClassWrited()) { // 首先检查信息有无写入配置文件
			InputStudentList.writeUpdateClassInfo(grade);
		}
		// 从excel中 获取学生信息
		ArrayList<BeanStudentInfo> stdList = InputStudentList.getStudentInfo();
		// 替换学生信息中的班级信息
		InputStudentList.updateStdClassInfo(stdList, grade);
		
		// 产生密码
		InputStudentList.getRandomPassword(stdList);
		
		// 写入数据库
		boolean isPutStu = InputStudentList.putStudent(stdList);
		if (! isPutStu) {
			System.out.println("有学生已存在数据库中或者其他错误导致无法存储");
			return false;
		}
		
		// 密码写回Excel
		InputStudentList.putIntoExcle(stdList);
		
		for (BeanStudentInfo std : stdList) {
			System.out.println(std);
		}
		
		List<BeanClassInfo> list = grade.getClassList();
		for (BeanClassInfo item : list) {
			System.out.println(item);
		}
		
		return true;
	}
}
