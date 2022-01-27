package utils;

import java.util.Date;

public class DateFormatUtil {

    public String dateFormat(){
        Date d = new Date();
        return d.toString().replace(":", "_").replace(" ", "_");
    }
}
