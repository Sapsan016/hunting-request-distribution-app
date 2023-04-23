package ru.gorbunov.requests;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ru.gorbunov.dto.model.Request;

import java.util.List;

public interface RequestRepository extends JpaRepository<Request, Long> {
    @Query(value = "SELECT * FROM requests WHERE request_status = ? ORDER BY created " +
            "offset ? LIMIT ?", nativeQuery = true)
    List<Request> getAllRequestsWithStatusFromSize(String status, Integer from, Integer size);


    @Query(value = "SELECT * FROM requests offset ? LIMIT ?", nativeQuery = true)
    List<Request> getAllRequestsFromSize(Integer from, Integer size);
}
