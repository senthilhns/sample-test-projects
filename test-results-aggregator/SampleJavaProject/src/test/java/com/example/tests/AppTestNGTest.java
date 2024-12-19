package com.example.tests;

import com.example.app.App;
import org.testng.annotations.Test;
import static org.testng.Assert.*;

public class AppTestNGTest {
    @Test
    public void testAddition() {
        App app = new App();
        assertEquals(app.add(2, 3), 5);
    }
}
