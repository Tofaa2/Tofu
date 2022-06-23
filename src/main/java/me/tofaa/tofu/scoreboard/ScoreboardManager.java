package me.tofaa.tofu.scoreboard;

import me.tofaa.tofu.scoreboard.data.IScoreboard;
import org.bukkit.entity.Player;

import java.util.ArrayList;
import java.util.List;

public class ScoreboardManager {

    private final List<TofuScoreboard> boards;
    private final List<ExtendedTofuScoreboard> extendedBoards;
    public ScoreboardManager(){

        this.boards = new ArrayList<>();
        this.extendedBoards = new ArrayList<>();
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



    public void register(TofuScoreboard board) {boards.add(board);}
    public void remove(TofuScoreboard board) {boards.remove(board);}

    public void registerExtended(ExtendedTofuScoreboard board) {extendedBoards.add(board);}
    public void remove(ExtendedTofuScoreboard board) {extendedBoards.remove(board);}


}
