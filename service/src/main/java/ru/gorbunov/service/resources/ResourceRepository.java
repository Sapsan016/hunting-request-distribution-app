package ru.gorbunov.service.resources;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.gorbunov.model.Resource;

public interface ResourceRepository extends JpaRepository<Resource, Long> {
}
