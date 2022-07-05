package me.tofaa.tofu.api;


import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.command.CommandManager;
import me.tofaa.tofu.configuration.ConfigurationManager;
import me.tofaa.tofu.event.EventManager;
import me.tofaa.tofu.item.ItemManager;
import me.tofaa.tofu.scoreboard.ScoreboardManager;
import me.tofaa.tofu.utilities.nms.NMSHandler;

/*
    Pretend this is supposed to resemble an api and not some static references.
 */
public class TofuAPI {

    public static ItemManager getItemAPI(){return Tofu.getInstance().getItemManager();}
    public static EventManager getEventAPI(){return Tofu.getInstance().getEventManager();}
    public static ConfigurationManager getConfigAPI(){return Tofu.getInstance().getConfigManager();}
    public static ScoreboardManager getScoreboardAPI(){return Tofu.getInstance().getScoreboardManager();}
    public static CommandManager getCommandAPI(){return Tofu.getInstance().getCommandManager();}
    public static NMSHandler getNmsAPI(){return Tofu.getInstance().getNmsHandler();}

}
