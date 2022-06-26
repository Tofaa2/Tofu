package me.tofaa.tofu.gui;

import lombok.Getter;
import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.item.TofuItem;
import me.tofaa.tofu.utilities.Strings;
import org.bukkit.Bukkit;
import org.bukkit.entity.Player;
import org.bukkit.event.inventory.InventoryClickEvent;
import org.bukkit.inventory.Inventory;
import org.bukkit.inventory.InventoryHolder;

public abstract class GUI implements InventoryHolder {

    private final TofuItem filler;
    private final TofuItem filler2;

    private final Inventory inventory;

    @Getter private final String title;
    @Getter private final int rows;

    public GUI(String title, int rows, FillerStyle fillerStyle) {
        this.title = Strings.cc(title);
        this.rows = rows;
        this.inventory = Bukkit.createInventory(this, rows * 9, this.title);
        this.filler = Tofu.getInstance().getItemManager().getItem("gui-filler");
        this.filler2 = Tofu.getInstance().getItemManager().getItem("gui-filler-second");
        this.buildFiller(fillerStyle);
    }

    public abstract void setContents();
    public abstract void onClick(InventoryClickEvent event);

    public void open(Player player) {
        setContents();
        player.openInventory(this.inventory);
    }


    private void buildFiller(FillerStyle style) {
        switch (style) {

            case EMPTY:
                break;

            case FILLED:
                for (int i = 0; i < this.inventory.getSize(); i++) {
                    this.inventory.setItem(i, this.filler);
                }
                break;
            case CHECKERED:
                for (int i = 0; i < this.inventory.getSize(); i++) {
                    if (i % 2 == 0) {
                        this.inventory.setItem(i, this.filler);
                    } else {
                        this.inventory.setItem(i, this.filler2);
                    }
                }
                break;
            case STRIPED:
                break;
        }

    }



    @Override
    public Inventory getInventory() {
        return this.inventory;
    }
}
