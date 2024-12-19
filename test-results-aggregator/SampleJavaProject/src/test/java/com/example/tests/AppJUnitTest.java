package com.example.tests;

import com.example.app.App;
import org.junit.Test;
import static org.junit.Assert.*;

public class AppJUnitTest {
    @Test
    public void testAddition() {
        App app = new App();
        assertEquals(5, app.add(2, 3));
    }
}
