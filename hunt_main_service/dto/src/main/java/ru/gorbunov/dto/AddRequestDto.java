package ru.gorbunov.dto;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;
import ru.gorbunov.model.RequestType;

import javax.validation.constraints.NotNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class AddRequestDto {

    @NotNull
    String surname;

    @NotNull
    String name;

    @NotNull
    String middleName;

    @NotNull
    RequestType type;

    @NotNull
    Long ticketSerialNumber;

    @NotNull
    Long ticketNumber;

    @NotNull
    Long resourceId;

    @NotNull
    Integer quantity;
}
