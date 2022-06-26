package me.tofaa.tofu.hologram;

import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;
import org.bukkit.event.player.PlayerArmorStandManipulateEvent;


public class HologramEvents implements Listener {

    @EventHandler
    public void onHologramInteract(PlayerArmorStandManipulateEvent e) {

        if(!e.getRightClicked().isVisible()){
            e.setCancelled(true);
        }

    }

}
