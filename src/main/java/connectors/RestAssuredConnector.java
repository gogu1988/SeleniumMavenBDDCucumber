package connectors;

import io.restassured.RestAssured;
import io.restassured.matcher.RestAssuredMatchers;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import utils.PropertiesFileUtil;

public class RestAssuredConnector {

    RestAssured restAssured;
    RestAssuredMatchers restAssuredMatchers;
    Response response;
    RequestSpecification requestSpecification;
    PropertiesFileUtil pfc;

    public RestAssuredConnector(PropertiesFileUtil pfc) {
        this.pfc = pfc;
    }



}
