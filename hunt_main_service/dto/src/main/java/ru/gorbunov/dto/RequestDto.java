package ru.gorbunov.dto;

import lombok.*;
import lombok.experimental.FieldDefaults;
import ru.gorbunov.model.Resource;

import java.time.LocalDateTime;


@Data
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@Builder
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
