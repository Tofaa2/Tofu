package me.tofaa.tofucore;

import lombok.Getter;

public class SystemUtilities {


    @Getter private int seconds;
    @Getter private int minutes;
    @Getter private int hours;
    @Getter private int days;

    public SystemUtilities() {
        this.seconds = 0;
        this.minutes = 0;
        this.hours = 0;
        this.days = 0;
        TofuCore.getInstance().getTaskManager().runTimerAsync(() -> {

            seconds++;
            if (seconds == 60) {
                seconds = 0;
                minutes++;
                if (minutes == 60) {
                    minutes = 0;
                    hours++;
                    if (hours == 24) {
                        hours = 0;
                        days++;
                    }
                }
            }

        }, 0, 20);
    }





}
