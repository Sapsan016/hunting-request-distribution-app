package ru.gorbunov.service.resources;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.dto.mapper.ResourceMapper;
import ru.gorbunov.model.Resource;
import ru.gorbunov.service.exception.ObjectNotFoundException;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class ResourceServiceImpl implements ResourceService {

    ResourceRepository resourceRepository;

    public ResourceServiceImpl(ResourceRepository resourceRepository) {
        this.resourceRepository = resourceRepository;
    }

    @Override
    public Resource addNewResource(AddResourceDto resourceDto) {
        Resource resource = ResourceMapper.toResource(resourceDto);
        resourceRepository.save(resource);
        log.info("Added resource ID = {}", resource.getId());
        return resource;
    }

    @Override
    public Resource getResourceById(Long resourceId) {


        return resourceRepository.findById(resourceId).orElseThrow(() ->
                new ObjectNotFoundException(String.format("Resource with ID=%s was not found", resourceId)));
    }

    @Override
    public List<Resource> getResources(Long[] ids, Integer from, Integer size, String status) {
        if (ids.length == 0) {
            if (status.equals("OPEN")) {
                log.info("Looking for all resources with status: {}, skip: {}, size: {}", status, from, size);
                return resourceRepository.getAllResourcesWithStatusFromSize(status, from, size);
            }
            if (status.equals("CLOSED")) {
                log.info("Looking for all resources with status: {}, skip: {}, size: {}", status, from, size);
                return resourceRepository.getAllResourcesWithStatusFromSize(status, from, size);
            }
            log.info("Looking for all resources, skip: {}, size: {}", from, size);
            return resourceRepository.getAllResourcesFromSize(from, size);
        }
        if (status.isBlank()) {
            return Arrays.stream(ids).map(this::getResourceById)
                    .skip(from)
                    .limit(size)
                    .collect(Collectors.toList());
        }
        return Arrays.stream(ids).map(this::getResourceById)
                .filter(resource -> resource.getStatus().equals(status))
                .skip(from)
                .limit(size)
                .collect(Collectors.toList());
    }
}
