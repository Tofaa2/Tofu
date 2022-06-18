package me.tofaa.tofucore.configuration.type;

import lombok.Getter;
import me.tofaa.tofucore.TofuCore;

public enum Configuration {

    DEBUG_MODE("debug-mode");

    @Getter private final String key;
    Configuration(String key) {
        this.key = key;
    }

    public static Object get(Configuration key){
        return TofuCore.getInstance().getConfigManager().getConfig().get(key.getKey());
    }
}
