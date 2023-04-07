package ru.gorbunov.dto;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.experimental.FieldDefaults;
import ru.gorbunov.model.ResourceStatus;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ResourceDto {
    Long id;

    String region;

    String name;

    Long quantity;

    String status;

    LocalDate start;

    LocalDate end;

    Long quote;

}
