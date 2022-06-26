package me.tofaa.tofu.database.types.sqlite;

import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.configuration.type.Configuration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLiteConnection {

    public static Connection open(String folder) {
        try {
            Class.forName("org.sqlite.JDBC");
            return DriverManager.getConnection("jdbc:sqlite:" + folder);
        }
        catch (Exception e) {
            TofuLogger.logError("Error while opening SQLite connection");
            if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) e.printStackTrace();
        }
        TofuLogger.logError("Error while opening SQLite connection");
        return null;
    }

}
