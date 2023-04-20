package ru.gorbunov.service.resources;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ru.gorbunov.model.Resource;

import java.util.List;

public interface ResourceRepository extends JpaRepository<Resource, Long> {

    @Query(value = "SELECT * FROM resources offset ? LIMIT ?", nativeQuery = true)
    List<Resource> getAllResourcesFromSize(Integer from, Integer size);
}
