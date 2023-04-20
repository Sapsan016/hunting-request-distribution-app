package ru.gorbunov.client;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.client.WebClient;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.dto.ResourceDto;

@Component
public class CheckClient {
    private final WebClient webClient;

    public CheckClient(WebClient webClient) {
        this.webClient = webClient;
    }

    public Flux<RequestDto> getRequest() {
        return webClient.get()
                .uri("/requests?size=1&status=PENDING")
                .accept(MediaType.APPLICATION_JSON)
                .retrieve()
                .bodyToFlux(RequestDto.class);
    }

    public ResourceDto getResource(Long id) {
        return webClient.get()
                .uri("/resources/" + id)
                .accept(MediaType.APPLICATION_JSON)
                .retrieve()
                .bodyToMono(ResourceDto.class)
                .block();
    }

    public void updateResource(ResourceDto resourceDto) {
         webClient.patch()
                .uri("/resources/check/" + resourceDto.getId())
                .accept(MediaType.APPLICATION_JSON)
                .body(Mono.just(resourceDto), ResourceDto.class)
                .retrieve()
                .bodyToMono(ResourceDto.class)
                .block();
    }

    public void updateRequest(RequestDto requestDto) {
        webClient.patch()
                .uri("/requests/check")
                .accept(MediaType.APPLICATION_JSON)
                .body(Mono.just(requestDto), ResourceDto.class)
                .retrieve()
                .bodyToMono(RequestDto.class)
                .block();
    }


}
