package ru.gorbunov.server;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import ru.gorbunov.dto.AddRequestDto;
import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.dto.mapper.RequestMapper;

import java.util.List;

@RestController
@RequestMapping("/check")
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class CheckController {

    CheckService service;

    public CheckController(CheckService checkService) {
        this.service = checkService;
    }



    @PatchMapping()
    public List<RequestDto> checkRequests(@RequestBody List<RequestDto> requestDtoList) {
        log.info("CheckController: Request to check requests with IDs = {} ", requestDtoList.toString());
        return service.checkRequests(requestDtoList);
    }



}
