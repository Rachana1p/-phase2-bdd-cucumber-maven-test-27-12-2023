package bddtest.testrunner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/Features/tags-ex.feature", 
	glue = {"bddtest/stepdefinitions"},tags = "@SmokeTest and @RegressionTest")
	

public class SmokeTestRunner {

}
