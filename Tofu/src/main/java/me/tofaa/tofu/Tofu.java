package me.tofaa.tofu;

import me.tofaa.tofu.command.CommandManager;
import me.tofaa.tofu.configuration.ConfigurationManager;
import me.tofaa.tofu.database.Database;
import me.tofaa.tofu.event.EventManager;
import me.tofaa.tofu.item.ItemManager;
import me.tofaa.tofu.permission.PermissionManager;
import me.tofaa.tofu.scoreboard.ScoreboardManager;
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
    @Getter private Database database;
    @Getter private ScoreboardManager scoreboardManager;
    @Getter private EventManager eventManager;
    @Getter private PermissionManager permissionManager;

    @Override public void onLoad(){instance = this;}
    @Override public void onEnable() {
        if (!getDataFolder().exists()) {getDataFolder().mkdirs();}

        this.configManager = new ConfigurationManager();
        this.taskManager = new TofuTaskManager();
        this.commandManager = new CommandManager();
        this.itemManager = new ItemManager();
        this.nmsHandler = new NMSHandler();
        this.database = new Database();
        this.eventManager = new EventManager();
        this.permissionManager = new PermissionManager();
        this.scoreboardManager = new ScoreboardManager();

        TofuUpdater updater = new TofuUpdater(this, 102724);
        updater.checkForUpdates(true, "https://www.spigotmc.org/resources/tofu.102724/"); // Eventually once tofu is stable, this setting will be turned off.
    }

    @Override public void onDisable() {
        TofuLogger.logLinux(TofuLogger.BLACK_BOLD_BRIGHT + "Hello World" + TofuLogger.RESET + TofuLogger.RED_BOLD_BRIGHT + "!");
    }





}
