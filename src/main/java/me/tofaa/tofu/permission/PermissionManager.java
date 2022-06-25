package me.tofaa.tofu.permission;


import me.tofaa.tofu.Tofu;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.entity.Player;

import java.util.*;
import java.util.stream.Collectors;

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
    public PermissionGroup getGroup(String id) {return groups.stream().filter(group -> group.getId().equals(id)).findFirst().orElse(null);}

    public void reload() {
        groups.clear();

        FileConfiguration permissions = Tofu.getInstance().getConfigManager().getPermissions();
        Set<String> groups = permissions.getKeys(false);

        groups.forEach(group -> {
            PermissionGroup permissionGroup = new PermissionGroup(group);
            LinkedHashSet<String> groupPermissions = new LinkedHashSet<>(permissions.getStringList(group));
            permissionGroup.getPermissions().addAll(groupPermissions);



            registerGroup(permissionGroup);
        });
    }


}
