package me.tofaa.tofu;

import me.tofaa.tofu.configuration.type.Configuration;
import org.bukkit.plugin.java.JavaPlugin;

import java.net.URL;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicBoolean;

public class TofuUpdater {



    private final int resourceId;
    private final JavaPlugin pl;

    public TofuUpdater(JavaPlugin usablePlugin, int resourceId) {
        this.resourceId = resourceId;
        this.pl = usablePlugin;

    }

    public boolean isLatestVersion(JavaPlugin plugin) {
        final AtomicBoolean[] isLatestVersion = {new AtomicBoolean(false)};
        Tofu.getInstance().getTaskManager().runAsync(() -> {
            try {
                URL url = new URL("https://api.spigotmc.org/legacy/update.php?resource=" + resourceId);
                String version = new Scanner(url.openStream()).next();
                isLatestVersion[0].set(version.contains(plugin.getDescription().getVersion()));
            } catch (Exception e) {
                TofuLogger.logError("Could not check for updates!");
                if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) {
                    e.printStackTrace();
                }
                isLatestVersion[0] = new AtomicBoolean(false);
            }
        });

        return isLatestVersion[0].get();
    }

    public void checkForUpdates(boolean shutdown, String linkableURL) {
        String resourceName = pl.getDescription().getName();
        if (!isLatestVersion(pl)) {
            TofuLogger.logInfo("A new version of " + resourceName + " is available! If you stay at an older build you will not receive any support Download it at " + linkableURL);
            TofuLogger.logInfo("Current version: " + pl.getDescription().getVersion());
            TofuLogger.logInfo("When updating, please make sure to read the changelog!");
            if (shutdown) Tofu.getInstance().getPluginLoader().disablePlugin(pl);
        }
        else {
            Tofu.getInstance().getLogger().info("You are running the latest version of " + resourceName);
        }
    }

}
