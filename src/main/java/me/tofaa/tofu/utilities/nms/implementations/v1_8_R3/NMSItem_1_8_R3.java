package me.tofaa.tofu.utilities.nms.implementations.v1_8_R3;

import me.tofaa.tofu.utilities.nms.interfaces.NMSItem;
import net.minecraft.server.v1_8_R3.NBTTagCompound;
import net.minecraft.server.v1_8_R3.NBTTagInt;
import org.bukkit.craftbukkit.v1_8_R3.inventory.CraftItemStack;
import org.bukkit.inventory.ItemStack;

public class NMSItem_1_8_R3 implements NMSItem {

    @Override
    public void setUnbreakable(ItemStack item) {
        net.minecraft.server.v1_8_R3.ItemStack nmsStack = CraftItemStack.asNMSCopy(item);
        NBTTagCompound tag  = nmsStack.getTag();
        if (tag == null) {
            tag = new NBTTagCompound();
            nmsStack.setTag(tag);
            tag = nmsStack.getTag();
        }
        tag.set("Unbreakable", new NBTTagInt(1));
        nmsStack.setTag(tag);
    }
}
