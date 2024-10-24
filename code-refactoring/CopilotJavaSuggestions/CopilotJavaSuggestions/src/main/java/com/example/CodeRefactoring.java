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
