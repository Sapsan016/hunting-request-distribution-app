package ru.gorbunov.requests;

import ru.gorbunov.dto.model.AddRequestDto;
import ru.gorbunov.dto.model.Request;
import ru.gorbunov.dto.model.RequestDto;

import java.util.List;

public interface RequestService {
    Request addNewRequest(AddRequestDto addRequestDto);

    Request getRequestById(Long requestId);

    List<Request> getRequests(Long[] ids, Integer from, Integer size, String status);

    Request updateRequest(Long requestId, AddRequestDto addRequestDto);

    void removeRequest(Long requestId);

    Request updateCheckedRequest(RequestDto requestDto);
}
