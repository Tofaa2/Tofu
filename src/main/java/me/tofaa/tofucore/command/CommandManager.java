package me.tofaa.tofucore.command;

import me.tofaa.tofucore.TofuCore;
import me.tofaa.tofucore.TofuLogger;
import me.tofaa.tofucore.command.help.HelpCommand;
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
        registerCommand(new HelpCommand());

        for (TofuCommand command : commands) {
            TofuLogger.logInfo("Setting up command: " + command.getName());
            Bukkit.getCommandMap().register("help", command);
            TofuLogger.logInfo("Command " + command.getName() + " setup.");
        }


        TofuCore.getInstance().getTaskManager().runTimerAsync(() -> {

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
        TofuLogger.logInfo("&aRegistered command: " + command.getName());
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
