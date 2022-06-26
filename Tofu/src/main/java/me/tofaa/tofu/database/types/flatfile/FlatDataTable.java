package me.tofaa.tofu.database.types.flatfile;

import lombok.Getter;
import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.utilities.TofuTaskManager;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.configuration.file.YamlConfiguration;

import java.io.File;
import java.util.UUID;
import java.util.concurrent.Semaphore;

public class FlatDataTable {

    @Getter private FileConfiguration playerData;
    @Getter private final File playerDataFile;
    @Getter private final Semaphore semaphore;

    public FlatDataTable(UUID uuid) {
        this.playerDataFile  = new File(Tofu.getInstance().getDataFolder(), "Database/Flat File/" + uuid.toString() + ".yml");
        this.semaphore = new Semaphore(1);
        TofuTaskManager.flatFileExecutor.execute(() -> this.playerData = YamlConfiguration.loadConfiguration(this.playerDataFile));
    }


}
