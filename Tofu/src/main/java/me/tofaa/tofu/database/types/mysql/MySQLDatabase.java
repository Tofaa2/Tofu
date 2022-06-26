package me.tofaa.tofu.database.types.mysql;

import lombok.Getter;
import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.database.IDBClient;

import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLDatabase implements IDBClient {

    private Connection connection;

    @Getter private final String host;
    @Getter private final String user;
    @Getter private final String name;
    @Getter private final String password;
    @Getter private final int port;


    public MySQLDatabase() throws SQLException {
        this.host = String.valueOf(Configuration.get(Configuration.DATABASE_HOST));
        this.user = String.valueOf(Configuration.get(Configuration.DATABASE_USER));
        this.password = String.valueOf(Configuration.get(Configuration.DATABASE_PASSWORD));
        this.name = String.valueOf(Configuration.get(Configuration.DATABASE_NAME));
        this.port = Integer.parseInt(String.valueOf(Configuration.get(Configuration.DATABASE_PORT)));
        try {
            Class<?> clazz = Class.forName("com.mysql.jdbc.Driver");
            DriverManager.registerDriver((java.sql.Driver) clazz.getDeclaredConstructor().newInstance());
            this.connection = DriverManager.getConnection("jdbc:mysql://" + this.host + ":" + this.port + "/" + this.name, this.user, this.password);
            if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) TofuLogger.logInfo("MySQLDatabase connected");
        }
        catch (SQLException e) {
            TofuLogger.logError("Could not connect to MySQL database: " + e.getMessage());
            e.printStackTrace();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | InvocationTargetException |
                 NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    public Connection getConnection() {
        return connection;
    }

}
