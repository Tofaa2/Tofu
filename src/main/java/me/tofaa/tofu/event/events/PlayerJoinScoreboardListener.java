package me.tofaa.tofu.event.events;

import me.tofaa.tofu.event.TofuBukkitEvent;
import me.tofaa.tofu.scoreboard.data.IScoreboard;
import me.tofaa.tofu.utilities.exceptions.InvalidDataException;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.player.PlayerJoinEvent;

public class PlayerJoinScoreboardListener extends TofuBukkitEvent {

    @EventHandler
    public void onJoin(PlayerJoinEvent event) {
        Player player = event.getPlayer();
        String mainId = tofu.getConfigManager().getScoreboards().getString("default-scoreboard");
        if (mainId == null) return;
        IScoreboard scoreboard = tofu.getScoreboardManager().getBoard(mainId);
        if (scoreboard == null){
            throw new InvalidDataException("The default scoreboard cannot be null");
        }

        tofu.getScoreboardManager().display(player, scoreboard);
    }


}
