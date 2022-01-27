package utils;

import java.io.FileInputStream;
import java.util.Properties;

public class PropertiesFileUtil {

    Properties webElement;

    public Properties webElementReader(String pageName){
        try {
            webElement= new Properties();
            FileInputStream fs = new FileInputStream(System.getProperty("user.dir")+"\\src\\test\\resources\\pageObjects\\"+pageName+".properties");
            webElement.load(fs);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return webElement;
    }





}
