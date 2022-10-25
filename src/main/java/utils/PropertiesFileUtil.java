package utils;

import java.io.FileInputStream;
import java.util.Properties;

public class PropertiesFileUtil {

    Properties webElement;
    Properties frameworkConfig;

    Properties appConfig;

    public Properties webElementReader(String fileName){
        try {
            webElement= new Properties();
            FileInputStream fs = new FileInputStream(System.getProperty("user.dir")+"/src/test/resources/pageObjects/"+fileName+".properties");
            webElement.load(fs);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return webElement;
    }

    public Properties frameworkConfig(){
        try {
            frameworkConfig= new Properties();
            FileInputStream fs = new FileInputStream(System.getProperty("user.dir")+"/src/test/resources/config/frameworkConfig.properties");
            frameworkConfig.load(fs);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return frameworkConfig;
    }

    public Properties appConfig(){
        try {
            appConfig= new Properties();
            FileInputStream fs = new FileInputStream(System.getProperty("user.dir")+"/src/test/resources/config/appConfig.properties");
            appConfig.load(fs);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return appConfig;
    }



}
