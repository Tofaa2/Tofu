package me.tofaa.tofucore;

import me.tofaa.tofucore.configuration.type.Messages;
import me.tofaa.tofucore.utilities.Strings;
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
