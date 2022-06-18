package me.tofaa.tofucore;

import me.tofaa.tofucore.utilities.Strings;
import org.bukkit.Bukkit;

public class TofuLogger {


    public static void logInfo(String message){
        Bukkit.getConsoleSender().sendMessage(Strings.cc("&f[&bTofuCore&f] &aINFO: " + message));
    }

    public static void logWarning(String message){
        Bukkit.getConsoleSender().sendMessage(Strings.cc("&f[&bTofuCore&f] &eWARNING: " + message));
    }

    public static void logError(String message){
        Bukkit.getConsoleSender().sendMessage(Strings.cc("&f[&bTofuCore&f] &cERROR: " + message));
    }

}
