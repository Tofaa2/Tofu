package me.tofaa.tofu.configuration.type;

import lombok.Getter;
import me.tofaa.tofu.Tofu;

public enum Configuration {

    DEBUG_MODE("debug-mode"),

    COOLDOWN_ENABLED("command.cooldowns.enabled"),
    COOLDOWN_BYPASS_PERMISSION("command.cooldowns.bypass-permission"),
    COOLDOWN_BYPASS_ENABLED("command.cooldowns.bypass"),

    DATABASE_TYPE("database.type"),
    DATABASE_HOST("database.url"),
    DATABASE_USER("database.user"),
    DATABASE_NAME("database.name"),
    DATABASE_PASSWORD("database.password"),
    DATABASE_PORT("database.port");

    @Getter private final String key;
    Configuration(String key) {
        this.key = key;
    }

    public static Object get(Configuration key){
        return Tofu.getInstance().getConfigManager().getConfig().get(key.getKey());
    }
}
