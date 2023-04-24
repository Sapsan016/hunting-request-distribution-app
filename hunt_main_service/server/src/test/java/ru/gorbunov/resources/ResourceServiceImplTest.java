package ru.gorbunov.resources;


import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;
import ru.gorbunov.dto.AddResourceDto;
import ru.gorbunov.exception.ObjectNotFoundException;
import ru.gorbunov.model.Resource;

import java.time.LocalDate;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
class ResourceServiceImplTest {

    ResourceServiceImpl resourceService;

    static String REGION = "Moscow";

    static String NAME = "Gray hare";

    static LocalDate START = LocalDate.now().plusDays(1);

    static LocalDate END = LocalDate.now().plusMonths(3);

    static Integer QUOTE = 100;

    static Long[] IDS = {1L, 2L, 3L};

    static Long[] EMPTY = {};

    JdbcTemplate jdbcTemplate;


    private AddResourceDto getResourceDto(String region, String name, LocalDate start, LocalDate end, Integer quote) {
        return AddResourceDto.builder()
                .region(region)
                .name(name)
                .start(start)
                .end(end)
                .quote(quote)
                .build();
    }

    @Test
    void testSaveAndGetResourceAndDelete() {
        AddResourceDto testResourceDto = getResourceDto(REGION, NAME, START, END, QUOTE);
        Resource savedResource = resourceService.addNewResource(testResourceDto);
        assertEquals(21L, savedResource.getId());
        assertEquals(testResourceDto.getRegion(), savedResource.getRegion());
        assertEquals(testResourceDto.getName(), savedResource.getName());
        resourceService.removeResource(savedResource.getId());
        assertThrows(ObjectNotFoundException.class, () -> resourceService.getResourceById(21L));
    }


    @Test
    void testUpdateResource() {
        AddResourceDto testResourceDto = getResourceDto(null, null, null, null, QUOTE);
        Resource resourceToUpdate = resourceService.getResourceById(20L);
        Resource updatedResource = resourceService.updateResource(20L, testResourceDto);
        assertEquals(100, updatedResource.getQuote());
        assertEquals(resourceToUpdate.getName(), resourceToUpdate.getName());
    }

    @Test
    void testUpdateFullResource() {
        AddResourceDto testResourceDto = getResourceDto(REGION, NAME, START, END, QUOTE);
        Resource updatedResource = resourceService.updateResource(20L, testResourceDto);
        assertEquals(REGION, updatedResource.getRegion());
        assertEquals(NAME, updatedResource.getName());
        assertEquals(START, updatedResource.getStart());
        assertEquals(END, updatedResource.getEnd());
    }

    @Test
    void testGetResourcesWithIds() {
        List<Resource> resources = resourceService.getResources(IDS, 1, 1);
        assertEquals(1, resources.size());
        assertEquals(2L, resources.get(0).getId());
    }

    @Test
    void testGetResources() {
        List<Resource> resources = resourceService.getResources(EMPTY, 0, 2);
        assertEquals(2, resources.size());
        assertEquals(1L, resources.get(0).getId());
        assertEquals(2L, resources.get(1).getId());
    }

    @AfterEach
    void resetIds() {
        jdbcTemplate.update("ALTER TABLE resources ALTER COLUMN resource_id RESTART WITH 21");
    }
}