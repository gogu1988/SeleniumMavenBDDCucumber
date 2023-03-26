package customStepDefinitions;

import io.cucumber.cucumberexpressions.Transformer;

public class TransformData implements Transformer<String> {
    @Override
    public String transform(String s) throws Throwable {
        return s + " changed data";
    }
}
