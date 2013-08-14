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

import com.bean.BeanInteg;

/**
 * 该类用来导出诚信记录到excel 导出文件说明： 导出的excel包括的数据列有： 1.学号 2.名字 3.发生时间 4.发生地点 5.类型 6.详细信息
 * 
 * 操作说明： 1.调用CreateSheet()生成excel文件和sheet 2.调用CreateLabel()向excel中写入表头
 * 3.调用getList()从数据库中获得所有数据的列表 4.调用WriteData()把获取到的数据写入到excel中
 * 
 * @author li
 * @version 1.0
 */

public class OutInteg {

	private static String FILE = "诚信记录导出.xls";

	private static WritableWorkbook book = null;
	private static WritableSheet sheet = null;
	private static Connection conn;
	private static PreparedStatement pre;
	private static ResultSet res;

	/**
	 * 创建excel文件的sheet
	 * @return
	 */
	private static boolean CreateSheet() {

		try {
			book = Workbook.createWorkbook(new File(FILE));
			sheet = book.createSheet("诚信记录", 0);
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
	private static boolean CreateLabel() throws RowsExceededException,
			WriteException, IOException {
		Label name = new Label(0, 0, "姓名");
		sheet.addCell(name);
		Label stuid = new Label(1, 0, "学号");
		sheet.addCell(stuid);
		Label first = new Label(2, 0, "发生时间");
		sheet.addCell(first);
		Label second = new Label(3, 0, "发生地点");
		sheet.addCell(second);
		Label third = new Label(4, 0, "类型");
		sheet.addCell(third);
		Label admit = new Label(5, 0, "详细信息");
		sheet.addCell(admit);

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
	public static boolean WriteData(ArrayList<BeanInteg> list)
			throws RowsExceededException, WriteException, IOException {
		int row = 1;
		int column;
		CreateSheet();
		CreateLabel();
		for (BeanInteg item : list) {
			column = 0;
			for (column = 0; column < 6; column++) {
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
	 * 从数据库中获取诚信记录的所有数据
	 * @return
	 * @throws SQLException
	 */
	public static ArrayList<BeanInteg> getList() throws SQLException {
		conn = DB.getConnection();
		String sql = "";

		sql = "SELECT `StuID`, `StuName`, `place`, `occTime`, `type`, `detail`  FROM `_InterGrity_Info` "
				+ "WHERE `IsVerify` = 0";

		pre = DB.prepare(conn, sql);
		res = pre.executeQuery();

		ArrayList<BeanInteg> list = new ArrayList<BeanInteg>();
		while (res.next()) {
			BeanInteg integ = new BeanInteg();
			integ.setName(res.getString("StuName"));
			integ.setStuid(res.getString("StuID"));
			integ.setPlace(res.getString("place"));
			integ.setTime(res.getString("occTime"));
			integ.setType(integ.gotDetailtype(res.getString("type")));
			integ.setDetail(res.getString("detail"));
			list.add(integ);
		}
		return list;
	}

}
