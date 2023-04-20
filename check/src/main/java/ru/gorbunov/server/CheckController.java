package ru.gorbunov.server;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.experimental.NonFinal;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import ru.gorbunov.client.CheckClient;
import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.dto.ResourceDto;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/check")
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class CheckController {

    CheckService service;

    CheckClient client;

    @NonFinal
    boolean checkInProgress = true;

    @NonFinal
    List<RequestDto> checkedRequests = new ArrayList<>();

    public CheckController(CheckService checkService, CheckClient client) {
        this.service = checkService;
        this.client = client;
    }

    @GetMapping("/start")
    public List<RequestDto> startChecks() {
        log.info("CheckController: Starting checks");
        checkInProgress = true;
        while (checkInProgress) {
            List<RequestDto> requestDtoList = client.getRequest().collectList().block();
            if (requestDtoList != null) {
                RequestDto request = requestDtoList.get(0);
                ResourceDto resource = client.getResource(request.getResource().getId());
                log.info("CheckController: Request to check request: {} to resource: {}", request, resource);
                service.checkRequest(request, resource);
                checkedRequests.add(request);
            }
        }
        return checkedRequests;
    }


    @GetMapping("/stop")
    public List<RequestDto> stopChecks() {
        log.info("CheckController: Stopping checks");
        checkInProgress = false;
        return checkedRequests;
    }
}
