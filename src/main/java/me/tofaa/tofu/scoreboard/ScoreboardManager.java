package me.tofaa.tofu.scoreboard;

import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.scoreboard.data.IScoreboard;
import me.tofaa.tofu.scoreboard.data.ScoreboardString;
import me.tofaa.tofu.utilities.Strings;
import org.bukkit.configuration.file.FileConfiguration;
import org.bukkit.entity.Player;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

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
        FileConfiguration scoreboards = Tofu.getInstance().getConfigManager().getScoreboards();
        Set<String> keys = scoreboards.getKeys(false);
        for (String key : keys) {
            if (key.equalsIgnoreCase("default-scoreboard")) continue;
            String title = scoreboards.getString(key + ".title");
            List<String> lines = scoreboards.getStringList(key + ".lines");
            int updateDelay = scoreboards.getInt(key + ".update-delay");
            boolean isStatic = !scoreboards.getBoolean(key + ".update");
            if (!isStatic) updateDelay = 0;
            register(key, createFromValues(title, lines, updateDelay));

        }
    }
    public void register(String id, IScoreboard board){this.scoreboards.put(id, board);}

    @SuppressWarnings("unused")
    public void unregister(String id) {this.scoreboards.remove(id);}

    public IScoreboard createFromValues(String title, List<String> lines, int updateDelay){
        boolean large = title.length() >= 16;
        for (String s : lines) {
            if (s.length() >= 16) {
                large = true;
                break;
            }
        }
        List<ScoreboardString> entries = new ArrayList<>();
        for (String s : lines) {
            entries.add(new ScoreboardString(Strings.cc(s)));
        }
        if (large) return new ExtendedTofuScoreboard(title, updateDelay, entries.toArray(new ScoreboardString[0]));
        return new TofuScoreboard(title, updateDelay, entries.toArray(new ScoreboardString[0]));
    }
}
