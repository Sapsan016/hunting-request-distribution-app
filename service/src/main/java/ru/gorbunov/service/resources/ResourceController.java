package ru.gorbunov.service.resources;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.dto.ResourceDto;
import ru.gorbunov.dto.mapper.ResourceMapper;

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

    public ResourceController(ResourceService service) {
        this.service = service;
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
    public List<ResourceDto> getUsers(@RequestParam(required = false, defaultValue = "") Long[] ids,
                                  @RequestParam(defaultValue = "0") Integer from,
                                  @RequestParam(defaultValue = "10") Integer size,
                                  @RequestParam(defaultValue = "") String status) {
        log.info("ResourceController: Get resources with IDs : {}, skip: {}, list size: {}, status: {}",
                Arrays.toString(ids), from, size, status);

        return service.getResources(ids, from, size, status)
                .stream()
                .map(ResourceMapper::toDto)
                .collect(Collectors.toList());
    }

    @PatchMapping("/{resourceId}")
    public ResourceDto updateResource(@RequestBody AddResourceDto addResourceDto,
                                      @PathVariable Long resourceId) {
        log.info("ResourceController: Update with ID = {}, new data: {}", resourceId, addResourceDto.toString());
        return ResourceMapper.toDto(service.updateResource(resourceId, addResourceDto));
    }

    @DeleteMapping("/{resourceId}")
    public void removeResource(@PathVariable Long resourceId) {
        log.info("ResourceController: Remove resource with ID = {}", resourceId);
        service.removeResource(resourceId);
    }




}
