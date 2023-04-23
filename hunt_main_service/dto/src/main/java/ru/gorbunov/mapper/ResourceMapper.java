package ru.gorbunov.mapper;

import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.model.Resource;
import ru.gorbunov.dto.ResourceDto;

public class ResourceMapper {
    public static Resource toResource(AddResourceDto addResourceDto) {
        return new Resource(
                null,
                addResourceDto.getRegion(),
                addResourceDto.getName(),
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
                resource.getStart(),
                resource.getEnd(),
                resource.getQuote()
        );
    }

    public static AddResourceDto toAddDto(ResourceDto resourceDto) {
        return new AddResourceDto(
                resourceDto.getRegion(),
                resourceDto.getName(),
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
                resourceDto.getStart(),
                resourceDto.getEnd(),
                resourceDto.getQuote()
        );
    }
}


