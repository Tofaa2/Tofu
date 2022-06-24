package me.tofaa.tofu.permission;


import org.bukkit.entity.Player;
import java.util.HashMap;
import java.util.HashSet;

public class PermissionManager {

    // Using hashset to avoid duplicates
    private final HashSet<PermissionGroup> groups = new HashSet<>();
    private final HashMap<Player, PermissionGroup> players = new HashMap<>();

    public void registerGroup(PermissionGroup group) {
        groups.add(group);
    }

    public void unregisterGroup(PermissionGroup group) {
        groups.remove(group);
    }

    public boolean hasPermission(Player player, String permission){
        PermissionGroup group = getGroup(player);

        if(group == null)
            return false;

        return group.hasPermission(permission);
    }

    public PermissionGroup getGroup(Player player){
        return players.get(player);
    }


}
