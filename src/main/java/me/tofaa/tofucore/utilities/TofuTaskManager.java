package me.tofaa.tofucore.utilities;

import me.tofaa.tofucore.TofuCore;

public class TofuTaskManager {

    public void runSync(Runnable runnable) {
        TofuCore.getInstance().getServer().getScheduler().runTask(TofuCore.getInstance(), runnable);
    }

    public void runAsync(Runnable runnable) {
        TofuCore.getInstance().getServer().getScheduler().runTaskAsynchronously(TofuCore.getInstance(), runnable);
    }

    public void runLater(Runnable runnable, int delay) {
        TofuCore.getInstance().getServer().getScheduler().runTaskLater(TofuCore.getInstance(), runnable, delay);
    }

    public void runTimer(Runnable runnable, int delay, int period) {
        TofuCore.getInstance().getServer().getScheduler().runTaskTimer(TofuCore.getInstance(), runnable, delay, period);
    }

    public void runTimerAsync(Runnable runnable, int delay, int period) {
        TofuCore.getInstance().getServer().getScheduler().runTaskTimerAsynchronously(TofuCore.getInstance(), runnable, delay, period);
    }

}
