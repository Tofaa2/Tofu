package me.tofaa.tofu.command;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.configuration.type.Messages;
import me.tofaa.tofu.utilities.Strings;
import org.bukkit.command.CommandSender;
import org.bukkit.command.defaults.BukkitCommand;
import org.bukkit.entity.Player;

import java.util.List;

public class TofuCommand extends BukkitCommand implements ICommand{


    private final String name;
    private final String description;
    private final String permission;
    private final List<String> aliases;
    private final int cooldown;
    private final int minArgs;
    private final String usage;



    public TofuCommand(String name, String description, String permission, List<String> aliases, String usage, int minArgs, int cooldown){
        super(name);
        setDescription(description);
        setPermission(permission);
        setAliases(aliases);
        setUsage(usage);
        this.name = name;
        this.description = description;
        this.permission = permission;
        this.aliases = aliases;
        this.cooldown = cooldown;
        this.usage = usage;
        this.minArgs = minArgs;
    }


    public boolean execute(CommandSender sender, String label, String[] args){
        if (!(sender instanceof Player)) {
            if (args.length < minArgs) {sender.sendMessage(Strings.cc(usage)); return false;}
            runConsole(sender, label, args); // We don't need to cooldown the console. ;-;
            return true;
        }

        Player player = (Player) sender;

        if (!player.hasPermission(permission)) {
            player.sendMessage(Messages.commandMessage(Messages.NO_PERMISSION, player, this));
            return false;
        }



        if (Tofu.getInstance().getCommandManager().isInCooldown(player, this)) {
            player.sendMessage(Messages.commandMessage(Messages.IN_COOLDOWN, player, this));
            return false;
        }

        if (args.length < minArgs) {
            player.sendMessage(Messages.commandMessage(Messages.INVALID_USAGE, player, this));
            return false;
        }
        if (Configuration.get(Configuration.COOLDOWN_BYPASS_ENABLED).equals(true) && !player.hasPermission((String) Configuration.get(Configuration.COOLDOWN_BYPASS_PERMISSION))) {
            Tofu.getInstance().getCommandManager().setCooldown(player, this, cooldown);
        }
        runPlayer(player, label, args);

        return true;
    }

    /*
        These methods are required to be Overridden by the implementing class.
        They supply the logic for when a player or console sends a command.
        We use a void instead of boolean for ease of return; instead of return false/true;
     */
    public void runPlayer(Player player, String name, String[] args) {}
    public void runConsole(CommandSender sender, String name, String[] args) {}

    @Override public String getName() {return name;}
    @Override public String getDescription() {return description;}
    @Override public String getUsage() {return usage;}
    @Override public String getPermission() {return permission;}
    @Override public List<String> getAliases() {return aliases;}
    @Override public int getCooldown() {return cooldown;}
    @Override public int getMinArgs() {return minArgs;}


}
