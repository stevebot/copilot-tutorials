#!/bin/bash

# Define project name
PROJECT_NAME="CopilotJavaSuggestions"

# Create the project directory inside the current directory
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
echo "# $PROJECT_NAME - Code Generation

This project demonstrates GitHub Copilot's **code generation** feature with Java. Follow the TODOs in the code to complete the exercises using Copilot's ability to generate code from descriptive comments.

## How to Use This Project

1. **Open the project in Visual Studio Code**.
2. **Ensure GitHub Copilot is installed and enabled**.
3. **Navigate to each TODO comment in the code files**.
4. **Write descriptive comments for the desired functionality**.
5. **Use the specified key commands to activate Copilot's suggestions**.

" > README.md

echo "target/
*.class
.vscode/
" > .gitignore

# Create the tutorial Java files with TODOs and Copilot instructions
mkdir -p src/main/java/com/example
cd src/main/java/com/example

# Create CodeGeneration.java with TODOs
cat << EOF > CodeGeneration.java
package com.example;

public class CodeGeneration {

    // TODO: Write a comment describing a method that reverses a string.
    // Steps:
    // 1. Place your cursor below this comment.
    // 2. Write a descriptive comment: '// Method to reverse a string'
    // 3. Press **Enter**.
    // 4. Copilot will suggest the method implementation.
    // 5. Press **Tab** to accept the suggestion.

    // Your code starts here:


    // TODO: Write a comment describing a method to check if a number is prime.
    // Steps:
    // 1. Below this comment, write: '// Method to check if a number is prime'
    // 2. Press **Enter**.
    // 3. Copilot will suggest the method implementation.


    public static void main(String[] args) {
        // TODO: Call the prime-checking method and print whether 17 is a prime number.
        // Steps:
        // 1. Start typing: 'boolean isPrime = '
        // 2. Let Copilot suggest the call to the prime-checking method.
        // 3. Print the result using 'System.out.println'.

    }
}
EOF

# Initialize Git repository
cd ../../../..
git init
git add .
git commit -m "Initial commit: Set up CopilotJavaSuggestions project for code generation with GitHub Copilot"

# Open the project in Visual Studio Code
echo "Opening project in Visual Studio Code"
code .

echo "Setup completed. Open the project in Visual Studio Code and start filling in the TODOs using GitHub Copilot's code generation feature!"

