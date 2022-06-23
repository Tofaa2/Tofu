package me.tofaa.tofu.scoreboard;

import me.tofaa.tofu.scoreboard.data.IScoreboard;
import me.tofaa.tofu.scoreboard.data.ScoreboardString;
import org.bukkit.entity.Player;

import java.util.HashMap;

public class ScoreboardManager {



    private final HashMap<String, IScoreboard> scoreboards;
    public ScoreboardManager(){
        this.scoreboards = new HashMap<>();
        reload();
    }


    public void display(Player player, IScoreboard scoreboard){
        if (scoreboard instanceof TofuScoreboard){
            TofuScoreboard sb = (TofuScoreboard) scoreboard;
            sb.showTo(player);
        }
        else if (scoreboard instanceof ExtendedTofuScoreboard) {
            ExtendedTofuScoreboard sb = (ExtendedTofuScoreboard) scoreboard;
            sb.showTo(player);
        }
    }

    public IScoreboard getBoard(String id){return this.scoreboards.get(id);}
    public void reload() {

        ScoreboardString sbs1 = new ScoreboardString("Hello", "ello", "llo", "lo", "o");
        ScoreboardString sbs2 = new ScoreboardString("Hello", "ello", "llo", "lo", "o");
        TofuScoreboard scoreboard = new TofuScoreboard("Hello World", 10, sbs1, sbs2 );

        register("hello", scoreboard);
    }
    public void register(String id, IScoreboard board){this.scoreboards.put(id, board);}

    @SuppressWarnings("unused")
    public void unregister(String id) {this.scoreboards.remove(id);}


}
