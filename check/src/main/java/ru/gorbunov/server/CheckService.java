package ru.gorbunov.server;

import reactor.core.publisher.Mono;
import ru.gorbunov.dto.RequestDto;

import java.util.List;

public interface CheckService {
    List<RequestDto> checkRequests(List<RequestDto> requestDtoList);

    RequestDto checkRequest(RequestDto requestDto);
}
