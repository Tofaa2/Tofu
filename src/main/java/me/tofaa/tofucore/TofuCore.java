package me.tofaa.tofucore;

import me.tofaa.tofucore.command.CommandManager;
import me.tofaa.tofucore.configuration.ConfigurationManager;
import me.tofaa.tofucore.utilities.TofuTaskManager;
import org.bukkit.plugin.java.JavaPlugin;
import lombok.Getter;
public class TofuCore extends JavaPlugin {

    @Getter private static TofuCore instance;


    @Getter private TofuTaskManager taskManager;
    @Getter private ConfigurationManager configManager;
    @Getter private CommandManager commandManager;

    @Override public void onLoad(){instance = this;}
    @Override public void onEnable() {
        this.taskManager = new TofuTaskManager();
        this.configManager = new ConfigurationManager();
        this.commandManager = new CommandManager();
    }

    @Override public void onDisable() {

    }





}
