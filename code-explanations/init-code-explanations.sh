#!/bin/bash

# Define project name
PROJECT_NAME="CopilotJavaSuggestions"

# Create the project directory inside the current directory (assumed to be code-explanation)
mkdir -p "$PROJECT_NAME"
cd "$PROJECT_NAME"

# Initialize a Maven project without creating a new Git repository
mvn archetype:generate \
  -DgroupId=com.example \
  -DartifactId="$PROJECT_NAME" \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false

# Navigate into the project directory
cd "$PROJECT_NAME"

# Remove the default App.java created by Maven
rm -rf src/main/java/com/example/App.java

# Create additional project files
echo "Setting up README.md, .gitignore, and tutorial files"
echo "# $PROJECT_NAME - Code Explanation

This project demonstrates GitHub Copilot's **Code Explanation** feature with Java. Follow the TODOs in the code to use Copilot to explain what each part of the code does.

## How to Use This Project

1. **Open the project in Visual Studio Code**.
2. **Ensure GitHub Copilot is installed and enabled**.
3. **Navigate to each TODO comment in the code files**.
4. **Use Copilot to generate explanations for the complex code provided**.
5. **Use the specified key commands to activate Copilot's suggestions**.

" > README.md

echo "target/
*.class
.vscode/
" > .gitignore

# Create CodeExplanation.java for Copilot to generate explanations
mkdir -p src/main/java/com/example
cd src/main/java/com/example

# Create CodeExplanation.java with complex code and TODOs for explanation
cat << EOF > CodeExplanation.java
package com.example;

import java.util.HashMap;
import java.util.Map;

public class CodeExplanation {

    // TODO: Use GitHub Copilot to explain what the 'findMaxFrequencyElement' method does.
    // Instructions:
    // 1. Place your cursor above the method.
    // 2. Type a comment: '// Explain what this method does'
    // 3. Press **Enter** and let Copilot suggest the explanation.
    public int findMaxFrequencyElement(int[] arr) {
        Map<Integer, Integer> frequencyMap = new HashMap<>();
        int maxCount = 0;
        int mostFrequentElement = arr[0];

        for (int num : arr) {
            frequencyMap.put(num, frequencyMap.getOrDefault(num, 0) + 1);

            if (frequencyMap.get

