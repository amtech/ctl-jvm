package es.unizar.iaaa.ctl.compliance.inspire.view31;

import org.junit.runner.RunWith;

import cucumber.api.junit.Cucumber;

@RunWith(value = Cucumber.class)
@Cucumber.Options(glue = { 
		"es.unizar.iaaa.ctl.tests.inspire.TestSteps",
		"es.unizar.iaaa.ctl.hooks.inspire.view31.LocalHooksEn" }, features = {
		"src/main/features/view31/view-31-ir-13_en.feature"})
public class ViewIR13TestEn {

}
