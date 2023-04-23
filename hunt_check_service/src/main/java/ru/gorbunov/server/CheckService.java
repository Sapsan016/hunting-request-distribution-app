package ru.gorbunov.server;

import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.dto.ResourceDto;


public interface CheckService {

    RequestDto checkRequest(RequestDto requestDto, ResourceDto resource);
}
