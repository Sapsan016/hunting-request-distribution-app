package ru.gorbunov.model.dto.mapper;

import ru.gorbunov.model.Request;
import ru.gorbunov.model.dto.AddRequestDto;
import ru.gorbunov.model.dto.RequestDto;

public class RequestMapper {
    public static Request toRequest(AddRequestDto addRequestDto) {
        return new Request(
                null,
                addRequestDto.getSurname(),
                addRequestDto.getName(),
                addRequestDto.getMiddleName(),
                addRequestDto.getType(),
                addRequestDto.getTicketSerialNumber(),
                addRequestDto.getTicketNumber(),
                null
        );
    }

    public static RequestDto toDto(Request request) {
        return new RequestDto(
                request.getId(),
                request.getSurname(),
                request.getName(),
                request.getMiddleName(),
                request.getType(),
                request.getTicketSerialNumber(),
                request.getTicketNumber(),
                request.getResource()
        );
    }
}
