package me.tofaa.tofu.api;


import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.command.CommandManager;
import me.tofaa.tofu.configuration.ConfigurationManager;
import me.tofaa.tofu.event.EventManager;
import me.tofaa.tofu.item.ItemManager;
import me.tofaa.tofu.scoreboard.ScoreboardManager;

public class TofuAPI {

    public static ItemManager getItemAPI(){return Tofu.getInstance().getItemManager();}
    public static EventManager getEventAPI(){return Tofu.getInstance().getEventManager();}
    public static ConfigurationManager getConfigAPI(){return Tofu.getInstance().getConfigManager();}
    public static ScoreboardManager getScoreboardAPI(){return Tofu.getInstance().getScoreboardManager();}
    public static CommandManager getCommandAPI(){return Tofu.getInstance().getCommandManager();}

}
