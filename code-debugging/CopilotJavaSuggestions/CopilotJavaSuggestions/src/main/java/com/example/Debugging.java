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
