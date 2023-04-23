package ru.gorbunov.resources;

import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.model.Resource;

import java.util.List;

public interface ResourceService {
    Resource addNewResource(AddResourceDto resourceDto);

    Resource getResourceById(Long resourceId);

    List<Resource> getResources(Long[] ids, Integer from, Integer size);

    Resource updateResource(Long resourceId, AddResourceDto addResourceDto);

    void removeResource(Long resourceId);

}
