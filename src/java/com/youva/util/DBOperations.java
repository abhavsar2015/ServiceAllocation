package com.youva.util;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.youva.base.ConnectionManager;
import java.io.File;
import java.io.FileInputStream;
import java.sql.Blob;

public class DBOperations {

	public static boolean performInsertOperation(String tableName, Map<String, Object> dbValues, ConnectionManager manager) throws Exception {

		Connection connection = manager != null && manager.isConnectionStarted() ? ConnectionUtil.getConnection() : manager.getConnection();
               String query;
               //0 if(tableName=="image4")
               //{
                 //  query=getIMAGEInsertQuery(tableName, dbValues);
               //}
               //else
               //{
		  query=getInsertQuery(tableName, dbValues);
               //}
                PreparedStatement preparedStatement = getPreparedStatement(query, connection, dbValues);
		int i = preparedStatement.executeUpdate();
		if (manager == null || !manager.isConnectionStarted()) {
			connection.close();
		}
		return i > 0;

	}
        private static String getIMAGEInsertQuery(String tableName, Map<String, Object> dbValues) {

		// insert query start insert into tablename values ();
		String insertQuery = "Insert into " + tableName + " (";
		String values = "values (bfilename(";
		for (String key : dbValues.keySet()) {
			insertQuery += key + ",";
			values += "?),";
		}
		insertQuery = insertQuery.substring(0, insertQuery.length() - 1);
		values = values.substring(0, values.length() - 1);
		insertQuery += ") " + values + "";
		// insert query finished
               
		System.out.println("Insert Query==>" + insertQuery);
                System.out.println("DBVALUES==>" + dbValues);
		return insertQuery;
	}

	private static String getInsertQuery(String tableName, Map<String, Object> dbValues) {

		// insert query start insert into tablename values ();
		String insertQuery = "Insert into " + tableName + " (";
		String values = "values (";
		for (String key : dbValues.keySet()) {
			insertQuery += key + ",";
			values += "?,";
		}
		insertQuery = insertQuery.substring(0, insertQuery.length() - 1);
		values = values.substring(0, values.length() - 1);
		insertQuery += ") " + values + ")";
		// insert query finished
               
		System.out.println("Insert Query==>" + insertQuery);
                System.out.println("DBVALUES==>" + dbValues);
		return insertQuery;
	}

	// Update Query
	public static boolean performUpdateOperation(String tablename, Map<String, Object> dbValues, ConnectionManager manager, String key) throws Exception {
		Connection connection = manager != null && manager.isConnectionStarted() ? ConnectionUtil.getConnection() : manager.getConnection();
		String query =  QueryUtil.getQuery(key);
                System.out.println(query);
                System.out.println(dbValues);
		PreparedStatement pr = getPreparedStatement(query, connection, dbValues);
		int i = pr.executeUpdate();
		if (manager == null || !manager.isConnectionStarted()) {
			connection.close();
		}
		return i > 0;
	}

	private static String getUpdateQuery(String tableName, Map<String, Object> dbValues) {

		String updateQuery = "update " + tableName + " set";
		String values = "where ";

		for (String key : dbValues.keySet()) {
			updateQuery += " " + key + "=?";
			values += " a like ?";
		}

		updateQuery = updateQuery.substring(0, updateQuery.length() - 7);
		values = values.substring(0, values.length() - 12);
		updateQuery += "" + values + "";
		System.out.println("Insert Query==>" + updateQuery);
		return updateQuery;
	}

	public static boolean prformDeleteOperation(String tablename, Map<String, Object> dbValues, ConnectionManager manager, boolean useKey) throws Exception {
		Connection connection = manager != null && manager.isConnectionStarted() ? ConnectionUtil.getConnection() : manager.getConnection();
		String query = useKey ? getUpdateQuery(tablename, dbValues) : QueryUtil.getQuery(tablename);
		PreparedStatement pr = getPreparedStatement(query, connection, dbValues);
		int i = pr.executeUpdate();
		if (manager == null || !manager.isConnectionStarted()) {
			connection.close();
		}
		return i > 0;
	}

	private static String getDeleteQuery(String tablename, Map<String, Object> dbValues) {

		String query = "delete from " + tablename + " where";
		for (String key : dbValues.keySet()) {
			query += " " + key + " like ?;";
		}
		System.out.println("Delete Query=>" + query);
		return query;
	}

	private static PreparedStatement getPreparedStatement(String query, Connection con, Object dbValues) throws Exception {
		PreparedStatement preparedStatement = con.prepareStatement(query);

		if (dbValues instanceof Map) {
			Object obj;
			int index = 1;
			Map<String, Object> tempDbValue = (Map<String, Object>) dbValues;
			for (String key : tempDbValue.keySet()) {
				obj = tempDbValue.get(key);

				if (obj instanceof String) {
					preparedStatement.setString(index++, (String) obj);
				} else if (obj instanceof Integer) {
					preparedStatement.setInt(index++, (Integer) obj);
				} else if (obj instanceof Double) {
					preparedStatement.setDouble(index++, (Double) obj);
				} else if (obj instanceof Float) {
					preparedStatement.setFloat(index++, (Float) obj);
				} else if (obj instanceof Long) {
					preparedStatement.setLong(index++, (Long) obj);
				}
                                else if (obj instanceof FileInputStream) {
					preparedStatement.setBinaryStream(index++, (FileInputStream) obj);
				}
			}
		} else if (dbValues instanceof List) {
			int index = 1;
			List<Object> tempDbValue = (List<Object>) dbValues;
			for (Object obj : tempDbValue) {
				if (obj instanceof String) {
					preparedStatement.setString(index++, (String) obj);
				} else if (obj instanceof Integer) {
					preparedStatement.setInt(index++, (Integer) obj);
				} else if (obj instanceof Double) {
					preparedStatement.setDouble(index++, (Double) obj);
				} else if (obj instanceof Float) {
					preparedStatement.setFloat(index++, (Float) obj);
				} else if (obj instanceof Long) {
					preparedStatement.setLong(index++, (Long) obj);
				}
			}
		}

		return preparedStatement;
	}

	public static String performSelectOperation(String key, Map<String, Object> dbValues, ConnectionManager manager) throws Exception {

		
		Connection connection = manager != null && manager.isConnectionStarted() ? ConnectionUtil.getConnection() : manager.getConnection();
		Map<String, Object> map = null;
		String query = QueryUtil.getQuery(key);
                System.out.println(query);
                System.out.println(dbValues);
		PreparedStatement preparedStatement = getPreparedStatement(query, connection, dbValues);
		ResultSet resultSet = preparedStatement.executeQuery();
		ResultSetMetaData metaData = resultSet.getMetaData();
                String data=null;
		while (resultSet.next()) {
			map = new HashMap<String, Object>();
			for (int index = 1; index <= metaData.getColumnCount(); index++) {
				data=resultSet.getString(index);
				System.out.println(metaData.getColumnName(index) + "  " + resultSet.getObject(index));
			}
			
		}
		System.out.println(resultSet);
		if (manager == null || !manager.isConnectionStarted()) {
			connection.close();
		}
		return data;
	}
        public static Blob performSelectIMGOperation(String key, Map<String, Object> dbValues, ConnectionManager manager) throws Exception {

		
		Connection connection = manager != null && manager.isConnectionStarted() ? ConnectionUtil.getConnection() : manager.getConnection();
		Map<String, Object> map = null;
		String query = QueryUtil.getQuery(key);
                System.out.println(query);
                System.out.println(dbValues);
		PreparedStatement preparedStatement = getPreparedStatement(query, connection, dbValues);
		ResultSet resultSet = preparedStatement.executeQuery();
		ResultSetMetaData metaData = resultSet.getMetaData();
                Blob data=null;
		while (resultSet.next()) {
			map = new HashMap<String, Object>();
			for (int index = 1; index <= metaData.getColumnCount(); index++) {
                           
				data=resultSet.getBlob(index);
				System.out.println(metaData.getColumnName(index) + "  " + resultSet.getObject(index));
			}
			
		}
		System.out.println(resultSet);
		if (manager == null || !manager.isConnectionStarted()) {
			connection.close();
		}
		return data;
	}
        public ArrayList  view(String key,ConnectionManager manager,Map<String, Object> dbValues)
          {
              ArrayList li=new ArrayList();
              try
              {
                  
              
              Connection connection = manager != null && manager.isConnectionStarted() ? ConnectionUtil.getConnection() : manager.getConnection();
              String query = QueryUtil.getQuery(key);
                System.out.println(query);
                System.out.println(dbValues);
		PreparedStatement preparedStatement = getPreparedStatement(query, connection, dbValues);
		ResultSet rs = preparedStatement.executeQuery();
		ResultSetMetaData metaData = rs.getMetaData();
              
              while(rs.next())
              {
                String s="";
                ResultSetMetaData rsmd=rs.getMetaData();
                for(int i=1;i<=rsmd.getColumnCount();i++)
                s+=rs.getString(i)+",";
                System.out.println(""+s+"");
                li.add(s);
              }
               rs.close();
               if (manager == null || !manager.isConnectionStarted()) {
			connection.close();
		}
              }
              catch(Exception e)
              {
                  System.out.println("Exception in view"+e);
              }
              
              return li;
          }

}
