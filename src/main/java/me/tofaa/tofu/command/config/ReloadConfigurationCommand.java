package me.tofaa.tofu.command.config;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.command.TofuCommand;
import me.tofaa.tofu.configuration.type.Messages;
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
        Tofu.getInstance().getConfigManager().reloadAllConfigs();
        p.sendMessage(Messages.commandMessage(Messages.CONFIGURATION_RELOADED, p, this));
    }
}



