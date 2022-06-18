package me.tofaa.tofucore.configuration.type;

import lombok.Getter;
import me.tofaa.tofucore.TofuCore;
import me.tofaa.tofucore.command.TofuCommand;
import me.tofaa.tofucore.utilities.Strings;
import org.bukkit.entity.Player;

import java.io.File;

public enum Messages {
    PREFIX("prefix"),

    INVALID_USAGE("commands.invalid-usage"),
    IN_COOLDOWN("commands.in-cooldown"),
    NO_PERMISSION("commands.no-permission"),
    CONFIGURATION_RELOADED("config.reloaded");

    @Getter private final String key;
    Messages(String key){
        this.key = key;
    }

    public static String get(Messages message){
        String prefix = TofuCore.getInstance().getConfigManager().getMessages().getString(Messages.PREFIX.key);
        String value = TofuCore.getInstance().getConfigManager().getMessages().getString(message.key).replace("{prefix}", prefix);
        return Strings.cc(value);
    }

    public static String commandMessage(Messages message, Player player, TofuCommand command){
        String value = get(message);
        value = value.replace("{player}", player.getName());
        value = value.replace("{command}", command.getName());
        value = value.replace("{usage}", command.getUsage());
        value = value.replace("{permission}", command.getPermission());
        value = value.replace("{cooldown}", String.valueOf(command.getCooldown()));
        value = value.replace("{cooldown-remaining}", String.valueOf(TofuCore.getInstance().getCommandManager().getCooldownLeft(player, command)));
        return value;
    }

    public static String configMessage(Messages message, File file ){
        String value = get(message);
        value = value.replace("{config}", file.getAbsolutePath());
        return value;
    }

}
