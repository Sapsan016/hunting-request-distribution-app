package ru.gorbunov.dto.mapper;

import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.model.Resource;
import ru.gorbunov.dto.ResourceDto;
import ru.gorbunov.model.ResourceStatus;

public class ResourceMapper {
    public static Resource toResource(AddResourceDto addResourceDto) {
        return new Resource(
                null,
                addResourceDto.getRegion(),
                addResourceDto.getName(),
                addResourceDto.getStatus().toString(),
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
                resource.getStatus(),
                resource.getStart(),
                resource.getEnd(),
                resource.getQuote()
        );
    }

    public static AddResourceDto toAddDto(ResourceDto resourceDto) {
        return new AddResourceDto(
                resourceDto.getRegion(),
                resourceDto.getName(),
                ResourceStatus.valueOf(resourceDto.getStatus()),
                resourceDto.getStart(),
                resourceDto.getEnd(),
                resourceDto.getQuote()
        );
    }


    public static Resource toResourceFromDto(ResourceDto resourceDto) {
        return new Resource(
                resourceDto.getId(),
                resourceDto.getRegion(),
                resourceDto.getName(),
                resourceDto.getStatus(),
                resourceDto.getStart(),
                resourceDto.getEnd(),
                resourceDto.getQuote()
        );
    }
}


