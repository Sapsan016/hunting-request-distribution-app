package ru.gorbunov.resources;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import ru.gorbunov.dto.mapper.ResourceMapper;
import ru.gorbunov.dto.model.AddResourceDto;
import ru.gorbunov.dto.model.ResourceDto;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/resources")
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class ResourceController {

    ResourceService service;

    RequestersDAO requestersDAO;

    public ResourceController(ResourceService service, RequestersDAO requestersDAO) {
        this.service = service;
        this.requestersDAO = requestersDAO;
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public ResourceDto addResource(@RequestBody @Valid AddResourceDto resourceDto) {
        log.info("ResourceController: Add resource: {}", resourceDto.toString());
        return ResourceMapper.toDto(service.addNewResource(resourceDto));
    }

    @GetMapping("/{resourceId}")
    public ResourceDto getResource(@PathVariable Long resourceId) {
        log.info("ResourceController: Get resource: {}", resourceId);
        return ResourceMapper.toDto(service.getResourceById(resourceId));
    }

    @GetMapping
    public List<ResourceDto> getResources(@RequestParam(required = false, defaultValue = "") Long[] ids,
                                  @RequestParam(defaultValue = "0") Integer from,
                                  @RequestParam(defaultValue = "10") Integer size) {
        log.info("ResourceController: Get resources with IDs : {}, skip: {}, list size: {}",
                Arrays.toString(ids), from, size);

        return service.getResources(ids, from, size)
                .stream()
                .map(ResourceMapper::toDto)
                .collect(Collectors.toList());
    }

    @PatchMapping("/{resourceId}")
    public ResourceDto updateResource(@RequestBody AddResourceDto addResourceDto,
                                      @PathVariable Long resourceId) {
        log.info("ResourceController: Update resource with ID = {}, new data: {}", resourceId, addResourceDto.toString());
        return ResourceMapper.toDto(service.updateResource(resourceId, addResourceDto));
    }

    @DeleteMapping("/{resourceId}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void removeResource(@PathVariable Long resourceId) {
        log.info("ResourceController: Remove resource with ID = {}", resourceId);
        service.removeResource(resourceId);
    }
    @PatchMapping("/check/{resourceId}")
    public ResourceDto updateCheckResource(@RequestBody ResourceDto resourceDto,
                                      @PathVariable Long resourceId) {
        log.info("ResourceController: Update checked resource with ID = {}, new data: {}",
                resourceId, resourceDto.toString());
        AddResourceDto addResourceDto = ResourceMapper.toAddDto(resourceDto);
        return ResourceMapper.toDto(service.updateResource(resourceId, addResourceDto));
    }

    @PostMapping("/requester/{resourceId}")
    public void addRequester(@PathVariable Long resourceId,
                             @RequestParam Long ticketSerialNumber,
                             @RequestParam Long ticketNumber) {
        log.info("ResourceController: Adding requester to resource with ID = {}", resourceId);
        requestersDAO.addNewRequester(resourceId, ticketSerialNumber, ticketNumber);

    }

}
