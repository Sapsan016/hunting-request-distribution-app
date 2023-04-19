package ru.gorbunov.server;

import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class RequestersDAO {
    private final JdbcTemplate jdbcTemplate;
}