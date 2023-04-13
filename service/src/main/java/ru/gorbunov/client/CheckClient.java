package ru.gorbunov.client;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.BodyInserters;
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

    public ResponseEntity<Object> checkRequest(List<RequestDto> requestDtoList) {
        return webClient.patch()
                .uri("/check")
                .contentType(MediaType.APPLICATION_JSON)
                .body(BodyInserters.fromValue(requestDtoList))
                .exchangeToMono(response -> {
                    if (response.statusCode().equals(HttpStatus.OK)) {
                        return response.bodyToMono(Object.class)
                                .map(body -> ResponseEntity.status(HttpStatus.OK).body(body));
                    } else {
                        return response.createException()
                                .flatMap(Mono::error);
                    }
                })
                .block();
    }

}
