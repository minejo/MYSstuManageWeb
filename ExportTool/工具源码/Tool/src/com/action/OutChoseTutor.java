package com.action;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;
import utils.DB;

import com.bean.BeanChoseTutor;


/**
 * 该类用来导出学生选导师的所有数据到excel
 * 导出文件说明:
 *    导出的excel包括的数据列有：
 *       1.学生姓名
 *       2.学生学号
 *       3.第一志愿导师
 *       4.第二志愿导师
 *       5.第三志愿导师
 *     
 *       
 * 操作说明：
 *     1.调用CreateSheet()生成excel文件和sheet
 *    2.调用CreateLabel()向excel中写入表头
 *    3.调用getList()从数据库中获得所有数据的列表
 *    4.调用WriteData()把获取到的数据写入到excel中
 * @author li
 * @version 1.0
 *
 */
public class OutChoseTutor {
	
	
	private static String FILE = "选导师导出.xls";
	
	
	private static WritableWorkbook book = null;
	 private static WritableSheet sheet = null;
	private static Connection conn;
	private static PreparedStatement pre;
	private static ResultSet res;
	
	/**
	 * 创建excel文件的sheet
	 * @return
	 */
	private static boolean CreateSheet()
	{
		
		try {
		  book = Workbook.createWorkbook(new File(FILE));
		  sheet = book.createSheet("sheet1", 0);
		  return true;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}			
		return false;
	}
	
	/**
	 * 向sheet中添加label
	 * @return
	 * @throws RowsExceededException
	 * @throws WriteException
	 * @throws IOException
	 */
	private static boolean  CreateLabel() throws RowsExceededException, WriteException, IOException
	{
		
	    Label name = new Label(0, 0, "姓名");
	    sheet.addCell(name);
	    Label stuid = new Label(1, 0, "学号");
	    sheet.addCell(stuid);
	    Label first = new Label(2, 0, "第一志愿导师");
	    sheet.addCell(first);
	    Label second = new Label(3, 0, "第二志愿导师");
	    sheet.addCell(second);
	    Label third = new Label(4, 0, "第三志愿导师");
	    sheet.addCell(third);	 
	   
	    
	//    book.write();
	//    book.close();
	   
		return true;
	}
	
	/**
	 * 向excel中写入查到的数据
	 * @param list
	 * @return
	 * @throws RowsExceededException
	 * @throws WriteException
	 * @throws IOException
	 */
	public static boolean WriteData (ArrayList<BeanChoseTutor> list) throws RowsExceededException, WriteException, IOException
	{
		int row = 1;
		int column;
		CreateSheet();
		CreateLabel();
		
		for(BeanChoseTutor item : list)
		{
			column = 0;
			for(column = 0; column < 7; column++)
			{
				Label label = new Label(column, row, item.getData(column));
				sheet.addCell(label);
			}
			
			row++;
		}
		book.write();
		book.close();
		return false;
	}
	
	/**
	 * 从数据库中获取导师选择的所有数据
	 * @return
	 * @throws SQLException
	 */
	public static ArrayList<BeanChoseTutor> getList() throws SQLException
	{
		conn = DB.getConnection();
		String sql = "";
		/*SELECT A.`UserName`, A.`E-Mail`, A.`IsVery`, C.`classname`, B.* FROM `_Login_Info` A JOIN `_User_Student_Info` B ON A.`UserId` = B.`UserId` JOIN `_Class_Info` C ON B.`classid` = C.`classid` WHERE A.`UserId` = '20120001'
*/	    
		sql =  "SELECT A.`UserName`, A.`UserId`, C.*" +
				" FROM `_Login_Info` A JOIN  `_Major_Chose` C ON A.`UserId` = C.`UserId` JOIN " +
				"`_User_Score` D ON C.`UserId` = D.`UserId`";
		
		pre = DB.prepare(conn, sql);
		res = pre.executeQuery();
		
		ArrayList<BeanChoseTutor> list = new ArrayList<BeanChoseTutor>();
		while(res.next())
		{
			BeanChoseTutor major = new BeanChoseTutor();
			major.setName(res.getString("UserName"));
			major.setStuid(res.getString("UserId"));
			major.setFirst(res.getString("FTName"));
			major.setSecond(res.getString("STName"));
			major.setThird(res.getString("TTName"));			
			
		
			list.add(major);
			
		}
		return list;
	}
	
}
