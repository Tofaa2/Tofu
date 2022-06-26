package me.tofaa.tofu.command.util;

import me.tofaa.tofu.command.TofuCommand;
import org.bukkit.entity.Player;

import java.util.List;

public class ScoreboardCommand extends TofuCommand {


    public ScoreboardCommand(){
        super("scoreboard",
                "Change or remove a player's scoreboard",
                "tofu.commands.scoreboard",
                List.of("sb", "board"),
                "scoreboard <remove/display> <player>", 2, 0);
    }

    @Override
    public void runPlayer(Player player, String name, String[] args){
        switch (args[0].toLowerCase()){
            case "remove":

        }
    }


}
