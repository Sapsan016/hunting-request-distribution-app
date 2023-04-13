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

       requestDtoList.forEach(System.out::println);



        return requestDtoList;
    }
}
