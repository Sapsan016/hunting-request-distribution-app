package ru.gorbunov.server;

import ru.gorbunov.dto.RequestDto;

import java.util.List;

public interface CheckService {
    List<RequestDto> checkRequests(List<RequestDto> requestDtoList);
}
