package me.tofaa.tofucore.configuration.type;

import lombok.Getter;
import me.tofaa.tofucore.TofuCore;
import me.tofaa.tofucore.utilities.Strings;

public enum Messages {
    PREFIX("prefix"),
    INVALID_USAGE("invalid-usage"),
    INVALID_ARGUMENT("invalid-argument"),
    INVALID_ARGUMENT_TYPE("invalid-argument-type");

    @Getter private final String key;
    Messages(String key){
        this.key = key;
    }

    public static String get(Messages message){
        String prefix = TofuCore.getInstance().getConfigManager().getMessages().getString(Messages.PREFIX.key);
        String value = TofuCore.getInstance().getConfigManager().getMessages().getString(message.key);
        return Strings.cc(prefix + " " + value);
    }

}
