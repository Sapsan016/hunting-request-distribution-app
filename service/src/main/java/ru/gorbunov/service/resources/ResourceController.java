package ru.gorbunov.service.resources;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.dto.ResourceDto;
import ru.gorbunov.dto.mapper.ResourceMapper;

import javax.validation.Valid;

@RestController
@RequestMapping("/resources")
@Slf4j
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class ResourceController {

    ResourceService service;

    public ResourceController(ResourceService service) {
        this.service = service;
    }

    @PostMapping()
    @ResponseStatus(HttpStatus.CREATED)
    public ResourceDto addResource(@RequestBody @Valid AddResourceDto resourceDto) {
        log.info("ResourceController: Add resource: {}", resourceDto.toString());
        return ResourceMapper.toDto(service.addNewResource(resourceDto));
    }



}
