package me.tofaa.tofu;

import me.tofaa.tofu.command.CommandManager;
import me.tofaa.tofu.configuration.ConfigurationManager;
import me.tofaa.tofu.item.ItemManager;
import me.tofaa.tofu.utilities.TofuTaskManager;
import me.tofaa.tofu.utilities.nms.NMSHandler;
import org.bukkit.plugin.java.JavaPlugin;
import lombok.Getter;

public class Tofu extends JavaPlugin {

    @Getter private static Tofu instance;

    @Getter private TofuTaskManager taskManager;
    @Getter private ConfigurationManager configManager;
    @Getter private CommandManager commandManager;
    @Getter private ItemManager itemManager;
    @Getter private NMSHandler nmsHandler;

    @Override public void onLoad(){instance = this;}
    @Override public void onEnable() {
        if (!getDataFolder().exists()) {getDataFolder().mkdirs();}

        this.configManager = new ConfigurationManager();
        this.taskManager = new TofuTaskManager();
        this.commandManager = new CommandManager();
        this.itemManager = new ItemManager();
        this.nmsHandler = new NMSHandler();
    }

    @Override public void onDisable() {

    }





}
