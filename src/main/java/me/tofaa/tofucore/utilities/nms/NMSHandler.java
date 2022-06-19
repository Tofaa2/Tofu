package me.tofaa.tofucore.utilities.nms;

import lombok.Getter;
import me.tofaa.tofucore.TofuCore;
import me.tofaa.tofucore.TofuLogger;
import me.tofaa.tofucore.configuration.type.Configuration;
import me.tofaa.tofucore.utilities.nms.implementations.v1_8_R3.NMSPlayer_1_8_R3;
import me.tofaa.tofucore.utilities.nms.interfaces.NMSPlayer;

public class NMSHandler {

    private final String version;
    private final boolean isDebug = Configuration.get(Configuration.DEBUG_MODE).equals(true);

    // Interfaces
    @Getter private NMSPlayer nmsPlayer;

    public NMSHandler(){
        this.version = TofuCore.getInstance().getServer().getClass().getPackage().getName().split("\\.")[3];
        if (isDebug) TofuLogger.logInfo("Detected NMS version: " + this.version + ". Using methods for this version.");
        patch();
    }


    public void patch(){
        switch (version) {
            case "v1_8_R3":
                nmsPlayer = new NMSPlayer_1_8_R3();
                break;
        }
    }

}
