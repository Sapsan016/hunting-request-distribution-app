package ru.gorbunov.dto.mapper;

import ru.gorbunov.dto.AddRequestDto;
import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.model.Request;

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
