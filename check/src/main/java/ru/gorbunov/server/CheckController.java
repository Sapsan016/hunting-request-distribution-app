package ru.gorbunov.server;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import ru.gorbunov.client.CheckClient;
import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.dto.ResourceDto;

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
    public RequestDto startChecks() {
        log.info("CheckController: Starting checks");
        List<RequestDto> requestDtoList = client.getRequest().collectList().block();
        RequestDto request = requestDtoList.get(0);
        ResourceDto resource = client.getResource(request.getResource().getId());
        log.info("CheckController: Request to check request: {} to resource: {}", request, resource);
      return service.checkRequest(request, resource);

    }
}
