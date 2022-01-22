package connectors;

import org.openqa.selenium.winium.DesktopOptions;
import org.openqa.selenium.winium.WiniumDriver;

public class WiniumDesktopConnector {

    DesktopOptions desktopOptions;
    WiniumDriver winiumDriver;

    public void setApplicationPath(String applicationPath) {
        desktopOptions = new DesktopOptions();
        desktopOptions.setApplicationPath(applicationPath);
    }

}

