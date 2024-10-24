#!/bin/bash

# Define project name
PROJECT_NAME="CopilotJavaSuggestions"

# Create the project directory inside the current directory (assumed to be test-generation)
mkdir -p $PROJECT_NAME
cd $PROJECT_NAME

# Initialize a Maven project
mvn archetype:generate \
  -DgroupId=com.example \
  -DartifactId=$PROJECT_NAME \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false

# Navigate into the project directory
cd $PROJECT_NAME

# Remove the default App.java created by Maven
rm -rf src/main/java/com/example/App.java

# Create additional project files
echo "Setting up README.md, .gitignore, and tutorial files"
echo "# $PROJECT_NAME - Test Case Generation

This project demonstrates GitHub Copilot's **test case generation** feature with Java. Follow the TODOs in the code to complete the exercises by using Copilot to generate JUnit test cases for the provided methods.

## How to Use This Project

1. **Open the project in Visual Studio Code**.
2. **Ensure GitHub Copilot is installed and enabled**.
3. **Navigate to each TODO comment in the code files**.
4. **Use Copilot to generate unit tests for the methods**.
5. **Use the specified key commands to activate Copilot's suggestions**.

" > README.md

echo "target/
*.class
.vscode/
" > .gitignore

# Create the Calculator class with basic methods
mkdir -p src/main/java/com/example
cd src/main/java/com/example

# Create Calculator.java with basic methods and TODOs for test generation
cat << EOF > Calculator.java
package com.example;

public class Calculator {

    // Method to add two numbers
    public int add(int a, int b) {
        return a + b;
    }

    // Method to subtract two numbers
    public int subtract(int a, int b) {
        return a - b;
    }

    // Method to multiply two numbers
    public int multiply(int a, int b) {
        return a * b;
    }

    // Method to divide two numbers
    public int divide(int a, int b) {
        if (b == 0) {
            throw new IllegalArgumentException("Cannot divide by zero");
        }
        return a / b;
    }

    public static void main(String[] args) {
        Calculator calculator = new Calculator();
        System.out.println("Addition: " + calculator.add(5, 3));
        System.out.println("Subtraction: " + calculator.subtract(5, 3));
        System.out.println("Multiplication: " + calculator.multiply(5, 3));
        System.out.println("Division: " + calculator.divide(6, 2));
    }
}
EOF

# Create test directory and test file
mkdir -p ../../../test/java/com/example
cd ../../../test/java/com/example

# Create CalculatorTest.java with TODOs to generate unit tests
cat << EOF > CalculatorTest.java
package com.example;

import org.junit.Assert;
import org.junit.Test;

public class CalculatorTest {

    // TODO: Write a test for the add method using GitHub Copilot.
    // Steps:
    // 1. Place your cursor below this comment.
    // 2. Type '@Test' and let Copilot generate a test for the add method.
    // 3. Press **Tab** to accept the suggestion.

    // TODO: Write tests for the subtract, multiply, and divide methods.
    // Follow the same process as the add method.
}
EOF

# Initialize Git repository
cd ../../../../..
git init
git add .
git commit -m "Initial commit: Set up CopilotJavaSuggestions project for test case generation with GitHub Copilot"

# Open the project in Visual Studio Code
echo "Opening project in Visual Studio Code"
code .

echo "Setup completed. Open the project in Visual Studio Code and start generating unit tests using GitHub Copilot!"

