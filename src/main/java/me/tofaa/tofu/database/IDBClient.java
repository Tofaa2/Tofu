package me.tofaa.tofu.database;

import java.sql.Connection;

public interface IDBClient {

    Connection getConnection();
    default boolean isFlatFile(Connection connection) {
        return connection != null;
    }

}
