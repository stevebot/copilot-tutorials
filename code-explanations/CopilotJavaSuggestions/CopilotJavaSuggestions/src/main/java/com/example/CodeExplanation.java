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

