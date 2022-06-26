package me.tofaa.tofu.command.item;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.command.TofuCommand;
import me.tofaa.tofu.configuration.type.Messages;
import me.tofaa.tofu.item.TofuItem;
import org.bukkit.Bukkit;
import org.bukkit.Material;
import org.bukkit.entity.Player;
import org.bukkit.inventory.ItemStack;

import java.util.List;

public class GiveCommand extends TofuCommand {
    public GiveCommand() {
        super("give",
                "Give a player some item",
                "tofu.commands.give", List.of("i", "item", "items"),
                "give <player> <item> <amount>", 2, 0);
    }


    @Override
    public void runPlayer(Player player, String name, String[] args){
        Player target = Bukkit.getPlayerExact(args[0]);
        if (target == null){Messages.commandMessage(Messages.INVALID_TARGET, player, this); return;}

        int amount = 1;
        if (args.length > 2) {
            try {
                amount = Integer.parseInt(args[2]);
            } catch (NumberFormatException e) {
                Messages.commandMessage(Messages.INVALID_USAGE, player, this);
                return;
            }
        }
        TofuItem item = Tofu.getInstance().getItemManager().getItem(args[1]);
        if (item != null) {
            for (int i = 0; i < amount; i++) {
                target.getInventory().addItem(item);
            }
            player.sendMessage(Messages.commandMessage(Messages.ITEM_GIVEN, player, this).replace("{item}", args[1]));
        }
        else {
            Material material = Material.getMaterial(args[1].toUpperCase());
            if (material == null){Messages.commandMessage(Messages.INVALID_USAGE, player, this); return;}


            ItemStack i = new ItemStack(material, amount);
            target.getInventory().addItem(i);
            player.sendMessage(Messages.commandMessage(Messages.ITEM_GIVEN, player, this).replace("{item}", args[1]));
        }

    }


}
