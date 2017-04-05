package com.youva.base;

import java.sql.Connection;

import com.youva.util.ConnectionUtil;

public class ConnectionManager {
	private Connection connection;
	private boolean connectionStarted;

	public ConnectionManager() throws Exception {
		startConnection();
	}

	private void startConnection() throws Exception {
		connection = ConnectionUtil.getConnection();
		connectionStarted = connection != null;
		if (connectionStarted) {
			connection.setAutoCommit(false);
		}

	}

	public void endConnection() throws Exception {
		if (connectionStarted) {
		}
	}

	public void commitTransaction() throws Exception {
		if (connectionStarted) {
			connection.commit();
		}
	}

	public void rollbackTransaction() throws Exception {
		if (connectionStarted) {
			connection.rollback();
		}
	}

	public boolean isConnectionStarted() {
		return connectionStarted;
	}

	public Connection getConnection() {
		return connection;
	}

}
