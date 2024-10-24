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
