package me.tofaa.tofu.database.types.sqlite;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.database.IDBClient;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SQLiteDatabase implements IDBClient {

    private Connection connection;
    private final String dbName;

    public SQLiteDatabase(String dbName, String table) {
        this.dbName = dbName;
        File dataFolder = new File(Tofu.getInstance().getDataFolder(), "Database/SQLite");
        if (!dataFolder.exists()) {
            dataFolder.mkdirs();
            if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) Tofu.getInstance().getLogger().info("Created SQLite Database directory");
        }

        File dataFile = new File(Tofu.getInstance().getDataFolder(), "Database/SQLite/" + dbName + ".db");
        if (!dataFile.exists()) {
            try {
                dataFile.createNewFile();
                if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) Tofu.getInstance().getLogger().info("Created SQLite Database file");
            }
            catch (IOException e) {
                Tofu.getInstance().getLogger().severe("Error while creating SQLite Database file");
                if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) e.printStackTrace();
            }
        }

        connection = SQLiteConnection.open(dataFile.getAbsolutePath());
        try {
            assert connection != null;
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM " + table + " WHERE player = ?");
            ResultSet rs = ps.executeQuery();
            close(ps, rs);
        }
        catch (Exception e) {
            Tofu.getInstance().getLogger().severe("Error while checking SQLite Database table");
            if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) e.printStackTrace();
        }
    }



    private void close(PreparedStatement statement, ResultSet result) {
        try {
            if (result != null) {
                result.close();
            }
            if (statement != null) {
                statement.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public Connection getConnection() {return this.connection;}

}
