package ru.gorbunov.dto;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class AddResourceDto {

    @NotNull
    String region;

    @NotNull
    String name;

    @NotNull
    Long quantity;

    @NotNull
    LocalDate start;

    @NotNull
    LocalDate end;

    @NotNull
    Long quote;
}
