package me.tofaa.tofucore.configuration;

import lombok.Getter;
import lombok.Setter;

public class ConfigNode {

    @Getter private final String name;
    @Getter @Setter private Object value;

    public ConfigNode(String name, Object value){
        this.name = name;
        this.value = value;
    }

}
