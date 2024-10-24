#!/bin/bash

# Define project name
PROJECT_NAME="CopilotJavaSuggestions"

# Create the project directory inside the current directory (assumed to be debugging-assistance)
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
echo "# $PROJECT_NAME - Debugging Assistance

This project demonstrates GitHub Copilot's **debugging assistance** feature with Java. Follow the TODOs in the code to debug intentional errors using Copilot.

## How to Use This Project

1. **Open the project in Visual Studio Code**.
2. **Ensure GitHub Copilot is installed and enabled**.
3. **Navigate to each TODO comment in the code files**.
4. **Use Copilot to identify and fix the errors**.
5. **Use the specified key commands to activate Copilot's suggestions**.

" > README.md

echo "target/
*.class
.vscode/
" > .gitignore

# Create Debugging.java with intentional errors and TODOs for debugging using Copilot
mkdir -p src/main/java/com/example
cd src/main/java/com/example

# Create Debugging.java with intentional bugs for Copilot to help fix
cat << EOF > Debugging.java
package com.example;

public class Debugging {

    // TODO: Fix the error in the add method.
    // Instructions:
    // 1. Place your cursor inside the 'add' method.
    // 2. The method currently throws an error because it mistakenly returns the wrong result.
    // 3. Use Copilot to suggest the correct fix.
    public int add(int a, int b) {
        return a - b;  // This is an intentional error. Copilot should suggest adding instead of subtracting.
    }

    // TODO: Fix the null pointer exception in the reverseString method.
    // Instructions:
    // 1. Place your cursor inside the 'reverseString' method.
    // 2. Copilot will help identify that 'input' may be null and suggest handling it appropriately.
    public String reverseString(String input) {
        StringBuilder sb = new StringBuilder(input);
        return sb.reverse().toString();  // This can throw a NullPointerException if 'input' is null.
    }

    public static void main(String[] args) {
        Debugging dbg = new Debugging();
        System.out.println("Addition: " + dbg.add(5, 3));

        // TODO: Handle the null case in reverseString method.
        // Test the reverseString method with a null value.
        System.out.println("Reversed String: " + dbg.reverseString(null));  // This will currently throw an error.
    }
}
EOF

# Initialize Git repository
cd ../../../..
git init
git add .
git commit -m "Initial commit: Set up CopilotJavaSuggestions project for debugging assistance with GitHub Copilot"

# Open the project in Visual Studio Code
echo "Opening project in Visual Studio Code"
code .

echo "Setup completed. Open the project in Visual Studio Code and start using GitHub Copilot to debug and fix errors!"

