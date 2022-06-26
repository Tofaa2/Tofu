package me.tofaa.tofu.database.types.flatfile;


import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.database.IDBClient;
import me.tofaa.tofu.utilities.TofuTaskManager;
import org.bukkit.entity.Player;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;
import java.util.UUID;

public class FlatFileDatabase implements IDBClient {

    private final HashMap<UUID, FlatDataTable> data;

    public FlatFileDatabase() {
        this.data = new HashMap<>();
        File playerDataDir = new File(Tofu.getInstance().getDataFolder(), "Database/Flat File");
        if (!playerDataDir.exists()) {
            playerDataDir.mkdirs();
            if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) TofuLogger.logInfo("Created Flat File Database directory");
        }

    }

    public FlatDataTable getTable(Player player) {
        UUID uuid = player.getUniqueId();
        return data.get(uuid);
    }

    public void register(UUID uuid, FlatDataTable table) {
        data.put(uuid, table);
        if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) TofuLogger.logInfo("Registered Flat File Database table for " + uuid.toString());
    }

    public void saveAll() {
        data.forEach((uuid, table) -> {
            try {
                table.getSemaphore().acquireUninterruptibly();
                save(table);
            }
            catch (IOException e) {
                TofuLogger.logError("Error while saving Flat File Database");
                if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) e.printStackTrace();
            }
            finally {
                table.getSemaphore().release();
            }
        });
        TofuTaskManager.flatFileExecutor.shutdown();
    }

    // Use player for convenience.
    public void setData(Player player, String key, Object value) {
        FlatDataTable table = getTable(player);
        try {
            table.getSemaphore().acquireUninterruptibly();
            table.getPlayerData().set(key, value);
        }
        finally {
            table.getSemaphore().release();
        }
    }

    public Object getData(Player player, String key) {
        FlatDataTable table = getTable(player);
        try {
            table.getSemaphore().acquireUninterruptibly();
            return table.getPlayerData().get(key);
        }
        finally {
            table.getSemaphore().release();
        }
    }


    public void save(FlatDataTable table) throws IOException{
        if (table.getPlayerData().getKeys(false).isEmpty() && table.getPlayerDataFile().exists()) {
            table.getPlayerDataFile().delete();
        }
        else {
            table.getPlayerData().save(table.getPlayerDataFile());
        }
    }


    @Override public Connection getConnection() {return null;}


}
