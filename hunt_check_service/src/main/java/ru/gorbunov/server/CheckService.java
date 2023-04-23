package ru.gorbunov.server;

import ru.gorbunov.dto.model.RequestDto;
import ru.gorbunov.dto.model.ResourceDto;


public interface CheckService {

    RequestDto checkRequest(RequestDto requestDto, ResourceDto resource);
}
