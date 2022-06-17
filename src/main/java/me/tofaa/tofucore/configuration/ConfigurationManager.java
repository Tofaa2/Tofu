package me.tofaa.tofucore.configuration;

import me.tofaa.tofucore.TofuCore;
import me.tofaa.tofucore.utilities.Strings;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.configuration.file.YamlConfiguration;

import java.io.File;
import java.io.IOException;

public class ConfigurationManager {


    private final File configFile;
    private final File messagesFile;

    private FileConfiguration config;
    private FileConfiguration messages;

    public ConfigurationManager() {
        this.configFile = new File(TofuCore.getInstance().getDataFolder(), "config.yml");
        this.messagesFile = new File(TofuCore.getInstance().getDataFolder(), "message.yml");
        boolean configBefore = true;
        boolean messagesBefore = true;
        if (!configFile.exists()) {
            try {
                TofuCore.getInstance().getLogger().info("Configuration file not found. Creating new one.");
                configFile.createNewFile();
                TofuCore.getInstance().getLogger().info("Configuration file created.");
                configBefore = false;
            } catch (IOException e) {
                TofuCore.getInstance().getLogger().severe("Could not create configuration file.");
                e.printStackTrace();
            }
        }

        if (!messagesFile.exists()) {
            try {
                TofuCore.getInstance().getLogger().info("Message file not found. Creating new one.");
                messagesFile.createNewFile();
                TofuCore.getInstance().getLogger().info("Message file created.");
                messagesBefore = false;
            } catch (IOException e) {
                TofuCore.getInstance().getLogger().severe("Could not create message file.");
                e.printStackTrace();
            }
        }

        this.config = YamlConfiguration.loadConfiguration(configFile);
        this.messages = YamlConfiguration.loadConfiguration(messagesFile);

        if (!configBefore) {
            this.config.set("disable-vanilla-commands", false);

            this.config.set("database.type", "FLAT_FILE");
            this.config.set("database.url", "localhost");
            this.config.set("database.port", 3306);
            this.config.set("database.username", "root");
            this.config.set("database.password", "root");



        }

        save();
    }

    private void addDefaults(){

    }


    public void save(){
        try {
            TofuCore.getInstance().getLogger().info("Saving configuration file.");
            config.save(configFile);
            TofuCore.getInstance().getLogger().info("Saving message file.");
            messages.save(messagesFile);
            TofuCore.getInstance().getLogger().info("Configuration files saved.");
        } catch (IOException e) {
            TofuCore.getInstance().getLogger().severe("Could not save configuration file.");
            e.printStackTrace();
        }
    }

    public void addConfigKey(String key, Object value){
        config.set(key, value);
    }

    public void addMessageKey(String key, Object value){
        messages.set(key, value);
    }

    public Object getConfigValue(String key){
        return config.get(key);
    }

    public Object getMessageValue(String key){
        return Strings.cc(messages.getString(key).replaceAll("%prefix%", messages.getString("prefix")));
    }

}
