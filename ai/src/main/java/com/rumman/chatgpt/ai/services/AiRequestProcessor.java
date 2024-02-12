package com.rumman.chatgpt.ai.services;

import org.springframework.stereotype.Service;

import com.rumman.chatgpt.ai.entities.ApiRequest;
import com.rumman.chatgpt.ai.entities.ApiResponse; // Add this import statement
import com.rumman.chatgpt.ai.entities.ChatGptResponse;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
@AllArgsConstructor
public class AiRequestProcessor {
    private final GptRequestBuilder gpt;

    public ApiResponse process(ApiRequest request) {
        log.info("### -> Incoming request: {}", request.getMessage());
        ChatGptResponse response = gpt.executeRequest(request);
        log.info("### -> ChatGpt response: {}", response);
        return new ApiResponse(response);
    }
}
