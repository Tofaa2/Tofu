package me.tofaa.tofu.utilities.nms.implementations.v1_8_R3;

import me.tofaa.tofu.utilities.nms.interfaces.NMSNbt;
import net.minecraft.server.v1_8_R3.NBTTagCompound;
import org.bukkit.craftbukkit.v1_8_R3.inventory.CraftItemStack;
import org.bukkit.inventory.ItemStack;

import java.util.Map;

public class NMSNbt_1_8_R3 implements NMSNbt {


    @Override public ItemStack setInt(ItemStack item, Map<String, Integer> values) {
        net.minecraft.server.v1_8_R3.ItemStack nmsItem = CraftItemStack.asNMSCopy(item);
        NBTTagCompound compound = (nmsItem.hasTag()) ? nmsItem.getTag() : new NBTTagCompound();
        values.forEach(compound::setInt);

        nmsItem.setTag(compound);
        item = CraftItemStack.asBukkitCopy(nmsItem);
        return item;
    }
}
