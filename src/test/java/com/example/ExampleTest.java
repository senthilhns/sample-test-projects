package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class ExampleTest {

    @Test
    public void testAddition() {
        int sum = 2 + 3;
        assertEquals(5, sum, "2 + 3 should equal 5");
    }

    @Test
    public void testMultiplication() {
        int result = 4 * 2;
        assertEquals(8, result, "4 * 2 should equal 8");
    }

    @Test
    public void testStringConcatenation() {
        String result = "Hello" + " " + "World";
        assertEquals("Hello World", result, "String concatenation should work correctly");
    }

    @Test
    public void testArrayLength() {
        int[] numbers = {1, 2, 3, 4, 5};
        assertEquals(5, numbers.length, "Array length should be 5");
    }

    @Test
    public void testBooleanLogic() {
        boolean flag = (10 > 5) && (3 < 8);
        assertTrue(flag, "Boolean logic should evaluate to true");
    }
}
