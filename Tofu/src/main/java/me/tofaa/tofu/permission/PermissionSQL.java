package me.tofaa.tofu.permission;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.database.types.sqlite.SQLiteDatabase;
import org.bukkit.entity.Player;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

public class PermissionSQL extends SQLiteDatabase {

    public PermissionSQL() {
        super("permission", "group");
    }

    public PermissionGroup getGroup(Player player) {
        UUID uuid = player.getUniqueId();

        try {
            PreparedStatement ps = getConnection().prepareStatement("SELECT group_id FROM player WHERE uuid = ?");
            ps.setString(1, uuid.toString());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String groupId = rs.getString("group_id");
                return Tofu.getInstance().getPermissionManager().getGroup(groupId);
            }
        }
        catch (SQLException e) {
            TofuLogger.logError("Error while checking SQLite Database table");
            if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) e.printStackTrace();
        }
        return Tofu.getInstance().getPermissionManager().getGroup("default");
    }

    public void setGroup(Player player) {
        UUID uuid = player.getUniqueId();
        PermissionGroup group = Tofu.getInstance().getPermissionManager().getGroup(player);
        try {
            PreparedStatement ps = getConnection().prepareStatement("INSERT INTO player (uuid, group_id) VALUES (?, ?)");
            ps.setString(1, uuid.toString());
            ps.setString(2, group.getId());
            ps.executeUpdate();
        }
        catch (SQLException e) {
            TofuLogger.logError("Error while checking SQLite Database table");
            if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) e.printStackTrace();
        }
    }


}
