package ru.gorbunov.dto.model;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

import java.time.LocalDateTime;


@Data
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class RequestDto {

    Long id;

    String surname;

    String name;

    String middleName;

    String type;

    Long ticketSerialNumber;

    Long ticketNumber;

    Resource resource;

    int quantity;

    String status;

    LocalDateTime created;
}
