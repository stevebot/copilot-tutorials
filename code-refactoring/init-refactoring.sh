#!/bin/bash

# Define project name
PROJECT_NAME="CopilotJavaSuggestions"

# Create the project directory inside the current directory (assumed to be code-refactoring)
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
echo "# $PROJECT_NAME - Code Refactoring and Optimization

This project demonstrates GitHub Copilot's **code refactoring and optimization** feature with Java. Follow the TODOs in the code to complete the exercises using Copilot's ability to suggest improvements to inefficient code.

## How to Use This Project

1. **Open the project in Visual Studio Code**.
2. **Ensure GitHub Copilot is installed and enabled**.
3. **Navigate to each TODO comment in the code files**.
4. **Review the inefficient code and use Copilot to suggest improvements**.
5. **Use the specified key commands to activate Copilot's suggestions**.

" > README.md

echo "target/
*.class
.vscode/
" > .gitignore

# Create the tutorial Java files with TODOs and Copilot instructions
mkdir -p src/main/java/com/example
cd src/main/java/com/example

# Create CodeRefactoring.java with inefficient code and detailed TODOs
cat << EOF > CodeRefactoring.java
package com.example;

public class CodeRefactoring {

    // TODO: Refactor this method to use a more efficient approach.
    // Currently, this method calculates the sum of all numbers from 1 to n using a loop.
    // Steps:
    // 1. Carefully review the method below that uses a loop.
    // 2. Recognize that the sum of numbers from 1 to n can be calculated using the formula: n*(n+1)/2.
    // 3. Place your cursor inside the method.
    // 4. Start typing: 'return n * (n + 1) / 2;'
    // 5. GitHub Copilot should suggest this optimized version.
    // 6. Press **Tab** to accept Copilot's suggestion and remove the loop.

    public static int sumUpToN(int n) {
        int sum = 0;
        for (int i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }

    public static void main(String[] args) {
        int n = 100;
        int sum = sumUpToN(n);
        System.out.println("Sum of numbers from 1 to " + n + " is: " + sum);

        // TODO: Refactor the sumUpToN method to avoid the loop and use a direct formula.
        // Steps:
        // 1. In the 'sumUpToN' method, start typing: 'return n * (n + 1) / 2;'
        // 2. GitHub Copilot will recognize the optimization and suggest the complete code.
        // 3. Accept Copilot's suggestion by pressing **Tab**.
        // 4. Remove the loop entirely after accepting the optimized solution.
    }
}
EOF

# Initialize Git repository
cd ../../../..
git init
git add .
git commit -m "Initial commit: Set up CopilotJavaSuggestions project for code refactoring with GitHub Copilot"

# Open the project in Visual Studio Code
echo "Opening project in Visual Studio Code"
code .

echo "Setup completed. Open the project in Visual Studio Code and start using GitHub Copilot to refactor and optimize the code!"
