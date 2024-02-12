package com.rumman.chatgpt.ai.entities;

import com.rumman.chatgpt.ai.entities.gpt_responses.Choice;
import com.rumman.chatgpt.ai.entities.gpt_responses.Message;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApiResponse {
    private String response;
    
    public ApiResponse(ChatGptResponse getResponse) {
        this.response = getResponse.getChoices().stream()
                .findFirst()
                .map(Choice::getMessage)
                .map(Message::getContent)
                .orElse("Error occurred. Could not fetch response from CHATGPT");
    }
}
