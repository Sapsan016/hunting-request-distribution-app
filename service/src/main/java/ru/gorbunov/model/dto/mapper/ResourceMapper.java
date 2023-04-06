package ru.gorbunov.model.dto.mapper;

import ru.gorbunov.model.Resource;
import ru.gorbunov.model.dto.AddResourceDto;
import ru.gorbunov.model.dto.ResourceDto;

public class ResourceMapper {
    public static Resource toResource(AddResourceDto addResourceDto) {
        return new Resource(
                null,
                addResourceDto.getRegion(),
                addResourceDto.getName(),
                addResourceDto.getQuantity(),
                addResourceDto.getStatus(),
                addResourceDto.getStart(),
                addResourceDto.getEnd(),
                addResourceDto.getQuote()
        );
    }

    public static ResourceDto toDto(Resource resource) {
        return new ResourceDto(
                resource.getId(),
                resource.getRegion(),
                resource.getName(),
                resource.getQuantity(),
                resource.getStatus(),
                resource.getStart(),
                resource.getEnd(),
                resource.getQuote()
        );
    }
}


