package bddtest.testrunner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/Features/amazon-product-search2.feature", 
	glue = {"bddtest/stepdefinitions"},
	plugin = {"com.cucumber.listener.ExtentCucumberFormatter:target/html/ExtentReport.html"})
public class StaticLoginTestRunner {

}
