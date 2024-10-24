#!/bin/bash

# Define project name
PROJECT_NAME="CopilotJavaSuggestions"

# Create the project directory inside the current directory (assumed to be learning-new-apis)
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
echo "# $PROJECT_NAME - Learning New APIs and Libraries

This project demonstrates GitHub Copilot's **Learning New APIs and Libraries** feature with Java. Follow the TODOs in the code to explore how Copilot can help you learn and implement new APIs.

## How to Use This Project

1. **Open the project in Visual Studio Code**.
2. **Ensure GitHub Copilot is installed and enabled**.
3. **Navigate to each TODO comment in the code files**.
4. **Use Copilot to generate example code for unfamiliar APIs**.
5. **Use the specified key commands to activate Copilot's suggestions**.

" > README.md

echo "target/
*.class
.vscode/
" > .gitignore

# Create APILearning.java to explore new APIs with Copilot
mkdir -p src/main/java/com/example
cd src/main/java/com/example

# Create APILearning.java with TODOs for learning APIs using Copilot
cat << EOF > APILearning.java
package com.example;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.IOException;
import java.util.List;

public class APILearning {

    // TODO: Use GitHub Copilot to generate code that reads lines from a file using the 'java.nio.file' API.
    // Instructions:
    // 1. Place your cursor inside the 'readFile' method.
    // 2. Type the code to read all lines from a file using 'Files.readAllLines'.
    // 3. Use Copilot to help you implement this code.

    public List<String> readFile(String filePath) throws IOException {
        // Your code here to read lines from a file using java.nio.file API
        return null;  // Placeholder
    }

    // TODO: Use Copilot to generate code that parses a JSON string using a JSON parsing library.
    // Instructions:
    // 1. Place your cursor inside the 'parseJson' method.
    // 2. Start typing the code to parse a JSON string.
    // 3. Copilot will suggest using a library like 'org.json' to parse the JSON.
    // 4. Accept Copilot's suggestions and implement the JSON parsing logic.

    public void parseJson(String jsonString) {
        // Your code here to parse JSON using a library like org.json
    }

    public static void main(String[] args) {
        // TODO: Test the 'readFile' and 'parseJson' methods by calling them in the main method.
        // Use Copilot to assist with test cases for these new API methods.
    }
}
EOF

# Initialize Git repository
cd ../../../..
git init
git add .
git commit -m "Initial commit: Set up CopilotJavaSuggestions project for learning new APIs with GitHub Copilot"

# Open the project in Visual Studio Code
echo "Opening project in Visual Studio Code"
code .

echo "Setup completed. Open the project in Visual Studio Code and start using GitHub Copilot to explore and learn new APIs!"

