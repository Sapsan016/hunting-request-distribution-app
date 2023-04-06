CREATE TABLE IF NOT EXISTS resources
(
    resource_id     BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    region          VARCHAR(20)                             NOT NULL,
    resource_name   VARCHAR(20)                             NOT NULL,
    quantity        BIGINT                                  NOT NULL,
    resource_status VARCHAR(20)                             NOT NULL,
    start_date      TIMESTAMP WITHOUT TIME ZONE             NOT NULL,
    end_date        TIMESTAMP WITHOUT TIME ZONE             NOT NULL,
    resource_quote  BIGINT,
    CONSTRAINT pk_resources PRIMARY KEY (resource_id)
);

CREATE TABLE IF NOT EXISTS requests
(
    request_id            BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    requester_surname     VARCHAR(20)                             NOT NULL,
    requester_name        VARCHAR(20)                             NOT NULL,
    requester_middle_name VARCHAR(20)                             NOT NULL,
    request_type          VARCHAR(20)                             NOT NULL,
    ticket_serial_number  BIGINT                                  NOT NULL,
    ticket_number         BIGINT                                  NOT NULL,
    resource_id           BIGINT                                  NOT NULL,
    request_status        VARCHAR(20)                             NOT NULL,
    created               TIMESTAMP WITHOUT TIME ZONE             NOT NULL,
    CONSTRAINT pk_requests PRIMARY KEY (request_id),
    FOREIGN KEY (resource_id)
        REFERENCES resources (resource_id) ON DELETE CASCADE
);

