package ru.gorbunov.model;

import lombok.*;
import lombok.experimental.FieldDefaults;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@Entity
@Table(name = "requests")
public class Request {

    @Id
    @Column(name = "request_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @Column(name = "requester_surname")
    String surname;

    @Column(name = "requester_name")
    String name;

    @Column(name = "requester_middle_name")
    String middleName;

    @Column(name = "request_type")
    String type;

    @Column(name = "ticket_serial_number")
    Long ticketSerialNumber;

    @Column(name = "ticket_number")
    Long ticketNumber;

    @JoinColumn(name = "resource_id")
    @ManyToOne
    Resource resource;

    int quantity;

    @Column(name = "request_status")
    String status;

    LocalDateTime created;

    @Override
    public String toString() {
        return "Request{" +
                "created=" + created +
                '}';
    }
}
