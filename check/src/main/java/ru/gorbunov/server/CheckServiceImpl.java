package ru.gorbunov.server;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.gorbunov.dto.RequestDto;

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
    public RequestDto checkRequest(RequestDto requestDto) {

        log.info("CheckService: Checking requests with IDs = {} ", requestDto.getId());

        return requestDto;
    }
}
