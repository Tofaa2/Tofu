package me.tofaa.tofu.permission;

import lombok.Getter;

import java.util.LinkedHashSet;

public class PermissionGroup {

    @Getter private final String id;
    @Getter private final LinkedHashSet<String> permissions;

    public PermissionGroup(String id) {
        this.id = id;
        this.permissions = new LinkedHashSet<>();
    }

    public boolean hasPermission(String permission) {
        return permissions.contains(permission);
    }

    public void addInheritedGroup(PermissionGroup inherited) {
        permissions.addAll(inherited.getPermissions());
    }
}
