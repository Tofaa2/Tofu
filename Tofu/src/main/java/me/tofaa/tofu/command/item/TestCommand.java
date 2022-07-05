package me.tofaa.tofu.command.item;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.command.TofuCommand;
import me.tofaa.tofu.utilities.nms.interfaces.NMSNbt;
import org.bukkit.Material;
import org.bukkit.entity.Player;
import org.bukkit.inventory.ItemStack;

import java.util.List;
import java.util.Map;

public class TestCommand extends TofuCommand{
    static int a = 1;

    public TestCommand() {
        super("test",
                "Test Command",
                "tofu.commands.test", List.of("t", "testmedaddy"), "test", 0, 0
        );
    }


    @Override
    public void runPlayer(Player player, String label, String[] args) {
        ItemStack item = new ItemStack(Material.DIAMOND, 1);

        NMSNbt nbt = Tofu.getInstance().getNmsHandler().getNmsNbt();
        String toset = "test" + a;
        a++;
        nbt.setInt(item, Map.of(toset, a));
        player.getInventory().setItemInHand(item);
    }

}
