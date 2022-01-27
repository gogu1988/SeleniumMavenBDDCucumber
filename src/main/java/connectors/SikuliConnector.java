package connectors;

import org.sikuli.script.FindFailed;
import org.sikuli.script.Pattern;
import org.sikuli.script.Screen;
import utils.JsonFileUtil;

import javax.swing.text.PasswordView;

public class SikuliConnector {

    Screen screen;
    JsonFileUtil jfu;

    public SikuliConnector(){
    }

    public void screen() {
        screen = new Screen();
    }

    public void pattern(String imagePath){
        Pattern pattern = new Pattern(imagePath);
    }

    public void click(Pattern pattern) throws FindFailed {
        screen.click(pattern);
    }

    public void type(Pattern pattern, String text) throws FindFailed {
        screen.type(pattern, text);
    }

}
