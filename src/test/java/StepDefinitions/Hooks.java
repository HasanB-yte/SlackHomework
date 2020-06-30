package StepDefinitions;

import Utils.BrowserUtils;
import io.cucumber.java.After;
import io.cucumber.java.Scenario;

public class Hooks {


    @After
    public void tearDown(Scenario scenario) {
        System.out.println("The scenario was successfully processed");
        // after annotation will run after each scenario even it fails.
        if (scenario.isFailed()) {
            scenario.log(scenario.getName() + " is failed");
           BrowserUtils.takeScreenShot();
        }
    }
}

