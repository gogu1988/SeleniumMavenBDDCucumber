package connectors;

import org.sikuli.script.*;

public class SikuliConnector {

    Screen screen;

    public SikuliConnector() {
        screen();
    }

    public void screen() {
        screen = new Screen();
    }

    public Pattern pattern(String imagePath) {
        Pattern pattern = new Pattern(imagePath);
        return pattern;
    }

    public void click(Pattern pattern) throws FindFailed {
        screen.click(pattern);
    }

    public void type(Pattern pattern, String text) throws FindFailed {
        screen.type(pattern, text);
    }

    public Match exists(Pattern pattern) {
       return screen.exists(pattern);
    }


}