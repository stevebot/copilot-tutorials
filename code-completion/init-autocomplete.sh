#!/bin/bash

# Define project name and directory
PROJECT_NAME="CopilotJavaExercise"
FEATURE_DIR="code-completion"

# Create the project directory
mkdir -p $PROJECT_NAME/$FEATURE_DIR
cd $PROJECT_NAME/$FEATURE_DIR

# Initialize a Maven project
mvn archetype:generate \
  -DgroupId=com.example \
  -DartifactId=$PROJECT_NAME \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DinteractiveMode=false

# Navigate into the project directory
cd $PROJECT_NAME

# Create additional project files
echo "Setting up README.md, CONTRIBUTING.md, .gitignore, and tutorial files"
echo "# $PROJECT_NAME

This project is designed to help you explore GitHub Copilot's **code completion** feature with Java. All exercises are located under the \`$FEATURE_DIR\` directory.

## How to Use This Project

1. **Open the project in Visual Studio Code**.
2. **Ensure GitHub Copilot is installed and enabled**.
3. **Navigate to each TODO comment in the code files**.
4. **Follow the instructions provided to use Copilot's code completion feature**.
5. **Use the specified key commands to activate Copilot suggestions**.

" > README.md

echo "Contributions are welcome! Please read the guidelines here." > CONTRIBUTING.md

echo "target/
*.class
.vscode/
" > .gitignore

# Create the tutorial Java files with TODOs and Copilot instructions under code-completion directory
mkdir -p src/main/java/com/example
cd src/main/java/com/example

# Create Main.java with TODOs and Copilot instructions
cat << EOF > Main.java
package com.example;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // TODO: Use GitHub Copilot's code completion to generate code that asks the user for their name and greets them.
        // Steps:
        // 1. Place your cursor below this comment.
        // 2. Start typing: 'Scanner scanner = new Scanner(System.in);'
        // 3. Copilot will suggest code; press **Tab** to accept the suggestion.
        // 4. Continue typing to prompt the user for their name and read the input.
        // 5. Use 'System.out.println' to greet the user by name.

        // Your code starts here:

        // TODO: Call a method to perform a calculation (e.g., factorial) and display the result.
        // Steps:
        // 1. Ensure you've implemented the 'factorial' method below.
        // 2. Start typing: 'int result = factorial('
        // 3. Copilot will suggest code; accept it with **Tab**.
        // 4. Print the result using 'System.out.println'.

        // Your code for factorial:
    }

    // TODO: Write a method that calculates the factorial of a number using recursion.
    // Steps:
    // 1. Place your cursor below this comment.
    // 2. Start typing: 'public static int factorial(int n) {'
    // 3. Copilot will suggest the method body.
    // 4. Press **Ctrl+Enter** (Windows/Linux) or **Cmd+Enter** (macOS) to see multiple suggestions.
    // 5. Select the appropriate implementation.
}
EOF

# Create DataProcessor.java with TODOs and Copilot instructions
cat << EOF > DataProcessor.java
package com.example;

import java.util.List;
import java.util.ArrayList;

public class DataProcessor {
    // TODO: Implement a method to sort a list of integers in ascending order using code completion.
    // Steps:
    // 1. Place your cursor below this comment.
    // 2. Start typing: 'public static List<Integer> sortList(List<Integer> numbers) {'
    // 3. Accept Copilot's suggestion by pressing **Tab**.
    // 4. If no suggestion appears, press **Ctrl+Enter** (Windows/Linux) or **Cmd+Enter** (macOS) to view suggestions.
    // 5. Choose a method that sorts the list using a sorting algorithm or built-in methods.

    // TODO: Implement a method to filter out even numbers from a list using code completion.
    // Steps:
    // 1. Start typing: 'public static List<Integer> filterEvenNumbers(List<Integer> numbers) {'
    // 2. Use Copilot to generate the method body that iterates over the list and filters out even numbers.

    // TODO: Use Copilot to write JavaDoc comments for the methods using code completion.
    // Steps:
    // 1. Place your cursor above the method signature.
    // 2. Type '/**' and press **Enter**.
    // 3. Copilot will generate a JavaDoc comment; press **Tab** to accept.
}
EOF

# Create FileHandler.java with TODOs and Copilot instructions
cat << EOF > FileHandler.java
package com.example;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class FileHandler {
    // TODO: Write a method to read data from a file and return it as a String using code completion.
    // Steps:
    // 1. Start typing: 'public static String readFile(String filename) throws IOException {'
    // 2. Accept Copilot's suggested method body.
    // 3. Ensure exception handling is included.

    // TODO: Write a method to write a given String to a file using code completion.
    // Steps:
    // 1. Start typing: 'public static void writeFile(String filename, String data) throws IOException {'
    // 2. Use Copilot to generate the method body that writes data to a file.

    // TODO: Handle exceptions appropriately using try-catch blocks.
    // Steps:
    // 1. Inside your methods, start typing 'try {' and let Copilot suggest the try-catch structure.
    // 2. Accept the suggestion and ensure proper exception handling is in place.
}
EOF

# Create NetworkClient.java with TODOs and Copilot instructions
cat << EOF > NetworkClient.java
package com.example;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class NetworkClient {
    // TODO: Write a method to perform an HTTP GET request to a given URL and return the response as a String using code completion.
    // Steps:
    // 1. Start typing: 'public static String sendGetRequest(String url) throws IOException {'
    // 2. Use Copilot to generate the method body that opens a connection, sends a GET request, and reads the response.
    // 3. Accept suggestions with **Tab**.

    // TODO: Use Copilot to add code that parses JSON responses using code completion.
    // Steps:
    // 1. Add a dependency for JSON parsing library if needed (e.g., org.json).
    // 2. Inside 'sendGetRequest', after getting the response, start typing: 'JSONObject jsonObject ='
    // 3. Copilot will suggest code to parse the response into a JSON object.

    // TODO: Handle possible network exceptions and errors using code completion.
    // Steps:
    // 1. Use try-catch blocks around network operations.
    // 2. Start typing 'try {' and let Copilot provide the structure.
    // 3. Implement retries or error logging as suggested by Copilot.
}
EOF

cd ../../../../../..

# Initialize Git repository
echo "Initializing Git repository and making initial commit"
git init
git add .
git commit -m "Initial commit: Set up Java project under $FEATURE_DIR demonstrating code completion with GitHub Copilot"

# Open the project in Visual Studio Code
echo "Opening project in Visual Studio Code"
code .

echo "Setup completed. Open the project in Visual Studio Code and start filling in the TODOs using GitHub Copilot's code completion feature!"

