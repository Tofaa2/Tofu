package me.tofaa.tofu.scoreboard.data;

import java.util.List;

public interface IScoreboard {

    String getTitle();

    List<ScoreboardString> getEntries();

}
