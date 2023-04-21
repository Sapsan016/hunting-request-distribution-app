package ru.gorbunov.service.requests;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import ru.gorbunov.dto.AddRequestDto;
import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.dto.mapper.RequestMapper;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/requests")
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class RequestController {

    RequestService service;

    public RequestController(RequestService service) {
        this.service = service;
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public RequestDto addRequest(@RequestBody @Valid AddRequestDto addRequestDto) {
        log.info("RequestController: Add resource: {}", addRequestDto.toString());
        return RequestMapper.toDto(service.addNewRequest(addRequestDto));
    }

    @GetMapping("/{requestId}")
    public RequestDto getRequest(@PathVariable Long requestId) {
        log.info("RequestController: Get request: {}", requestId);
        return RequestMapper.toDto(service.getRequestById(requestId));
    }

    @GetMapping
    public List<RequestDto> getRequests(@RequestParam(required = false, defaultValue = "") Long[] ids,
                                        @RequestParam(defaultValue = "0") Integer from,
                                        @RequestParam(defaultValue = "10") Integer size,
                                        @RequestParam(defaultValue = "") String status) {
        log.info("RequestController: Get requests with IDs : {}, skip: {}, list size: {}, status: {}",
                Arrays.toString(ids), from, size, status);

        return service.getRequests(ids, from, size, status)
                .stream()
                .map(RequestMapper::toDto)
                .collect(Collectors.toList());
    }

    @PatchMapping("/{requestId}")
    public RequestDto updateRequest(@RequestBody AddRequestDto addRequestDto,
                                    @PathVariable Long requestId) {
        log.info("ResourceController: Update request with ID = {}, new data: {}", requestId, addRequestDto.toString());
        return RequestMapper.toDto(service.updateRequest(requestId, addRequestDto));
    }

    @DeleteMapping("/{requestId}")
    @ResponseStatus(HttpStatus.CREATED)
    public void removeResource(@PathVariable Long requestId) {
        log.info("RequestController: Remove request with ID = {}", requestId);
        service.removeRequest(requestId);
    }

    @PatchMapping("/check")
    public RequestDto updateCheckRequest(@RequestBody RequestDto requestDto) {
        log.info("RequestController: Update request with ID = {}, new data: {}", requestDto.getId(), requestDto);
        return RequestMapper.toDto(service.updateCheckedRequest(requestDto));
    }

}
