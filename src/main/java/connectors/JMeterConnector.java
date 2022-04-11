package connectors;

import org.apache.jmeter.JMeter;
import utils.PropertiesFileUtil;

public class JMeterConnector {
    JMeter jm;
    PropertiesFileUtil pfc;

    public JMeterConnector(PropertiesFileUtil pfc) {
        this.pfc = pfc;
        jm =new JMeter();
    }

}
