package me.tofaa.tofu.command;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.command.config.ReloadConfigurationCommand;
import me.tofaa.tofu.command.item.GiveCommand;
import me.tofaa.tofu.configuration.type.Configuration;
import org.bukkit.Bukkit;
import org.bukkit.entity.Player;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CommandManager {

    private final HashMap<Player, HashMap<ICommand, Integer>> cooldowns;
    private final List<TofuCommand> commands;

    public CommandManager(){
        cooldowns = new HashMap<>();
        this.commands = new ArrayList<>(); // We are creating this on runtime, so we don't need to worry about ArrayList recreation speed.


        // Add commands here.
        registerCommand(new ReloadConfigurationCommand());
        registerCommand(new GiveCommand());

        for (TofuCommand command : commands) {
            Bukkit.getCommandMap().register("help", command);
            if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) {
                TofuLogger.logInfo("Setup command: " + command.getName());
            }
        }


        Tofu.getInstance().getTaskManager().runTimerAsync(() -> {

            for (Player p : cooldowns.keySet()) {
                HashMap<ICommand, Integer> playerCooldowns = cooldowns.get(p);

                for (ICommand command : playerCooldowns.keySet()) {
                    int currentCooldown = playerCooldowns.get(command);
                    if (currentCooldown > 0) {
                        playerCooldowns.put(command, currentCooldown - 1);
                    }
                    if (currentCooldown == 0) {
                        playerCooldowns.remove(command);
                    }
                }
            }
        }, 0, 20);

    }

    public void registerCommand(TofuCommand command) {
        commands.add(command);
        if (Configuration.get(Configuration.DEBUG_MODE).equals(true)) {
            TofuLogger.logInfo("Registered command: " + command.getName());
        }
    }
    public void setCooldown(Player player, ICommand command, int cooldown) {
        if (!cooldowns.containsKey(player)) {
            HashMap<ICommand, Integer> playerCooldowns = new HashMap<>();
            playerCooldowns.put(command, cooldown);
            cooldowns.put(player, playerCooldowns);
            return;
        }

        HashMap<ICommand, Integer> playerCooldowns = cooldowns.get(player);
        playerCooldowns.put(command, cooldown);
    }
    public boolean isInCooldown(Player player, ICommand command) {
        if (!cooldowns.containsKey(player)) return false;
        if (!cooldowns.get(player).containsKey(command)) return false;
        return cooldowns.get(player).get(command) > 0;
    }
    public int getCooldownLeft(Player player, ICommand command){
        if (!cooldowns.containsKey(player)) return 0;
        if (!cooldowns.get(player).containsKey(command)) return 0;
        return cooldowns.get(player).get(command);
    }

}
