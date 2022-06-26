package me.tofaa.tofu.gui;

import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;
import org.bukkit.event.inventory.InventoryClickEvent;

public class GUIClickListener implements Listener {

    @EventHandler
    public void onClick(InventoryClickEvent event) {
        if (!(event.getClickedInventory().getHolder() instanceof GUI)) return;
        event.setCancelled(true);

        GUI gui = (GUI) event.getClickedInventory().getHolder();
        gui.onClick(event);
     }

}
