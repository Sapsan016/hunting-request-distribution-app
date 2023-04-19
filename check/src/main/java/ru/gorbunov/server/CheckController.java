package ru.gorbunov.server;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Mono;
import ru.gorbunov.client.CheckClient;
import ru.gorbunov.dto.RequestDto;

import java.util.List;

@RestController
@RequestMapping("/check")
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class CheckController {

    CheckService service;

    CheckClient client;

    public CheckController(CheckService checkService, CheckClient client) {
        this.service = checkService;
        this.client = client;
    }

    @GetMapping("/start")
    public void startChecks() {
        log.info("CheckController: Starting checks");
       check(client.getRequest());

    }

//    @PatchMapping()
//    public List<RequestDto> checkRequests(@RequestBody List<RequestDto> requestDtoList) {
//        log.info("CheckController: Request to check requests with IDs = {} ", requestDtoList.toString());
//        return service.checkRequests(requestDtoList);
//    }

    @PatchMapping
    public RequestDto check(@RequestBody RequestDto requestDtoMono) {
        log.info("CheckController: Request to check request: {} ", requestDtoMono.toString());
        return service.checkRequest(requestDtoMono);
    }



}
