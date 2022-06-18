package me.tofaa.tofucore.command.help;

import me.tofaa.tofucore.command.TofuCommand;
import org.bukkit.command.CommandSender;
import org.bukkit.entity.Player;

import java.util.List;

public class HelpCommand extends TofuCommand {

    public HelpCommand() {
        super("help", "This is help description", "tofucore.help", List.of("h", "what"), "help <pogger> ", 1, 5);
    }

    @Override
    public void runPlayer(Player player, String label, String[] args){
        player.sendMessage("This is help description");
    }

    @Override
    public void runConsole(CommandSender sender, String label, String[] args){
        sender.sendMessage("This is help description");
    }

}
