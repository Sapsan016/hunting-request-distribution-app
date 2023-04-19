package ru.gorbunov.dto;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;
import ru.gorbunov.model.Resource;

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

    String status;

    LocalDateTime created;
}
