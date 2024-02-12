package com.rumman.chatgpt.ai.entities;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ChatGptRequest {
	private String model;
	private List<ChatGptRequestMessage> messages;
	
	public ChatGptRequest(ApiRequest request) {
		this.model = "gpt-3.5-turbo";
		this.messages = List.of(new ChatGptRequestMessage(request));
	}
}
