package me.tofaa.tofu.event;

import me.tofaa.tofu.Tofu;
import org.bukkit.event.Listener;

public class TofuBukkitEvent implements Listener {

    protected static final Tofu tofu = Tofu.getInstance();

    public TofuBukkitEvent() {
        tofu.getServer().getPluginManager().registerEvents(this, tofu);
    }
}
