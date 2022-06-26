package me.tofaa.tofu.item;

import me.tofaa.tofu.Tofu;
import org.bukkit.Material;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.enchantments.Enchantment;
import org.bukkit.inventory.ItemFlag;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

public class ItemManager {

    private final HashMap<String, TofuItem> items = new HashMap<>();



    public void registerItem(String key, TofuItem item) {
        items.put(key, item);
    }

    public TofuItem getItem(String name) {
        return items.get(name);
    }

    public void reload(){
        items.clear();
        Set<String> ids = Tofu.getInstance().getConfigManager().getItems().getKeys(false);
        FileConfiguration items = Tofu.getInstance().getConfigManager().getItems();
        for (String s : ids) {

            String name = items.getString(s + ".name");
            String materialString = items.getString(s + ".material");
            Material material = Material.getMaterial(materialString);

            byte data = (byte) items.getInt(s + ".data");
            List<String> lore = items.getStringList(s + ".lore");
            boolean unbreakable = items.getBoolean(s + ".unbreakable");
            HashMap<Enchantment, Integer> enchants = new HashMap<>();
            for (String enc : items.getStringList(s + ".enchantments")) {
                String[] split = enc.split(":");
                Enchantment enchantment = Enchantment.getByName(split[0]);
                int level = Integer.parseInt(split[1]);
                enchants.put(enchantment, level);
            }

            List<ItemFlag> flags = new ArrayList<>();
            for (String flag : items.getStringList(s + ".flags")) {
                ItemFlag itemFlag = ItemFlag.valueOf(flag);
                flags.add(itemFlag);
            }

            TofuItem item = new TofuItem(material, name, lore, 1, data, flags, enchants, unbreakable);
            registerItem(s, item);
        }
    }

}
