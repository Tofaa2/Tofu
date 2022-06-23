package me.tofaa.tofu.event.events;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.scoreboard.data.IScoreboard;
import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;

public class PlayerJoinEvent implements Listener {

    @EventHandler
    public void onJoin(org.bukkit.event.player.PlayerJoinEvent e) {
        IScoreboard board = Tofu.getInstance().getScoreboardManager().getBoard("hello");

        Tofu.getInstance().getScoreboardManager().display(e.getPlayer(), board);
    }

}
