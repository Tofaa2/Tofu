package me.tofaa.tofu.utilities.nms.interfaces;


import org.bukkit.entity.Player;

public interface NMSPlayer {

    void showActionbar(Player player, String message);

    void sendTitle(Player p, String msg, int fadeIn, int stayTime, int fadeOut);

    void sendSubtitle(Player p, String msg, int fadeIn, int stayTime, int fadeOut);

}
