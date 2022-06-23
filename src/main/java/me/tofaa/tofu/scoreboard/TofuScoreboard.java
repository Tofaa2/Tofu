package me.tofaa.tofu.scoreboard;

import com.google.common.collect.ImmutableSet;
import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.scoreboard.data.IScoreboard;
import me.tofaa.tofu.scoreboard.data.ScoreboardString;
import org.bukkit.Bukkit;
import org.bukkit.ChatColor;
import org.bukkit.configuration.serialization.ConfigurationSerializable;
import org.bukkit.configuration.serialization.ConfigurationSerialization;
import org.bukkit.entity.Player;
import org.bukkit.scheduler.BukkitRunnable;
import org.bukkit.scheduler.BukkitTask;
import org.bukkit.scoreboard.DisplaySlot;
import org.bukkit.scoreboard.Objective;
import org.bukkit.scoreboard.Scoreboard;
import org.bukkit.scoreboard.Team;

import java.util.*;

@SuppressWarnings("unused")
public class TofuScoreboard implements ConfigurationSerializable, IScoreboard {

    private static final Set<String> EMPTY_COLOR_STRINGS = ImmutableSet.of("§f", "§f§r", "§r", "§r§f");

    private static final org.bukkit.scoreboard.ScoreboardManager bukkitManager = Bukkit.getScoreboardManager();

    static {
        ConfigurationSerialization.registerClass(TofuScoreboard.class);
    }

    private final static Tofu tofu = Tofu.getInstance();
    private List<ScoreboardString> entries;
    private transient Scoreboard bukkitScoreboard;
    private transient Objective bukkitObjective;
    private transient BukkitTask updateTask;
    private String title;
    private transient final Team[] teams = new Team[15];
    private int prevEntries = 0;


    public TofuScoreboard(String title, int updateDelayInTicks, ScoreboardString... entries) {

        this.title = title;
        this.entries = new ArrayList<>(Arrays.asList(entries));

        bukkitScoreboard = bukkitManager.getNewScoreboard();

        bukkitObjective = bukkitScoreboard.registerNewObjective("obj", "dummy");
        bukkitObjective.setDisplaySlot(DisplaySlot.SIDEBAR);
        bukkitObjective.setDisplayName(this.title);

        for (int i = 0; i < 15; i++) {
            Team team = bukkitScoreboard.registerNewTeam("team" + i);
            team.addEntry(ChatColor.values()[i].toString() + "§r");
            teams[i] = team;
        }
        update();

        setUpdateDelay(updateDelayInTicks);

        tofu.getScoreboardManager().register(this);

    }

    @SuppressWarnings("unchecked")
    public TofuScoreboard(Map<String, Object> map) {

        entries = (List<ScoreboardString>) map.get("entries");
        title = (String) map.get("title");

    }

    @Override
    public Map<String, Object> serialize() {

        Map<String, Object> map = new HashMap<>();

        map.put("entries", entries);
        map.put("title", title);

        return map;

    }





    public TofuScoreboard setUpdateDelay(int delayInTicks) {

        if (delayInTicks < 1)
            throw new IllegalArgumentException("delayInTicks cannot be less than 1!");

        if (updateTask != null)
            updateTask.cancel();

        updateTask = (new BukkitRunnable() {
            @Override
            public void run() {
                update();
            }
        }).runTaskTimer(tofu,  delayInTicks, delayInTicks);

        return this;

    }

    @Override
    public String getTitle() {
        return title;
    }

    public TofuScoreboard setTitle(String title) {
        this.title = title;
        return this;
    }


    @Override
    public List<ScoreboardString> getEntries() {
        return entries;
    }


    public TofuScoreboard setEntries(List<ScoreboardString> entries) {
        this.entries = entries;
        return this;
    }

    public TofuScoreboard addEntry(ScoreboardString... entries) {
        this.entries.addAll(Arrays.asList(entries));
        return this;
    }


    public TofuScoreboard removeEntry(ScoreboardString entry) {
        entries.remove(entry);
        return this;
    }


    public TofuScoreboard removeEntry(int num) {
        entries.remove(num);
        return this;
    }

    public TofuScoreboard showTo(Player player) {
        player.setScoreboard(bukkitScoreboard);
        return this;
    }

    public TofuScoreboard hideFrom(Player player) {
        player.setScoreboard(bukkitManager.getMainScoreboard());
        return this;
    }


    public TofuScoreboard update() {

        // Anti-flicker only works for <=15 entries
        if (entries.size() <= 15)
            updateAntiFlicker();
        else
            updateFallback();

        return this;

    }

    private void updateFallback() {

        redoBukkitObjective();

        for (int i = entries.size(); i > 0; i--)
            bukkitObjective.getScore(entries.get(entries.size() - i).getNext()).setScore(i);

    }

    private void redoBukkitObjective() {
        bukkitObjective.unregister();
        bukkitObjective = bukkitScoreboard.registerNewObjective("obj", "dummy");
        bukkitObjective.setDisplayName(title);
        bukkitObjective.setDisplaySlot(DisplaySlot.SIDEBAR);
    }

    private void updateAntiFlicker() {

        if (prevEntries != entries.size()) {
            redoBukkitTeams();
            for (int i = 0; i < entries.size(); i++)
                bukkitObjective.getScore(ChatColor.values()[i] + "§r").setScore(entries.size() - 1 - i);
        }

        prevEntries = entries.size();
        for (int i = 0; i < prevEntries; i++) {
            ScoreboardString entry = entries.get(i);
            String entryStr = ChatColor.translateAlternateColorCodes('&',
                    entry.getNextAndTrim(false));

            if (entryStr.startsWith("§r") || entryStr.startsWith("§f"))
                entryStr = entryStr.substring(2);

            if (entryStr.length() <= 16) {
                // Simple case: prefix is sufficient to show whole string
                teams[i].setPrefix(entryStr);
                teams[i].setSuffix("");
            } else {

                if (!entryStr.contains("§")) {
                    teams[i].setPrefix(entryStr.substring(0, 16));
                    teams[i].setSuffix(entryStr.substring(16));
                } else {
                    /*
                     * This is an especially difficult case. Color symbols
                     * cannot be split over team prefix and suffix.
                     */
                    boolean carryingColor = false;
                    String[] sections = entryStr.split("§");
                    StringBuilder color = new StringBuilder();
                    int len = 0;
                    for (String section : sections) {
                        if (section.length() == 0)
                            continue;

                        if (section.length() == 1) {
                            if (carryingColor)
                                color.append("§").append(section);
                            else
                                color = new StringBuilder("§").append(section);
                            carryingColor = true;
                        } else {
                            if (carryingColor)
                                color.append('§').append(section, 0, 1);
                            else
                                color = new StringBuilder("§").append(section, 0, 1);
                            len += section.length() - 1;
                            carryingColor = false;
                        }
                        if (len >= 16) {
                            String teamSuffix = entryStr.substring(16);
                            String teamPrefix = entryStr.substring(0, 16);

                            teams[i].setPrefix(teamPrefix);

                            // Set suffix
                            // Color needs only be included if it has any effect
                            // (i.e. if it is not "empty"/"whitespace")
                            String colorStr = color.toString().toLowerCase(Locale.ENGLISH);
                            teams[i].setSuffix(
                                    EMPTY_COLOR_STRINGS.contains(colorStr) ? teamSuffix : color + teamSuffix);

                            break;
                        }

                    }

                }

            }

        }
    }


    public TofuScoreboard addEmpty() {

        entries.add(new ScoreboardString(new String(new char[entries.size()]).replace("\0", " ")));

        return this;

    }


    public Scoreboard getTheScoreboard() {
        return bukkitScoreboard;
    }

    private void redoBukkitTeams() {
        for (int i = 0; i < 15; i++) {
            bukkitScoreboard.resetScores(ChatColor.values()[i] + "§r");
            teams[i].setSuffix("");
            teams[i].setPrefix("");
        }
    }

}