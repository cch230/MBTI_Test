package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ConnectDB {
	private static ConnectDB instance = new ConnectDB();

	public static ConnectDB getInstance() {
		return instance;
	}

	String jdbcUrl = "jdbc:mysql://115.85.181.90:3307/mbti?autoReconnect=true&characterEncoding=euc_kr";
	String dbId = "root";
	String dbPw = "Cch951753!";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String sql2 = "";
	String returns = "fail";

	// 데이터베이스와 통신하기 위한 코드가 들어있는 메서드
	private ConnectDB() {

		try {
			System.out.println("연결");

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(jdbcUrl, dbId, dbPw);

		} catch (SQLException e) {

			System.out.println("데이터베이스 연결에 실패했습니다.");
			e.printStackTrace();

		} catch (ClassNotFoundException e) {
			System.out.println("클래스가 없습니다.");
			e.printStackTrace();

		}
	}

	public String InsertData(List<String> list) {

		sql = "INSERT into data(SEX, AGE, QNA_A, QNA_B, QNA_C, QNA_D, QNA_E, QNA_F, QNA_G, QNA_H) VALUES(?,?,?,?,?,?,?,?,?,?)";

		try {
		
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, list.get(0));
			pstmt.setInt(2, Integer.parseInt(list.get(1)));
			pstmt.setString(3, list.get(2));
			pstmt.setString(4, list.get(3));
			pstmt.setString(5, list.get(4));
			pstmt.setString(6, list.get(5));
			pstmt.setString(7, list.get(6));
			pstmt.setString(8, list.get(7));
			pstmt.setString(9, list.get(8));
			pstmt.setString(10, list.get(9));

			pstmt.executeUpdate();
			returns = "ok";
			System.out.println(returns);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		

		return returns;
	}

	public String InsertInfo(List<String> list) {

		sql = "INSERT into INFO(NAME, PHONE) VALUES(?,?)";

		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, list.get(0));
			pstmt.setString(2, list.get(1));

			pstmt.executeUpdate();
			returns = "ok";
			System.out.println(returns);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		
		return returns;
	}

	public List<String> SelectDup() {

		List<String> list = new ArrayList<>();
		sql = "SELECT NAME, PHONE FROM info order by SEQ DESC limit 0,5";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(rs.getString("NAME"));
				list.add(rs.getString("PHONE"));
			}
			// conn.close();
		} catch (SQLException e) {

			System.out.println("조회에 실패했습니다.");
			e.printStackTrace();

		} finally {

			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();

				}
			
		}
		return list;
	}
	public List<String> SelectDataDup() {

		List<String> list = new ArrayList<>();
		sql = "SELECT SEX, AGE, QNA_A, QNA_B, QNA_C, QNA_D, QNA_E, QNA_F, QNA_G, QNA_H FROM data order by SEQ DESC limit 0,1";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(rs.getString("SEX"));
				list.add(rs.getString("AGE"));
				list.add(rs.getString("QNA_A"));
				list.add(rs.getString("QNA_B"));
				list.add(rs.getString("QNA_C"));
				list.add(rs.getString("QNA_D"));
				list.add(rs.getString("QNA_E"));
				list.add(rs.getString("QNA_F"));
				list.add(rs.getString("QNA_G"));
				list.add(rs.getString("QNA_H"));			

			}
			// conn.close();
		} catch (SQLException e) {

			System.out.println("조회에 실패했습니다.");
			e.printStackTrace();

		} finally {

			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();

				}
			
		}
		return list;
	}
}
