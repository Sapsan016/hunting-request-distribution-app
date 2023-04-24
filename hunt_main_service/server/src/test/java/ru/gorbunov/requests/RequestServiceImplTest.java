package ru.gorbunov.requests;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;

@SpringBootTest
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
class RequestServiceImplTest {

    RequestServiceImpl requestService;

    JdbcTemplate jdbcTemplate;

    @Test
    void addNewRequest() {
    }

    @Test
    void getRequestById() {
    }

    @Test
    void getRequests() {
    }

    @Test
    void updateRequest() {
    }

    @Test
    void removeRequest() {
    }

    @Test
    void updateCheckedRequest() {
    }

    @AfterEach
    void resetIds() {
        jdbcTemplate.update("ALTER TABLE requests ALTER COLUMN resource_id RESTART WITH 112");
    }
}
