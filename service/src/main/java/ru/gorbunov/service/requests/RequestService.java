package ru.gorbunov.service.requests;

import ru.gorbunov.dto.AddRequestDto;
import ru.gorbunov.model.Request;

import java.util.List;

public interface RequestService {
    Request addNewRequest(AddRequestDto addRequestDto);

    Request getRequestById(Long requestId);

    List<Request> getRequests(Long[] ids, Integer from, Integer size, String status);

    Request updateRequest(Long requestId, AddRequestDto addRequestDto);

    void removeRequest(Long requestId);
}
