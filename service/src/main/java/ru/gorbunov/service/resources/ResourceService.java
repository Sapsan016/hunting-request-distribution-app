package ru.gorbunov.service.resources;

import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.model.Resource;

public interface ResourceService {
    Resource addNewResource(AddResourceDto resourceDto);
}
