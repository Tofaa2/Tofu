package me.tofaa.tofucore.configuration;

import lombok.Getter;
import me.tofaa.tofucore.TofuCore;
import me.tofaa.tofucore.TofuLogger;
import me.tofaa.tofucore.utilities.exceptions.IncorrectTofuConfigurationException;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.configuration.file.YamlConfiguration;

import java.io.File;

/*
    This class manages all the configuration files of the plugin.
    It contains util methods such as saving and loading configuration files, reloading configurations.
 */
public class ConfigurationManager {


    private final File configFile = new File(TofuCore.getInstance().getDataFolder(), "config.yml");
    private final File messagesFile = new File(TofuCore.getInstance().getDataFolder(), "messages.yml");

    @Getter private FileConfiguration config;
    @Getter private FileConfiguration messages;


    public ConfigurationManager() {

        if (!configFile.exists()) {
            try {
                TofuCore.getInstance().saveResource("config.yml", false);
                //boolean a = configFile.createNewFile();
            } catch (Exception e) {
                TofuLogger.logError("Could not create config file!");
                e.printStackTrace();
            }
        }

        if (!messagesFile.exists()) {
            try {
                TofuCore.getInstance().saveResource("messages.yml", false);
                //boolean a = messagesFile.createNewFile();
            } catch (Exception e) {
                TofuLogger.logError("Could not create messages file!");
                e.printStackTrace();
            }
        }


        this.config = YamlConfiguration.loadConfiguration(configFile);
        this.messages = YamlConfiguration.loadConfiguration(messagesFile);
    }


    public void reloadConfig(File config) throws IncorrectTofuConfigurationException {
        if (config.equals(configFile)) {
            this.config = YamlConfiguration.loadConfiguration(configFile);
        }
        else if (config.equals(messagesFile)) {
            this.messages = YamlConfiguration.loadConfiguration(messagesFile);
        }
        else {
            throw new IncorrectTofuConfigurationException(config);
        }
    }

    public void saveConfig(File config) throws IncorrectTofuConfigurationException {
        if (config.equals(configFile)) {
            try {
                this.config.save(configFile);
            } catch (Exception e) {
                TofuCore.getInstance().getLogger().severe("Could not save config file!");
            }
        }
        else if (config.equals(messagesFile)) {
            try {
                this.messages.save(messagesFile);
            } catch (Exception e) {
                TofuCore.getInstance().getLogger().severe("Could not save messages file!");
            }
        }
        else {
            throw new IncorrectTofuConfigurationException(config);
        }
    }
}
