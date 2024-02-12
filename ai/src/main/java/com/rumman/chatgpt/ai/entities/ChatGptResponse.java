package com.rumman.chatgpt.ai.entities;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.rumman.chatgpt.ai.entities.gpt_responses.Choice;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class ChatGptResponse {
	private String id;
	private List<Choice> choices;
}
