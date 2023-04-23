package ru.gorbunov.resources;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.gorbunov.mapper.ResourceMapper;
import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.model.Resource;
import ru.gorbunov.exception.ObjectNotFoundException;

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
    public List<Resource> getResources(Long[] ids, Integer from, Integer size) {
        if (ids.length == 0) {
            log.info("Looking for all resources, skip: {}, size: {}", from, size);
            return resourceRepository.getAllResourcesFromSize(from, size);
            }

            log.info("Looking for resources with Ids: {}, skip: {}, size: {}", Arrays.toString(ids), from, size);
            return Arrays.stream(ids).map(this::getResourceById)
                    .skip(from)
                    .limit(size)
                    .collect(Collectors.toList());
        }

    @Override
    public Resource updateResource(Long resourceId, AddResourceDto addResourceDto) {
        Resource resourceToUpdate = getResourceById(resourceId);
        checkUpdate(resourceToUpdate, addResourceDto);
        resourceRepository.save(resourceToUpdate);
        log.info("Updated resource ID = {}", resourceId);
        return resourceToUpdate;
    }

    @Override
    public void removeResource(Long resourceId) {
        Resource resourceToRemove = getResourceById(resourceId);
        resourceRepository.delete(resourceToRemove);
        log.info("Removed resource ID = {}", resourceId);
    }

    private void checkUpdate(Resource resourceToUpdate, AddResourceDto addResourceDto) {
        if (addResourceDto.getRegion() != null)
            resourceToUpdate.setRegion(addResourceDto.getRegion());
        if (addResourceDto.getName() != null)
            resourceToUpdate.setName(addResourceDto.getName());
        if (addResourceDto.getStart() != null)
            resourceToUpdate.setStart(addResourceDto.getStart());
        if (addResourceDto.getEnd() != null)
            resourceToUpdate.setEnd(addResourceDto.getEnd());
        if (addResourceDto.getQuote() != null)
            resourceToUpdate.setQuote(addResourceDto.getQuote());
    }
}
