package stepDefinitions;


import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;

import java.util.List;
import java.util.Map;

public class Demo_3 {
    @Given("user print this")
    public void userPrintThis(DataTable data) {

        Map<String, String> m = data.asMap(String.class, String.class);
        System.out.println("Map " + m.values());

        List<Map<String, String>> m1 = data.asMaps();
        System.out.println("List Map " + m1.get(1));

        System.out.println(data.cell(1,0));
        System.out.println(data.columns(1,2));
        int i=10;
        List<String>  x = data.asList();
        List<List<Integer>>  y = data.asLists(Integer.class);
        System.out.println(x);
        System.out.println(y);
        int a = y.indexOf(11);
        System.out.println(a);
    }

    @Given("user print this map")
    public void userPrintThisMap(Map<String, String> m) {
        System.out.println(m.get("a"));
    }
}
