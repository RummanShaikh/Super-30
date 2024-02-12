package com.rumman.chatgpt.ai.services;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.rumman.chatgpt.ai.entities.ApiRequest;
import com.rumman.chatgpt.ai.entities.ChatGptRequest;
import com.rumman.chatgpt.ai.entities.ChatGptResponse;

import org.springframework.http.HttpEntity;



@Service
public class GptRequestBuilder {
	private final RestTemplate rest;
	private final String URL;
	private final String SECRET;
	
	public GptRequestBuilder(@Value("${ai.secret}") String secret, @Value("${ai.url}") String url){
		this.URL = url;
		this.SECRET = secret;
		this.rest = new RestTemplate();
	}
	
	public ChatGptResponse executeRequest(ApiRequest request) {
		HttpHeaders headers = new HttpHeaders();
		headers.set("Authorization", "Bearer " + SECRET);
		HttpEntity<ChatGptRequest> httpEntity = new HttpEntity<ChatGptRequest>(new ChatGptRequest(request), headers);
		ResponseEntity<ChatGptResponse> responseEntity = rest.postForEntity(URL, httpEntity, ChatGptResponse.class);
		return responseEntity.getBody();
	}
}
