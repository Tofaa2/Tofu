package me.tofaa.tofu.item;

import lombok.Getter;
import lombok.Setter;
import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.utilities.Strings;
import org.bukkit.Material;
import org.bukkit.enchantments.Enchantment;
import org.bukkit.inventory.ItemFlag;
import org.bukkit.inventory.ItemStack;
import org.bukkit.inventory.meta.ItemMeta;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@SuppressWarnings("unused")
public class TofuItem extends ItemStack {

    @Getter private final Material material;
    @Getter private final String name;
    @Getter private final List<String> lore;

    @Getter @Setter private int amount;
    @Getter private final byte byteData;

    @Getter private final List<ItemFlag> flags;
    @Getter private final HashMap<Enchantment, Integer> enchantments;

    public TofuItem(Material material, String name, List<String> lore, int amount, byte data,  List<ItemFlag> flags, HashMap<Enchantment, Integer> enchantments, boolean unbreakable) {
        super(material, amount, data);
        this.material = material;
        this.name = name;
        this.lore = lore;
        this.byteData = data;
        this.amount = amount;
        this.flags = flags;
        this.enchantments = enchantments;

        ItemMeta meta = getItemMeta();
        meta.setDisplayName(Strings.cc(name));
        meta.setUnbreakable(true);
        if (lore != null && !lore.isEmpty()){
            List<String> tempLore = new ArrayList<>(lore.size());
            for (String s : lore) {
                tempLore.add(Strings.cc(s));
            }
            meta.setLore(tempLore);
        }

        if (flags != null && !flags.isEmpty()){
            flags.forEach(meta::addItemFlags);
        }

        if (enchantments != null && !enchantments.isEmpty()) {
            for (Enchantment e : enchantments.keySet()) {
                meta.addEnchant(e, enchantments.get(e), true);
            }
        }

        if (unbreakable) {
            Tofu.getInstance().getNmsHandler().getNmsItem().setUnbreakable(this);
        }

        setItemMeta(meta);
    }

    public TofuItem(Material material, String name, List<String> lore, int amount, List<ItemFlag> flags, HashMap<Enchantment, Integer> enchantments, boolean unbreakable) {
        this(material, name, lore, amount, (byte) 0, flags, enchantments, unbreakable);
    }

    public TofuItem(Material material, String name, List<String> lore, int amount, HashMap<Enchantment, Integer> enchantments, boolean unbreakable){
        this(material, name, lore, amount, (byte) 0, null, enchantments, unbreakable);
    }

    public TofuItem(Material material, String name, List<String> lore, int amount, byte data, HashMap<Enchantment, Integer> enchantments, boolean unbreakable){
        this(material, name, lore, amount, data, null, enchantments, unbreakable);
    }

    public TofuItem(Material material, String name, List<String> lore, int amount, byte data, boolean unbreakable){
        this(material, name, lore, amount, data, null, null, unbreakable);
    }

    public TofuItem(Material material, String name, List<String> lore, int amount, boolean unbreakable){
        this(material, name, lore, amount, (byte) 0, null, null, unbreakable);
    }

    public TofuItem(Material material, String name, List<String> lore, boolean unbreakable){
        this(material, name, lore, 1, (byte) 0, null, null, unbreakable);
    }

    public TofuItem(Material material, String name, boolean unbreakable){this(material, name, null, 1, (byte) 0, null, null, unbreakable);}
    public TofuItem(Material material, String name){this(material, name, null, 1, (byte) 0, null, null, false);}


    public static TofuItem fromItemStack(ItemStack item) {
        Material material = item.getType();
        ItemMeta meta = item.getItemMeta();

        String displayName = meta.hasDisplayName() ? meta.getDisplayName() : material.name();
        List<String> lore = meta.hasLore() ? meta.getLore() : null;
        int amount = item.getAmount();
        byte data = item.getData().getData();

        return new TofuItem(
                material,
                displayName,
                lore,
                amount,
                data,
                meta.getItemFlags() != null ? new ArrayList<>(meta.getItemFlags()) : null,
                meta.hasEnchants() ? new HashMap<>(meta.getEnchants()) : null, meta.isUnbreakable());
    }

}
