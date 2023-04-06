package ru.gorbunov.model.dto;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.experimental.FieldDefaults;
import ru.gorbunov.model.Resource;


@Data
@AllArgsConstructor
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
}
