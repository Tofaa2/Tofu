package me.tofaa.tofu;

import me.tofaa.tofu.configuration.type.Messages;
import me.tofaa.tofu.utilities.Strings;
import org.bukkit.Bukkit;

public class TofuLogger {


    public static void logInfo(String message){
        Bukkit.getConsoleSender().sendMessage(Messages.get(Messages.PREFIX) + Strings.cc( " &aINFO: " + message));
    }

    public static void logWarning(String message){
        Bukkit.getConsoleSender().sendMessage(Messages.get(Messages.PREFIX) + Strings.cc(" &eWARNING: " + message));
    }

    public static void logError(String message){
        Bukkit.getConsoleSender().sendMessage(Messages.get(Messages.PREFIX) + Strings.cc( " &cERROR: " + message));
    }

}
