package ru.gorbunov.model;

import lombok.*;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;
import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@Entity
@Table(name = "resources")
public class Resource {

    @Id
    @Column(name = "resource_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    String region;

    @Column(name = "resource_name")
    String name;

    Long quantity;

    @Column(name = "resource_status")
    String status;

    @Column(name = "start_date")
    LocalDate start;

    @Column(name = "end_date")
    LocalDate end;

    @Column(name = "resource_quote")
    Long quote;


}
