package me.tofaa.tofu.database;


import lombok.Getter;
import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.database.types.flatfile.FlatFileDatabase;
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
                case "flat_file" : {
                    this.client = new FlatFileDatabase();
                }

            }
        }
        catch (SQLException e) {
            TofuLogger.logError("Could not connect to database: " + e.getMessage());
        }
    }

}
