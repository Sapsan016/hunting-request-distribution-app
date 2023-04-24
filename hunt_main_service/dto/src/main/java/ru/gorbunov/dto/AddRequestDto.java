package ru.gorbunov.dto;

import lombok.*;
import lombok.experimental.FieldDefaults;
import ru.gorbunov.model.RequestType;

import javax.validation.constraints.NotNull;

@Data
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@Builder
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
