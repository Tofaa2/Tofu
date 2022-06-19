package me.tofaa.tofu.utilities.exceptions;

import java.io.File;

public class IncorrectTofuConfigurationException extends Exception{

    public IncorrectTofuConfigurationException(File file){
        super("The file " + file.getName() + " is not a valid Tofu configuration file!");
    }


}
