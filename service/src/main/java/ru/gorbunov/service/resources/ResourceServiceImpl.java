package ru.gorbunov.service.resources;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.dto.mapper.ResourceMapper;
import ru.gorbunov.model.Resource;

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
}
