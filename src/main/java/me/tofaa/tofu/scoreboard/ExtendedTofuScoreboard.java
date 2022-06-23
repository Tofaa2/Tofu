package me.tofaa.tofu.scoreboard;

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
public class ExtendedTofuScoreboard implements ConfigurationSerializable, IScoreboard {

    private static final List<Character> colors = Arrays.asList('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f');
    private static final org.bukkit.scoreboard.ScoreboardManager bukkitManager = Bukkit.getScoreboardManager();

    static {
        ConfigurationSerialization.registerClass(ExtendedTofuScoreboard.class);
    }

    private final transient Tofu tofu = Tofu.getInstance();
    private List<ScoreboardString> entries;
    private transient final Scoreboard bukkitScoreboard;
    private transient Objective bukkitObjective;
    private transient Objective bukkitObjective1;
    private transient Objective bukkitObjective2;
    private transient BukkitTask updateTask;
    private String title;
    private transient final Team[] teams = new Team[15];
    private transient final Team[] teams1 = new Team[15];
    private transient final Team[] teams2 = new Team[15];
    private transient int updateState = 0;


    public ExtendedTofuScoreboard(String title, int updateDelayInTicks, ScoreboardString... entries) {

        this.title = title;
        this.entries = new ArrayList<>(Arrays.asList(entries));

        bukkitScoreboard = bukkitManager.getNewScoreboard();

        bukkitObjective = bukkitScoreboard.registerNewObjective("obj", "dummy");
        bukkitObjective1 = bukkitScoreboard.registerNewObjective("obj1", "dummy");
        bukkitObjective2 = bukkitScoreboard.registerNewObjective("obj2", "dummy");
        bukkitObjective.setDisplaySlot(DisplaySlot.SIDEBAR);
        bukkitObjective.setDisplayName(this.title);
        bukkitObjective1.setDisplayName(this.title);
        bukkitObjective2.setDisplayName(this.title);

        for (int i = 0; i < 15; i++) {
            Team team = bukkitScoreboard.registerNewTeam("team" + i);
            Team team1 = bukkitScoreboard.registerNewTeam("iteam" + i);
            Team team2 = bukkitScoreboard.registerNewTeam("iiteam" + i);
            teams[i] = team;
            teams1[i] = team1;
            teams2[i] = team2;
        }
        update();

        setUpdateDelay( updateDelayInTicks);


    }

    @Override
    public Map<String, Object> serialize() {

        Map<String, Object> map = new HashMap<>();

        map.put("entries", entries);
        map.put("title", title);

        return map;

    }

    public ExtendedTofuScoreboard setUpdateDelay(int delayInTicks) {

        if (delayInTicks < 1)
            throw new IllegalArgumentException("delayInTicks cannot be less than 1!");

        if (updateTask != null)
            updateTask.cancel();

        updateTask = (new BukkitRunnable() {
            @Override
            public void run() {
                update();
            }
        }).runTaskTimer(tofu, delayInTicks, delayInTicks);

        return this;

    }

    @Override
    public String getTitle() {
        return title;
    }

    public ExtendedTofuScoreboard setTitle(String title) {
        this.title = title;
        return this;
    }

    @Override
    public List<ScoreboardString> getEntries() {
        return entries;
    }

    public ExtendedTofuScoreboard setEntries(List<ScoreboardString> entries) {
        this.entries = entries;
        return this;
    }

    public ExtendedTofuScoreboard removeEntry(ScoreboardString entry) {
        entries.remove(entry);
        return this;
    }

    public ExtendedTofuScoreboard showTo(Player player) {
        player.setScoreboard(bukkitScoreboard);
        return this;
    }


    public ExtendedTofuScoreboard hideFrom(Player player) {
        player.setScoreboard(bukkitManager.getMainScoreboard());
        return this;
    }

    public ExtendedTofuScoreboard update() {
        updateAntiFlicker();
        return this;
    }

    private void updateOne() {

        redoBukkitObjective1();

        for (int i = 0; i < entries.size(); i++) {

            ScoreboardString entry = entries.get(i);
            String entryStr = ChatColor.translateAlternateColorCodes('&',
                    entry.getNextAndTrim(true));

            teams[i].setSuffix("");

            if (entryStr.length() <= 16) {
                // Simple case: prefix is sufficient to show whole string
                teams[i].setPrefix(entryStr);

                teams[i].addEntry(ChatColor.values()[i] + "§r");

                bukkitObjective.getScore(ChatColor.values()[i] + "§r").setScore(entries.size() - 1 - i);

            } else {

                String s1 = entryStr.length() <= 16 ? entryStr : entryStr.substring(0, 16);
                String s2 = "";
                if (entryStr.length() > 16)
                    s2 = entryStr.length() <= 50 ? entryStr.substring(16) : entryStr.substring(16, 50);
                String s3 = "";
                if (entryStr.length() > 50)
                    s3 = entryStr.substring(50);

                if (!entryStr.contains("§")) {
                    if (entryStr.length() <= 50) {

                        teams[i].setPrefix(s1);
                        teams[i].addEntry(ChatColor.values()[i] + "§r" + s2);
                        bukkitObjective.getScore(ChatColor.values()[i] + "§r" + s1).setScore(entries.size() - 1 - i);

                    } else {

                        teams[i].setPrefix(s1);
                        teams[i].addEntry(ChatColor.values()[i] + "§r" + s2);
                        teams[i].setSuffix(s3);
                        bukkitObjective.getScore(ChatColor.values()[i] + "§r" + s3).setScore(entries.size() - 1 - i);
                    }

                } else {

                    boolean color1 = true;
                    boolean color2 = true;

                    if (s1.endsWith("§")) {
                        s1 = s1.substring(0, s1.length() - 1);
                        if (entryStr.length() > 16) {
                            s2 = "§" + s2;
                            color1 = false;
                        }
                    }

                    if (s2.endsWith("§")) {
                        s2 = s2.substring(0, s2.length() - 1);
                        if (entryStr.length() > 50) {
                            s3 = "§" + s3;
                            color2 = false;
                        }
                    }

                    String color = getLastChatColor(s1);

                    if (entryStr.length() <= 50) {

                        teams[i].setPrefix(s1);
                        if (color1) {
                            teams[i].addEntry(ChatColor.values()[i] + color + s2);
                            bukkitObjective.getScore(ChatColor.values()[i] + color + s2)
                                    .setScore(entries.size() - 1 - i);
                        } else {
                            teams[i].addEntry(ChatColor.values()[i] + s2);
                            bukkitObjective.getScore(ChatColor.values()[i] + s2).setScore(entries.size() - 1 - i);
                        }
                    } else {
                        teams[i].setPrefix(s1);
                        if (color2) {

                            teams[i].addEntry(ChatColor.values()[i] + color + s2);
                            teams[i].setSuffix(getLastChatColor(s2) + s3);
                            bukkitObjective.getScore(ChatColor.values()[i] + color + s2)
                                    .setScore(entries.size() - 1 - i);

                        } else {
                            teams[i].addEntry(ChatColor.values()[i] + s2);
                            teams[i].setSuffix(s3);
                            bukkitObjective.getScore(ChatColor.values()[i] + s2).setScore(entries.size() - 1 - i);
                        }

                    }

                }

            }
        }

        bukkitObjective2.setDisplaySlot(DisplaySlot.SIDEBAR);

    }

    public static String getLastChatColor(String s) {
        String color = "§r";
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == '§') {
                if (colors.contains(s.charAt(i + 1))) {
                    color = "§" + s.charAt(i + 1);
                }
            }
        }
        return color;
    }

    private void updateTwo() {

        redoBukkitObjective2();

        for (int i = 0; i < entries.size(); i++) {

            ScoreboardString entry = entries.get(i);
            String entryStr = ChatColor.translateAlternateColorCodes('&',
                    entry.getNextAndTrim(true));

            if (entryStr.length() <= 16) {
                // Simple case: prefix is sufficient to show whole string
                teams1[i].setPrefix(entryStr);
                teams1[i].setSuffix("");

                teams1[i].addEntry(ChatColor.values()[i] + "§r");

                bukkitObjective1.getScore(ChatColor.values()[i] + "§r").setScore(entries.size() - 1 - i);

            } else {

                String s1 = entryStr.length() <= 16 ? entryStr : entryStr.substring(0, 16);
                String s2 = "";
                if (entryStr.length() > 16)
                    s2 = entryStr.length() <= 50 ? entryStr.substring(16) : entryStr.substring(16, 50);
                String s3 = "";
                if (entryStr.length() > 50)
                    s3 = entryStr.substring(50);

                if (!entryStr.contains("§")) {
                    if (entryStr.length() <= 50) {

                        teams1[i].setPrefix(s1);
                        teams1[i].addEntry(ChatColor.values()[i] + "§r" + s2);
                        bukkitObjective1.getScore(ChatColor.values()[i] + "§r" + s1).setScore(entries.size() - 1 - i);

                    } else {

                        teams1[i].setPrefix(s1);
                        teams1[i].addEntry(ChatColor.values()[i] + "§r" + s2);
                        teams1[i].setSuffix(s3);
                        bukkitObjective1.getScore(ChatColor.values()[i] + "§r" + s3).setScore(entries.size() - 1 - i);
                    }

                } else {

                    boolean color1 = true;
                    boolean color2 = true;

                    if (s1.endsWith("§")) {
                        s1 = s1.substring(0, s1.length() - 1);
                        if (entryStr.length() > 16) {
                            s2 = "§" + s2;
                            color1 = false;
                        }
                    }

                    if (s2.endsWith("§")) {
                        s2 = s2.substring(0, s2.length() - 1);
                        if (entryStr.length() > 50) {
                            s3 = "§" + s3;
                            color2 = false;
                        }
                    }

                    String color = getLastChatColor(s1);

                    if (entryStr.length() <= 50) {

                        teams1[i].setPrefix(s1);
                        if (color1) {
                            teams1[i].addEntry(ChatColor.values()[i] + color + s2);
                            bukkitObjective1.getScore(ChatColor.values()[i] + color + s2)
                                    .setScore(entries.size() - 1 - i);
                        } else {
                            teams1[i].addEntry(ChatColor.values()[i] + s2);
                            bukkitObjective1.getScore(ChatColor.values()[i] + s2).setScore(entries.size() - 1 - i);
                        }
                    } else {
                        teams1[i].setPrefix(s1);
                        if (color2) {

                            teams1[i].addEntry(ChatColor.values()[i] + color + s2);
                            teams1[i].setSuffix(getLastChatColor(s2) + s3);
                            bukkitObjective1.getScore(ChatColor.values()[i] + color + s2)
                                    .setScore(entries.size() - 1 - i);

                        } else {
                            teams1[i].addEntry(ChatColor.values()[i] + s2);
                            teams1[i].setSuffix(s3);
                            bukkitObjective1.getScore(ChatColor.values()[i] + s2).setScore(entries.size() - 1 - i);
                        }

                    }

                }

            }
        }

        bukkitObjective.setDisplaySlot(DisplaySlot.SIDEBAR);
    }

    private void updateThree() {

        redoBukkitObjective3();

        for (int i = 0; i < entries.size(); i++) {

            ScoreboardString entry = entries.get(i);
            String entryStr = ChatColor.translateAlternateColorCodes('&',
                    entry.getNextAndTrim(true));

            teams2[i].setSuffix("");

            if (entryStr.length() <= 16) {
                // Simple case: prefix is sufficient to show whole string
                teams2[i].setPrefix(entryStr);

                teams2[i].addEntry(ChatColor.values()[i] + "§r");

                bukkitObjective2.getScore(ChatColor.values()[i] + "§r").setScore(entries.size() - 1 - i);

            } else {

                String s1 = entryStr.length() <= 16 ? entryStr : entryStr.substring(0, 16);
                String s2 = "";
                if (entryStr.length() > 16)
                    s2 = entryStr.length() <= 50 ? entryStr.substring(16) : entryStr.substring(16, 50);
                String s3 = "";
                if (entryStr.length() > 50)
                    s3 = entryStr.substring(50);

                if (!entryStr.contains("§")) {
                    if (entryStr.length() <= 50) {

                        teams2[i].setPrefix(s1);
                        teams2[i].addEntry(ChatColor.values()[i] + "§r" + s2);
                        bukkitObjective2.getScore(ChatColor.values()[i] + "§r" + s1).setScore(entries.size() - 1 - i);

                    } else {

                        teams2[i].setPrefix(s1);
                        teams2[i].addEntry(ChatColor.values()[i] + "§r" + s2);
                        teams2[i].setSuffix(s3);
                        bukkitObjective2.getScore(ChatColor.values()[i] + "§r" + s3).setScore(entries.size() - 1 - i);
                    }

                } else {

                    boolean color1 = true;
                    boolean color2 = true;

                    if (s1.endsWith("§")) {
                        s1 = s1.substring(0, s1.length() - 1);
                        if (entryStr.length() > 16) {
                            s2 = "§" + s2;
                            color1 = false;
                        }
                    }

                    if (s2.endsWith("§")) {
                        s2 = s2.substring(0, s2.length() - 1);
                        if (entryStr.length() > 50) {
                            s3 = "§" + s3;
                            color2 = false;
                        }
                    }

                    String color = getLastChatColor(s1);

                    if (entryStr.length() <= 50) {

                        teams2[i].setPrefix(s1);
                        if (color1) {
                            teams2[i].addEntry(ChatColor.values()[i] + color + s2);
                            bukkitObjective2.getScore(ChatColor.values()[i] + color + s2)
                                    .setScore(entries.size() - 1 - i);
                        } else {
                            teams2[i].addEntry(ChatColor.values()[i] + s2);
                            bukkitObjective2.getScore(ChatColor.values()[i] + s2).setScore(entries.size() - 1 - i);
                        }
                    } else {
                        teams2[i].setPrefix(s1);
                        if (color2) {

                            teams2[i].addEntry(ChatColor.values()[i] + color + s2);
                            teams2[i].setSuffix(getLastChatColor(s2) + s3);
                            bukkitObjective2.getScore(ChatColor.values()[i] + color + s2)
                                    .setScore(entries.size() - 1 - i);

                        } else {
                            teams2[i].addEntry(ChatColor.values()[i] + s2);
                            teams2[i].setSuffix(s3);
                            bukkitObjective2.getScore(ChatColor.values()[i] + s2).setScore(entries.size() - 1 - i);
                        }

                    }

                }

            }
        }

        bukkitObjective1.setDisplaySlot(DisplaySlot.SIDEBAR);

    }

    private void updateAntiFlicker() {

        if (updateState == 0) {
            updateOne();
            updateState++;
        } else if (updateState == 1) {
            updateTwo();
            updateState++;
        } else {
            updateThree();
            updateState = 0;
        }

    }

    public ExtendedTofuScoreboard addEmpty() {

        entries.add(new ScoreboardString(new String(new char[entries.size()]).replace("\0", " ")));

        return this;

    }

    public Scoreboard getScoreboard() {
        return bukkitScoreboard;
    }

    private void redoBukkitObjective1() {
        bukkitObjective.unregister();
        bukkitObjective = bukkitScoreboard.registerNewObjective("obj", "dummy");
        bukkitObjective.setDisplayName(title);
    }

    private void redoBukkitObjective2() {
        bukkitObjective1.unregister();
        bukkitObjective1 = bukkitScoreboard.registerNewObjective("obj1", "dummy");
        bukkitObjective1.setDisplayName(title);
    }

    private void redoBukkitObjective3() {
        bukkitObjective2.unregister();
        bukkitObjective2 = bukkitScoreboard.registerNewObjective("obj2", "dummy");
        bukkitObjective2.setDisplayName(title);
    }

}
