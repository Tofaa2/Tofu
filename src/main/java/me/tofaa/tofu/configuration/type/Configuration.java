package me.tofaa.tofu.configuration.type;

import lombok.Getter;
import me.tofaa.tofu.Tofu;

public enum Configuration {

    DEBUG_MODE("debug-mode"),

    COOLDOWN_ENABLED("command.cooldowns.enabled"),
    COOLDOWN_BYPASS_PERMISSION("command.cooldowns.bypass-permission"),
    COOLDOWN_BYPASS_ENABLED("command.cooldowns.bypass");



    @Getter private final String key;
    Configuration(String key) {
        this.key = key;
    }

    public static Object get(Configuration key){
        return Tofu.getInstance().getConfigManager().getConfig().get(key.getKey());
    }
}
