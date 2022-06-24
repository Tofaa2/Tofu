package me.tofaa.tofu.database.types.flatfile;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.event.TofuBukkitEvent;
import me.tofaa.tofu.utilities.TofuTaskManager;
import org.bukkit.entity.Player;
import org.bukkit.event.EventHandler;
import org.bukkit.event.EventPriority;
import org.bukkit.event.player.PlayerLoginEvent;
import org.bukkit.event.player.PlayerQuitEvent;

import java.io.IOException;

public class FlatFileDataListener extends TofuBukkitEvent {


    @EventHandler(priority = EventPriority.MONITOR)
    public void onLogin(PlayerLoginEvent event) {
        PlayerLoginEvent.Result result = event.getResult();
        Player player = event.getPlayer();

        if (result != PlayerLoginEvent.Result.ALLOWED) return;
        if (!Tofu.getInstance().getDatabase().getClient().isFlatFile(Tofu.getInstance().getDatabase().getClient().getConnection())) return;

        FlatFileDatabase database = (FlatFileDatabase) Tofu.getInstance().getDatabase().getClient();
        FlatDataTable table = new FlatDataTable(player.getUniqueId());
        table.getSemaphore().acquireUninterruptibly();
        database.register(player.getUniqueId(), table);

    }

    @EventHandler(priority = EventPriority.MONITOR)
    public void onQuit(PlayerQuitEvent e) {
        if (!Tofu.getInstance().getDatabase().getClient().isFlatFile(Tofu.getInstance().getDatabase().getClient().getConnection())) return;

        FlatFileDatabase database = (FlatFileDatabase) Tofu.getInstance().getDatabase().getClient();
        FlatDataTable table = database.getTable(e.getPlayer());

        TofuTaskManager.flatFileExecutor.submit(() -> {
            try {
                table.getSemaphore().acquireUninterruptibly();
                database.save(table);
            } catch (IOException ex) {
                TofuLogger.logError("Error while saving Flat File Database");
                if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) ex.printStackTrace();
            } finally {
                table.getSemaphore().release();
            }
        });
    }

}
