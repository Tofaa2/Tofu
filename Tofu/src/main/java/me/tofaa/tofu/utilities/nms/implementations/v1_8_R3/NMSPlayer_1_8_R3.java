package me.tofaa.tofu.utilities.nms.implementations.v1_8_R3;

import me.tofaa.tofu.utilities.Strings;
import me.tofaa.tofu.utilities.nms.interfaces.NMSPlayer;
import net.minecraft.server.v1_8_R3.ChatComponentText;
import net.minecraft.server.v1_8_R3.IChatBaseComponent;

import net.minecraft.server.v1_8_R3.PacketPlayOutChat;
import net.minecraft.server.v1_8_R3.PacketPlayOutTitle;
import org.bukkit.craftbukkit.v1_8_R3.entity.CraftPlayer;
import org.bukkit.entity.Player;

public class NMSPlayer_1_8_R3 implements NMSPlayer {

    @Override
    public void showActionbar(Player player, String message) {
        PacketPlayOutChat packet = new PacketPlayOutChat(new ChatComponentText(Strings.cc(message)), (byte)2);
        ((CraftPlayer) player).getHandle().playerConnection.sendPacket(packet);
    }

    @Override
    public void sendTitle(Player p, String msg, int fadeIn, int stayTime, int fadeOut) {

        PacketPlayOutTitle title = new PacketPlayOutTitle(PacketPlayOutTitle.EnumTitleAction.TITLE,
                IChatBaseComponent.ChatSerializer.a(Strings.cc("{\"text\": \"" + msg + "\"}")), fadeIn, stayTime, fadeOut);

        ((CraftPlayer) p).getHandle().playerConnection.sendPacket(title);

    }

    @Override
    public void sendSubtitle(Player p, String msg, int fadeIn, int stayTime, int fadeOut) {

        PacketPlayOutTitle title = new PacketPlayOutTitle(PacketPlayOutTitle.EnumTitleAction.SUBTITLE,
                IChatBaseComponent.ChatSerializer.a(Strings.cc("{\"text\": \"" + msg + "\"}")), fadeIn, stayTime, fadeOut);

        ((CraftPlayer) p).getHandle().playerConnection.sendPacket(title);

    }
}
