#!/bin/bash

# Define project name
PROJECT_NAME="CopilotJavaSuggestions"

# Create the project directory inside the current directory (assumed to be documentation-generation)
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
echo "# $PROJECT_NAME - Documentation and Comment Generation

This project demonstrates GitHub Copilot's **documentation and comment generation** feature with Java. Follow the TODOs in the code to generate JavaDoc comments and inline documentation using Copilot.

## How to Use This Project

1. **Open the project in Visual Studio Code**.
2. **Ensure GitHub Copilot is installed and enabled**.
3. **Navigate to each TODO comment in the code files**.
4. **Write JavaDoc comments or inline documentation as prompted**.
5. **Use Copilot to generate meaningful comments and explanations**.

" > README.md

echo "target/
*.class
.vscode/
" > .gitignore

# Create Documentation.java for generating comments using Copilot
mkdir -p src/main/java/com/example
cd src/main/java/com/example

# Create Documentation.java with TODOs to generate comments
cat << EOF > Documentation.java
package com.example;

public class Documentation {

    // TODO: Use GitHub Copilot to generate a class-level JavaDoc comment.
    // Instructions:
    // 1. Place your cursor above the class definition (on the line right before "public class Documentation").
    // 2. Type '/**' and press **Enter**.
    // 3. GitHub Copilot will generate a suggestion for the class-level JavaDoc.
    // 4. Press **Tab** to accept the suggestion.

    // TODO: Use Copilot to generate a JavaDoc comment for the 'add' method.
    // Instructions:
    // 1. Place your cursor above the 'add' method definition (on the line right before "public int add").
    // 2. Type '/**' and press **Enter** to prompt Copilot to generate a JavaDoc comment.
    // 3. Accept the generated comment by pressing **Tab**.
    public int add(int a, int b) {
        return a + b;
    }

    // TODO: Use Copilot to generate a JavaDoc comment for the 'reverseString' method.
    // Instructions:
    // 1. Place your cursor above the 'reverseString' method definition.
    // 2. Type '/**' and press **Enter** to let Copilot generate a JavaDoc for the method.
    // 3. Accept the suggestion by pressing **Tab**.
    public String reverseString(String input) {
        StringBuilder sb = new StringBuilder(input);
        return sb.reverse().toString();
    }

    public static void main(String[] args) {
        Documentation doc = new Documentation();
        System.out.println("Addition: " + doc.add(5, 3));
        System.out.println("Reversed String: " + doc.reverseString("hello"));

        // TODO: Use Copilot to generate inline comments for the 'main' method.
        // Instructions:
        // 1. Place your cursor inside the 'main' method.
        // 2. Add a comment where you think explanation is needed.
        // 3. Copilot will suggest inline documentation explaining the code.
        // 4. Press **Tab** to accept the suggestions for the inline comments.
    }
}
EOF

# Initialize Git repository
cd ../../../..
git init
git add .
git commit -m "Initial commit: Set up CopilotJavaSuggestions project for documentation and comment generation with GitHub Copilot"

# Open the project in Visual Studio Code
echo "Opening project in Visual Studio Code"
code .

echo "Setup completed. Open the project in Visual Studio Code and start generating documentation and comments using GitHub Copilot!"

