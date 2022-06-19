package me.tofaa.tofucore.command.config;

import me.tofaa.tofucore.TofuCore;
import me.tofaa.tofucore.command.TofuCommand;
import me.tofaa.tofucore.configuration.type.Messages;
import org.bukkit.entity.Player;

import java.util.List;

public class ReloadConfigurationCommand extends TofuCommand {
    public ReloadConfigurationCommand() {
        super("reloadconfiguration",
                "Reloads the TofuCore configuration files",
                "tofucore.commands.reloadconfiguration"
                , List.of("reloadconfig", "reloadcfg"),
                "reloadconfiguration", 0, 0);
    }

    @Override
    public void runPlayer(Player p, String s , String[] args) {
        TofuCore.getInstance().getConfigManager().reloadAllConfigs();
        p.sendMessage(Messages.commandMessage(Messages.CONFIGURATION_RELOADED, p, this));
    }
}



