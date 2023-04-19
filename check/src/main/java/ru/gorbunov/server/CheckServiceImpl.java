package ru.gorbunov.server;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.dto.ResourceDto;

import java.util.List;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class CheckServiceImpl implements CheckService {
    @Override
    public List<RequestDto> checkRequests(List<RequestDto> requestDtoList) {
        log.info("CheckService: Checking requests with IDs = {} ", requestDtoList.toString());
     //  requestDtoList.forEach(System.out::println);



        return requestDtoList;
    }

    @Override
    public RequestDto checkRequest(RequestDto request, ResourceDto resource) {

        log.info("CheckService: Checking request with ID = {} to resource with Id = {}", request.getId(),
                resource.getId());

        return request;
    }
}
