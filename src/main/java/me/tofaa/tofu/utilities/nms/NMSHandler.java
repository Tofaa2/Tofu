package me.tofaa.tofu.utilities.nms;

import lombok.Getter;
import me.tofaa.tofu.Tofu;
import me.tofaa.tofu.TofuLogger;
import me.tofaa.tofu.configuration.type.Configuration;
import me.tofaa.tofu.utilities.nms.implementations.v1_8_R3.NMSItem_1_8_R3;
import me.tofaa.tofu.utilities.nms.implementations.v1_8_R3.NMSPlayer_1_8_R3;
import me.tofaa.tofu.utilities.nms.interfaces.NMSItem;
import me.tofaa.tofu.utilities.nms.interfaces.NMSPlayer;

public class NMSHandler {

    private final String version;

    // Interfaces
    @Getter private NMSPlayer nmsPlayer;
    @Getter private NMSItem nmsItem;

    public NMSHandler(){
        this.version = Tofu.getInstance().getServer().getClass().getPackage().getName().split("\\.")[3];
        boolean isDebug = Configuration.get(Configuration.DEBUG_MODE).equals(true);
        if (isDebug) TofuLogger.logInfo("Detected NMS version: " + this.version + ". Using methods for this version.");
        patch();
    }


    public void patch(){
        switch (version) {
            case "v1_8_R3":
                nmsPlayer = new NMSPlayer_1_8_R3();
                nmsItem = new NMSItem_1_8_R3();
                break;
        }
    }

}
