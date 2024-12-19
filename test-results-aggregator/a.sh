#!/bin/bash

# Project name
PROJECT_NAME="SampleJavaProject"

# Create project directory structure
mkdir -p $PROJECT_NAME/src/main/java/com/example/app
mkdir -p $PROJECT_NAME/src/test/java/com/example/tests
mkdir -p $PROJECT_NAME/lib

# Navigate to project root
echo "Creating project structure..."
cd $PROJECT_NAME

# Create Maven `pom.xml`
cat <<EOL > pom.xml
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>com.example</groupId>
    <artifactId>SampleJavaProject</artifactId>
    <version>1.0-SNAPSHOT</version>
    <dependencies>
        <!-- JUnit Dependency -->
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.13.2</version>
            <scope>test</scope>
        </dependency>
        <!-- TestNG Dependency -->
        <dependency>
            <groupId>org.testng</groupId>
            <artifactId>testng</artifactId>
            <version>7.7.0</version>
            <scope>test</scope>
        </dependency>
    </dependencies>
</project>
EOL

# Create main application class
cat <<EOL > src/main/java/com/example/app/App.java
package com.example.app;

public class App {
    public int add(int a, int b) {
        return a + b;
    }
}
EOL

# Create JUnit test case
cat <<EOL > src/test/java/com/example/tests/AppJUnitTest.java
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
EOL

# Create TestNG test case
cat <<EOL > src/test/java/com/example/tests/AppTestNGTest.java
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
EOL

# Provide instructions
cat <<EOL > README.md
# $PROJECT_NAME

## Instructions to Run the Tests

1. Navigate to the project root directory:
    ```bash
    cd $PROJECT_NAME
    ```

2. Run JUnit tests:
    ```bash
    mvn test
    ```

3. Run TestNG tests:
    ```bash
    mvn test -Dtest=AppTestNGTest
    ```

4. View test results:
    - Test results will be available in the `target/surefire-reports` directory.

5. To clean the project:
    ```bash
    mvn clean
    ```

## Project Structure
- `src/main/java`: Contains the main application code.
- `src/test/java`: Contains the test cases for JUnit and TestNG.
- `pom.xml`: Maven configuration file with dependencies.

## Prerequisites
- Install Java (JDK 8 or later).
- Install Maven.

EOL

# Finish
echo "Project $PROJECT_NAME created successfully. Navigate to the project directory and follow the instructions in README.md."
