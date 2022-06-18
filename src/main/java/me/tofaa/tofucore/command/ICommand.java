package me.tofaa.tofucore.command;


import java.util.List;

public interface ICommand {

    String getName();
    String getDescription();
    String getPermission();
    String getUsage();
    List<String> getAliases();
    int getCooldown();
    int getMinArgs();

}
