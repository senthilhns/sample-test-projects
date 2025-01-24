package com.example.suite1;

import org.testng.Assert;
import org.testng.SkipException;
import org.testng.annotations.Test;

public class Suite1Tests {

    @Test
    public void passingTest1() {
        Assert.assertTrue(true, "This test should pass.");
    }

    @Test
    public void passingTest2() {
        Assert.assertEquals(2 + 2, 4, "This test should pass.");
    }

    @Test
    public void failingTest1() {
        Assert.fail("This test is designed to fail.");
    }

    @Test
    public void skippedTest1() {
        throw new SkipException("This test is intentionally skipped.");
    }

    @Test(dependsOnMethods = {"failingTest1"})
    public void dependentTest1() {
        Assert.assertTrue(true, "This test depends on a failing test and will be skipped.");
    }
}
