package ru.gorbunov.client;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Mono;
import ru.gorbunov.dto.RequestDto;

import java.util.List;

@Component
public class CheckClient {
    private final WebClient webClient;


    public CheckClient(WebClient webClient) {
        this.webClient = webClient;
    }

    public RequestDto getRequest() {
        return webClient.get()
                .uri("/requests/1")
                .accept(MediaType.APPLICATION_JSON)
                .retrieve()
                .bodyToMono(RequestDto.class)
                .block();

    }

}
