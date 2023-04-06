package ru.gorbunov.model.dto;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;
import ru.gorbunov.model.Resource;

import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
    String type;

    @NotNull
    Long ticketSerialNumber;

    @NotNull
    Long ticketNumber;

    @NotNull
    Long resourceId;
}
