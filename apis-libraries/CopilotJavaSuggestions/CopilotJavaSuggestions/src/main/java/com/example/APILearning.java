package com.example;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.io.IOException;
import java.util.List;
import org.json.JSONObject;

public class APILearning {

    public List<String> readFile(String filePath) throws IOException {
        return Files.readAllLines(Paths.get(filePath));
    }

    public void parseJson(String jsonString) {
        JSONObject jsonObject = new JSONObject(jsonString);
        System.out.println(jsonObject.toString(4));
    }

    public static void main(String[] args) {
        APILearning apiLearning = new APILearning();

        try {
            List<String> lines = apiLearning.readFile("example.txt");
            for (String line : lines) {
                System.out.println(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        String jsonString = "{\"name\":\"John\", \"age\":30, \"city\":\"New York\"}";
        apiLearning.parseJson(jsonString);
    }
}
