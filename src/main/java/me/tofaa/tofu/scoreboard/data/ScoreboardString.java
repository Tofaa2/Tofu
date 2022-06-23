package me.tofaa.tofu.scoreboard.data;

import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.scoreboard.ExtendedTofuScoreboard;
import org.bukkit.configuration.serialization.ConfigurationSerializable;
import org.bukkit.configuration.serialization.ConfigurationSerialization;

import java.util.*;

@SuppressWarnings("unused")
public class ScoreboardString implements ConfigurationSerializable {

    public static ScoreboardString generateScrollingAnimation(String text, String prefix, String suffix, int displayWidth) {
        if (text.length() <= displayWidth)
            return new ScoreboardString(text);
        ScoreboardString sidebarString = new ScoreboardString();

        for (int i = 0; i <= text.length() - displayWidth; i++) {
            String pre = text.substring(0, i);
            String suff = text.substring(i, displayWidth + i);
            if (suff.endsWith("§")) {
                suff = suff.substring(0, suff.length() - 1);
            }
            if (pre.endsWith("§")) {
                pre.substring(0, pre.length() - 1);
                sidebarString.addVariation("§" + suff);
                continue;
            }
            String color = ExtendedTofuScoreboard.getLastChatColor(pre);
            sidebarString.addVariation(prefix + color + suff + suffix);
            if (text.charAt(i) == '§') {
                i += 2;
            }
            else if (text.charAt(i) == ' ') {
                i++;
            }
        }
        return sidebarString;

    }

    public static ScoreboardString generateScrollingAnimation(String text, int displayWidth) {

        return generateScrollingAnimation(text, "", "", displayWidth);

    }
    static {
        ConfigurationSerialization.registerClass(ScoreboardString.class);
    }

    private final List<String> animated = new ArrayList<>();
    private transient int i = 0, curStep;
    private int step = 1;


    public ScoreboardString(String... variations) {
        if (variations != null && variations.length > 0)
            animated.addAll(List.of(variations));

        curStep = step;
    }

    public ScoreboardString(int step, String... variations) {

        if (step <= 0)
            throw new IllegalArgumentException("step cannot be smaller than or equal to 0!");

        this.step = step;

        if (variations != null && variations.length > 0)
            animated.addAll(Arrays.asList(variations));

        curStep = step;

    }


    @Override
    public Map<String, Object> serialize() {

        Map<String, Object> map = new HashMap<>();

        map.put("data", animated);
        map.put("step", step);

        return map;

    }

    public String getNext() {
        if (curStep == step)
            i++;
        curStep++;
        if (curStep > step)
            curStep = 0;
        if (i > animated.size())
            i = 1;
        return animated.get(i - 1);
    }

    public String getNextAndTrim(boolean isLongText) {
        String next = getNext();
        if (next.startsWith("§r") || next.startsWith("§f"))
            next = next.substring(2);

        if (next.startsWith("§r§f") || next.startsWith("§f§r"))
            next = next.substring(4);
        if (isLongText) {
            if (next.length() > 64) {
                TofuLogger.logWarning("Entry #" + (i + 1) + " was trimmed down to 64 characters (" + next + ")");
                next = next.substring(0, 64);
                if (next.endsWith("§")) {
                    next = next.substring(0, 63);
                }
                animated.set(i - 1, next);
            }
        } else {
            if (next.length() > 28) {
                TofuLogger.logWarning("Entry #" + (i + 1) + " was trimmed down to 28 characters (" + next + ")");
                next = next.substring(0, 28);
                if (next.endsWith("§")) {
                    next = next.substring(0, 27);
                }
                animated.set(i - 1, next);
            }
        }
        return next;
    }

    public ScoreboardString addVariation(String... variations) {
        animated.addAll(Arrays.asList(variations));
        return this;
    }


    public ScoreboardString reset() {
        i = 0;
        curStep = step;
        return this;
    }

    public int getStep() {
        return step;
    }

    public ScoreboardString setStep(int step) {
        if (step <= 0)
            throw new IllegalArgumentException("step cannot be smaller than or equal to 0!");
        this.step = step;
        curStep = step;
        return this;
    }

    public List<String> getVariations() {
        return animated;
    }

}
