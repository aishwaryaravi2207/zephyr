package com.zephyr.project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class ZephrDbUtil {
	DataSource dataSource;

	public ZephrDbUtil(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<Inventory> getBill(List<Integer> itemIdList) throws SQLException {

		List<Inventory> inventList = new ArrayList<>();

		Connection myCon = null;
		PreparedStatement myStmt = null;
		ResultSet myRes = null;

		try {
			// create a connection to the db
			myCon = dataSource.getConnection();
			// create an sql statement

			for (int i = 0; i < itemIdList.size(); i++) {

				int id = itemIdList.get(i);

				String query = "select * from zephyr_inventory where item_id=?";

				myStmt = myCon.prepareStatement(query);

				myStmt.setInt(1, id);

				// execute query
				myRes = myStmt.executeQuery();

				// get the student details and create a student object
				if (myRes.next()) {
					String name = myRes.getString("item_name");
					String type = myRes.getString("item_type");
					double price = Double.parseDouble(myRes.getString("item_price"));

					Inventory in = new Inventory(name, type, price);

					inventList.add(in);
				}
			}
			return inventList;
		} finally {
			// close the connection
			closeConnection(myCon, myStmt, myRes);
		}
	}

	private void closeConnection(Connection myCon, Statement myStmt, ResultSet myRes) throws SQLException {
		try {
			if (myStmt != null) {
				myStmt.close();
			}
			if (myRes != null) {
				myRes.close();
			}
			if (myCon != null) {
				myCon.close();// this will not necessarily close the db connection but will return the
								// connection pool
			}
		} catch (Exception exec) {
			exec.printStackTrace();
		}
	}

}
