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

import com.bean.BeanContest;

/**
 * 该类用来导出所有科创数据到excel
 *   导出文件说明：
 *      导出文件有7列：
 *         1.姓名
 *         2.学号
 *         3.竞赛名称
 *         4.具体赛事名称
 *         5.比赛规模
 *         6.参赛人名单
 *         7.比赛时间
 *         
 *   操作说明：
 *    1.调用CreateSheet()生成excel文件和sheet
 *    2.调用CreateLabel()向excel中写入表头
 *    3.调用getList()从数据库中获得所有数据的列表
 *    4.调用WriteData()把获取到的数据写入到excel中
 * @author li
 * @version 1.0
 */
public class OutContest {
	private static String FILE = "科创成绩导出.xls";

	private static WritableWorkbook book = null;
	private static WritableSheet sheet = null;
	private static Connection conn;
	private static PreparedStatement pre;
	private static ResultSet res;

	/**
	 * 创建excel的一个sheet
	 * @return
	 */
	private static boolean CreateSheet() {

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
	private static boolean CreateLabel() throws RowsExceededException,
			WriteException, IOException {

		Label name = new Label(0, 0, "姓名");
		sheet.addCell(name);
		Label stuid = new Label(1, 0, "学号");
		sheet.addCell(stuid);
		Label conname = new Label(2, 0, "竞赛名称");
		sheet.addCell(conname);
		Label title = new Label(3, 0, "赛事具体名称");
		sheet.addCell(title);
		Label size = new Label(4, 0, "比赛规模");
		sheet.addCell(size);
		Label paper = new Label(5, 0, "参赛人名单");
		sheet.addCell(paper);
		Label time = new Label(6, 0, "比赛时间");
		sheet.addCell(time);
		Label termnum = new Label(7, 0, "学期数");
		sheet.addCell(termnum);
		

		return true;
	}

	/**
	 * 写数据到excel文件中
	 * @param list
	 * @return
	 * @throws RowsExceededException
	 * @throws WriteException
	 * @throws IOException
	 */
	public static boolean WriteData(ArrayList<BeanContest> list)
			throws RowsExceededException, WriteException, IOException {
		int row = 1;
		int column;
		CreateSheet();
		CreateLabel();
		for (BeanContest item : list) {
			column = 0;
			for (column = 0; column < 8; column++) {
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
	 * 获取数据列表
	 * @return
	 * @throws SQLException
	 */
	public static ArrayList<BeanContest> getList() throws SQLException {
		conn = DB.getConnection();
		String sql = "";

		sql = "SELECT D.`UserName`, D.`UserId`, B.`ContestName`, A.`title`, C.`LevelName`, A.`Crew`, A.`ConTime`,A.`TermNum` " +
				"FROM `_Contest_List` A JOIN `_Contest_Item` B ON  A.`ContestId` = B.`ContestID` JOIN `_Contest_Level` C ON A.`LevelId` = C.`LevelId` " +
				"JOIN `_Login_Info` D ON A.`UserId` = D.`UserId` WHERE `IsVerify` = 0";

		pre = DB.prepare(conn, sql);
		res = pre.executeQuery();

		ArrayList<BeanContest> list = new ArrayList<BeanContest>();
		while (res.next()) {
			BeanContest contest = new BeanContest();
			contest.setName(res.getString("UserName"));
			contest.setStuid(res.getString("UserId"));
			contest.setConname(res.getString("ContestName"));
			contest.setTime(res.getString("ConTime"));
			contest.setTitle(res.getString("title"));
			contest.setSize(res.getString("LevelName"));
			contest.setPaper(res.getString("Crew"));
			contest.setTermNum(res.getString("TermNum"));
			list.add(contest);
		}
		return list;
	}

}
