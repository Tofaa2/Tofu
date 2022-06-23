package me.tofaa.tofu.database;


import lombok.Getter;
import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.database.types.mysql.MySQLDatabase;

import java.sql.SQLException;

public class Database {

    @Getter private IDBClient client;

    public Database() {
        try {
            switch (String.valueOf(Configuration.get(Configuration.DATABASE_TYPE)).toLowerCase()) {
                case "mysql":
                    this.client = new MySQLDatabase();
                    break;

            }
        }
        catch (SQLException e) {
            TofuLogger.logError("Could not connect to MySQL database: " + e.getMessage());
        }
    }

}
