package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.dom4j.Document;

public class DB {
	
	/**
	 * 获取数据库连接
	 * @return conn 数据库连接
	 */
	public static Connection getConnection() {
		Connection conn = null;
		// 获取数据库连接配置
		String drivername = "com.mysql.jdbc.Driver";
		String Url = "jdbc:mysql://222.18.63.53:3306/leopard?useUnicode=true&characterEncoding=utf-8";
		String name = "root";
		String pwd = "swjtu_inc_sns";
		try {
			// 加载驱动
			Class.forName(drivername);
			conn = DriverManager.getConnection(Url, name, pwd);
			if (!conn.isClosed()) {
				return conn;
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 * 获取PreparedStatement对象
	 * @param conn
	 * @param sql
	 * @return 
	 */
	public static PreparedStatement prepare(Connection conn, String sql) throws SQLException {
		PreparedStatement ps = null;
		ps = conn.prepareStatement(sql);
		return ps;
	}
	
	// 关闭数据库连接
	public static void close(Connection conn) throws SQLException {
		if (conn != null) {
			conn.close();
		}
	}

	public static void close(PreparedStatement ps) throws SQLException {
		if (ps != null) {
			ps.close();
		}
	}

	public static void close(ResultSet rs) throws SQLException {
		if (rs != null) {
			rs.close();
		}
	}
}

class DBConf {
	private String name = "";
	private String driverClassName = "";
	private String url = "";
	private String username = "";
	private String password = "";

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDriverClassName() {
		return driverClassName;
	}

	public void setDriverClassName(String driverClassName) {
		this.driverClassName = driverClassName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}