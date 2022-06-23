package me.tofaa.tofu.configuration;

import lombok.Getter;
import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.utilities.exceptions.IncorrectTofuConfigurationException;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.configuration.file.YamlConfiguration;

import java.io.File;

/*
    This class manages all the configuration files of the plugin.
    It contains util methods such as saving and loading configuration files, reloading configurations.
 */
public class ConfigurationManager {


    private final File configFile = new File(Tofu.getInstance().getDataFolder(), "config.yml");
    private final File messagesFile = new File(Tofu.getInstance().getDataFolder(), "messages.yml");
    private final File hologramsFile = new File(Tofu.getInstance().getDataFolder(), "holograms.yml");
    private final File itemsFile = new File(Tofu.getInstance().getDataFolder(), "items.yml");
    private final File scoreboardsFile = new File(Tofu.getInstance().getDataFolder(), "scoreboards.yml");

    @Getter private FileConfiguration config;
    @Getter private FileConfiguration messages;
    @Getter private FileConfiguration holograms;
    @Getter private FileConfiguration scoreboards;
    @Getter private FileConfiguration items;


    public ConfigurationManager() {

        if (!configFile.exists()) {
            try {
                Tofu.getInstance().saveResource("config.yml", false);
            } catch (Exception e) {
                TofuLogger.logError("Could not create config file!");
                if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) {
                    e.printStackTrace();
                }
            }
        }
        if (!messagesFile.exists()) {
            try {
                Tofu.getInstance().saveResource("messages.yml", false);
            } catch (Exception e) {
                TofuLogger.logError("Could not create messages file!");
                if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) {
                    e.printStackTrace();
                }
            }
        }
        if (!hologramsFile.exists()) {
            try {
                Tofu.getInstance().saveResource("holograms.yml", false);
            } catch (Exception e) {
                TofuLogger.logError("Could not create holograms file!");
                if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) {
                    e.printStackTrace();
                }
            }
        }
        if (!itemsFile.exists()) {
            try {
                Tofu.getInstance().saveResource("items.yml", false);
            } catch (Exception e) {
                TofuLogger.logError("Could not create items file!");
                if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) {
                    e.printStackTrace();
                }
            }
        }

        if (!scoreboardsFile.exists()) {
            try {
                Tofu.getInstance().saveResource("scoreboards.yml", false);
            } catch (Exception e) {
                TofuLogger.logError("Could not create scoreboards file!");
                if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) {
                    e.printStackTrace();
                }
            }
        }
        this.config = YamlConfiguration.loadConfiguration(configFile);
        this.messages = YamlConfiguration.loadConfiguration(messagesFile);
        this.holograms = YamlConfiguration.loadConfiguration(hologramsFile);
        this.items = YamlConfiguration.loadConfiguration(itemsFile);
        this.scoreboards = YamlConfiguration.loadConfiguration(scoreboardsFile);
    }


    public void reloadConfig(File file) throws IncorrectTofuConfigurationException {
        if (file.equals(configFile)) {
            this.config = YamlConfiguration.loadConfiguration(configFile);
        }
        else if (file.equals(messagesFile)) {
            this.messages = YamlConfiguration.loadConfiguration(messagesFile);
        }
        else if (file.equals(hologramsFile)) {
            this.holograms = YamlConfiguration.loadConfiguration(hologramsFile);
        }
        else if (file.equals(itemsFile)) {
            this.items = YamlConfiguration.loadConfiguration(itemsFile);
            Tofu.getInstance().getItemManager().reload();
        }
        else if (file.equals(scoreboardsFile)) {
            this.scoreboards = YamlConfiguration.loadConfiguration(scoreboardsFile);
            Tofu.getInstance().getItemManager().reload();
        }
        else {
            throw new IncorrectTofuConfigurationException(file);
        }
    }
    public void reloadAllConfigs() {
        this.config = YamlConfiguration.loadConfiguration(configFile);
        this.messages = YamlConfiguration.loadConfiguration(messagesFile);
        this.holograms = YamlConfiguration.loadConfiguration(hologramsFile);
        this.scoreboards = YamlConfiguration.loadConfiguration(scoreboardsFile);
        this.items = YamlConfiguration.loadConfiguration(itemsFile);
        Tofu.getInstance().getItemManager().reload();
        Tofu.getInstance().getScoreboardManager().reload();
    }
    public void saveConfig(File config) throws IncorrectTofuConfigurationException {
        if (config.equals(configFile)) {
            try {
                this.config.save(configFile);
            } catch (Exception e) {
                Tofu.getInstance().getLogger().severe("Could not save config file!");
            }
        }
        else if (config.equals(messagesFile)) {
            try {
                this.messages.save(messagesFile);
            } catch (Exception e) {
                Tofu.getInstance().getLogger().severe("Could not save messages file!");
            }
        }
        else if (config.equals(hologramsFile)) {
            try {
                this.holograms.save(hologramsFile);
            } catch (Exception e) {
                Tofu.getInstance().getLogger().severe("Could not save holograms file!");
            }
        }
        else if (config.equals(itemsFile)) {
            try {
                this.items.save(itemsFile);
            } catch (Exception e) {
                Tofu.getInstance().getLogger().severe("Could not save items file!");
            }
        }
        else {
            throw new IncorrectTofuConfigurationException(config);
        }
    }


}
