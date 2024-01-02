package bddtest.testrunner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/Features/static-login.feature", 
	glue = {"bddtest/stepdefinitions"})
public class StaticLoginTestRunner {

}
