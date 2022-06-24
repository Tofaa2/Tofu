package me.tofaa.tofu.database;

import me.tofaa.tofu.database.types.flatfile.FlatFileDatabase;

import java.sql.Connection;

public interface IDBClient {

    Connection getConnection();
    default boolean isFlatFile(Connection connection) {
        return connection instanceof FlatFileDatabase;
    }

}
