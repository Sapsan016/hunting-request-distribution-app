package ru.gorbunov.dto.mapper;

import ru.gorbunov.dto.AddRequestDto;
import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.model.Request;
import ru.gorbunov.model.RequestStatus;

import java.time.LocalDateTime;

public class RequestMapper {
    public static Request toRequest(AddRequestDto addRequestDto) {
        return new Request(
                null,
                addRequestDto.getSurname(),
                addRequestDto.getName(),
                addRequestDto.getMiddleName(),
                addRequestDto.getType().toString(),
                addRequestDto.getTicketSerialNumber(),
                addRequestDto.getTicketNumber(),
                null,
                RequestStatus.PENDING.toString(),
                LocalDateTime.now()
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
                request.getResource(),
                request.getStatus(),
                request.getCreated()
        );
    }
}
