package com.example.suite2;

import org.testng.Assert;
import org.testng.annotations.Test;

public class Suite2Tests {

    @Test
    public void passingTest3() {
        Assert.assertTrue(5 > 1, "This test should pass.");
    }

    @Test
    public void passingTest4() {
        Assert.assertEquals("TestNG", "TestNG", "This test should pass.");
    }

    @Test
    public void failingTest2() {
        Assert.fail("This test is designed to fail.");
    }

    @Test
    public void passingTest5() {
        Assert.assertTrue(10 > 9, "This test should pass.");
    }

    @Test(dependsOnMethods = {"passingTest3"})
    public void dependentTest2() {
        Assert.assertTrue(true, "This test depends on a passing test and will pass.");
    }
}
