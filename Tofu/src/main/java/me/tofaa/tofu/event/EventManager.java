package me.tofaa.tofu.event;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.database.types.flatfile.FlatFileDataListener;
import me.tofaa.tofu.event.events.PlayerJoinScoreboardListener;

import java.util.LinkedList;

public class EventManager {

    private final LinkedList<TofuBukkitEvent> bukkitEvents;

    public EventManager() {
        this.bukkitEvents = new LinkedList<>();


        register(new PlayerJoinScoreboardListener());

        // Database
        register(new FlatFileDataListener());

        for (TofuBukkitEvent event : bukkitEvents) {
            if (Configuration.get(Configuration.DEBUG_MODE ).equals(true)) {
                TofuLogger.logInfo("Event class" + event.getClass().getSimpleName()+ " has been loaded");
            }
            Tofu.getInstance().getServer().getPluginManager().registerEvents(event, TofuBukkitEvent.tofu);
        }
    }

    public void register(TofuBukkitEvent listener) {
        bukkitEvents.add(listener);
    }






}
