package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import utils.DB;


public class LoginService {
	/***
	 * LOGINTABLE_name 登陆表表名 
	 * infor 登陆信息(登录成功，即为uid)
	 * state 登录状态
	 * 	1) 0: 状态正常
	 * 	2) 1: 用户(UID)不存在
	 * 	3) 2: 密码错误
	 *  4) 3: 邮箱不存在
	 */
	private static final String TABLE_LOGIN = "`_Login_Info`";
	private static final String TABLE_CLASS = "`_Class_Info`";
	private String infor = "";
	private int state = 0;
	
	// 数据库连接量
	private Connection conn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;
	
	
	/***
	 * 验证用户(UserId)是否存在
	 * @param UserId 登陆名
	 * @return isExist 返回是否存在
	 */
	public boolean isUserExist(String UserId) throws SQLException, NamingException {

		boolean isExist = false;
		String sql = "SELECT COUNT(*) FROM #A WHERE `UserId` = ? AND `AccTyp`= 2";
		
		conn = DB.getConnection();
		sql = sql.replace("#A", TABLE_LOGIN);
		ps = DB.prepare(conn, sql);
		
		// 设置参数
		ps.setString(1, UserId);
		
		rs = ps.executeQuery();
		rs.next();
		if (rs.getInt(1) == 1) {
			isExist = true;
		} else {
			state = 1;
		}
		
		this.close();
		return isExist;
	}

	/***
	 * 验证用户是否合法，即用户是否存在，用户密码是否匹配
	 * @param UserId  登陆名
	 * @param pwd 密码
	 * @return 用户合法信息
	 */
	public boolean isUserLegal(String UserId, String pwd) throws SQLException, NamingException {
		String passwd = "";
		boolean isLegal = false;

		// 判断用户存在
		if (!isUserExist(UserId)) {
			return isLegal;
		}

		String sql = "SELECT `pwd` FROM #A WHERE `UserId` = ?";
		
		conn = DB.getConnection();
		sql = sql.replace("#A", TABLE_LOGIN);
		ps = DB.prepare(conn, sql);
		
		// 设置参数
		ps.setString(1, UserId);
		rs = ps.executeQuery();
		rs.next();
		passwd = rs.getString(1);
		this.close();
		
		if (passwd.equals(pwd)) {
			isLegal = true;
		} else {
			this.state = 2;		// 密码错误
		}
		
		return isLegal;
	}



	
	private void close() throws SQLException {
		DB.close(rs);
		DB.close(ps);
		DB.close(conn);
	}

	public String getInfor() {
		return infor;
	}

	public int getState() {
		return state;
	}

	public void setInfor(final String infor) {
		this.infor = infor;
	}

	public void setState(final int state) {
		this.state = state;
	}
}
