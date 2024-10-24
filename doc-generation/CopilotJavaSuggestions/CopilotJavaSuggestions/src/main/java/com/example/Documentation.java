package com.example;
// TODO: Use GitHub Copilot to generate a class-level JavaDoc comment.
    // Instructions:
    // 1. Place your cursor above the class definition (on the line right before "public class Documentation").
    // 2. Type '/**' and press **Enter**.
    // 3. GitHub Copilot will generate a suggestion for the class-level JavaDoc.
    // 4. Press **Tab** to accept the suggestion.
public class Documentation {

    

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
