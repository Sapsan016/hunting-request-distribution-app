package ru.gorbunov.resources;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
@Slf4j
public class RequestersDAO {
    private final JdbcTemplate jdbcTemplate;

    public void addNewRequester(Long resource_id, Long ticket_serial_number, Long ticket_number) {
        String sqlQuery = "insert into resource_requesters (resource_id, ticket_serial_number, ticket_number) " +
                "values (?, ?, ?)";
        jdbcTemplate.update(sqlQuery, resource_id, ticket_serial_number, ticket_number);
        log.info("Ticket Serial number: {} and ticket number: {} connected with resourceId: {}",
                ticket_serial_number, ticket_number, resource_id);
    }

}