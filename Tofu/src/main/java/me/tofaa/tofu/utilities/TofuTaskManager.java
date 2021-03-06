package me.tofaa.tofu.utilities;

import me.tofaa.tofu.Tofu;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class TofuTaskManager {

    public static final ExecutorService threadSafeExecutor = Executors.newSingleThreadExecutor();
    public static final ExecutorService flatFileExecutor = Executors.newCachedThreadPool();

    public void runSync(Runnable runnable) {
        Tofu.getInstance().getServer().getScheduler().runTask(Tofu.getInstance(), runnable);
    }

    public void runAsync(Runnable runnable) {
        Tofu.getInstance().getServer().getScheduler().runTaskAsynchronously(Tofu.getInstance(), runnable);
    }

    public void runLater(Runnable runnable, int delay) {
        Tofu.getInstance().getServer().getScheduler().runTaskLater(Tofu.getInstance(), runnable, delay);
    }

    public void runTimer(Runnable runnable, int delay, int period) {
        Tofu.getInstance().getServer().getScheduler().runTaskTimer(Tofu.getInstance(), runnable, delay, period);
    }

    public void runTimerAsync(Runnable runnable, int delay, int period) {
        Tofu.getInstance().getServer().getScheduler().runTaskTimerAsynchronously(Tofu.getInstance(), runnable, delay, period);
    }

}
