package me.tofaa.tofu.utilities.nms.interfaces;


import org.bukkit.inventory.ItemStack;

import java.util.Map;

public interface NMSNbt {

    ItemStack setInt(ItemStack item, Map<String, Integer> values);


}
