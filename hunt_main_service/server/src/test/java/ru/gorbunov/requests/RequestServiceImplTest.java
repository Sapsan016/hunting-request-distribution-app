package ru.gorbunov.requests;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;
import ru.gorbunov.dto.AddRequestDto;
import ru.gorbunov.exception.ObjectNotFoundException;
import ru.gorbunov.model.Request;
import ru.gorbunov.model.RequestStatus;
import ru.gorbunov.model.RequestType;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

@SpringBootTest
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
class RequestServiceImplTest {

    RequestServiceImpl requestService;

    JdbcTemplate jdbcTemplate;

    static String NAME = "John";
    static String SURNAME = "Doe";
    static String MIDDLENAME = "Michael";
    static Long TICKETSERIALNUMBER = 9999L;
    static Long TICKETNUMBER = 999999L;
    static Long RESOURCEID = 1L;
    static Integer  QUANTITY = 5;

    static Long[] IDS = {1L, 2L, 3L};

    static Long[] EMPTY = {};

    private AddRequestDto getRequestDto(String name, String surname, String middleName, RequestType type,
                                        Long ticketSerialNumber, Long ticketNumber, Long resourceId, Integer quantity) {
        return AddRequestDto.builder()
                .name(name)
                .surname(surname)
                .middleName(middleName)
                .type(type)
                .ticketSerialNumber(ticketSerialNumber)
                .ticketNumber(ticketNumber)
                .resourceId(resourceId)
                .quantity(quantity)
                .build();
    }


    @Test
    void testSaveAndGetRequestAndDelete() {
        AddRequestDto testRequestDto = getRequestDto(NAME, SURNAME, MIDDLENAME, RequestType.MASS, TICKETSERIALNUMBER,
                TICKETNUMBER, RESOURCEID, QUANTITY);
        Request savedRequest = requestService.addNewRequest(testRequestDto);
        assertEquals(112L, savedRequest.getId());
        assertEquals(testRequestDto.getName(), savedRequest.getName());
        assertEquals(testRequestDto.getTicketNumber(), savedRequest.getTicketNumber());
        requestService.removeRequest(savedRequest.getId());
        assertThrows(ObjectNotFoundException.class, () -> requestService.getRequestById(112L));
    }

    @Test
    void testUpdateRequest() {
        AddRequestDto testRequestDto = getRequestDto(null, null, null, RequestType.DRAW,
                null,null, null, null);
        Request requestToUpdate = requestService.getRequestById(1L);
        Request updatedRequest = requestService.updateRequest(1L, testRequestDto);
        assertEquals(RequestType.DRAW.toString(), updatedRequest.getType());
        assertEquals(requestToUpdate.getName(), updatedRequest.getName());
    }

    @Test
    void testUpdateFullRequest() {
        AddRequestDto testRequestDto = getRequestDto(NAME, SURNAME, MIDDLENAME, RequestType.MASS, TICKETSERIALNUMBER,
                TICKETNUMBER, RESOURCEID, QUANTITY);
        Request updatedRequest = requestService.updateRequest(1L, testRequestDto);
        assertEquals(NAME, updatedRequest.getName());
        assertEquals(SURNAME, updatedRequest.getSurname());
        assertEquals(MIDDLENAME, updatedRequest.getMiddleName());
        assertEquals(TICKETSERIALNUMBER, updatedRequest.getTicketSerialNumber());
        assertEquals(TICKETNUMBER, updatedRequest.getTicketNumber());
        assertEquals(RESOURCEID, updatedRequest.getResource().getId());
        assertEquals(QUANTITY, updatedRequest.getQuantity());
    }
    @Test
    void testGetPendingRequestsWithIds() {
        List<Request> requests = requestService.getRequests(IDS, 1, 1, String.valueOf(RequestStatus.PENDING));
        assertEquals(1, requests.size());
        assertEquals(2L, requests.get(0).getId());
    }


    @Test
    void testGetAllRequestsWithIds() {
        List<Request> requests = requestService.getRequests(IDS, 1, 1, "");
        assertEquals(1, requests.size());
        assertEquals(3L, requests.get(0).getId());
    }

    @Test
    void testGetPendingRequests() {
        List<Request> requests = requestService.getRequests(EMPTY, 0, 1, String.valueOf(RequestStatus.PENDING));
        assertEquals(1, requests.size());
        assertEquals(95L, requests.get(0).getId());
    }



    @Test
    void testGetRequests() {
        List<Request> requests = requestService.getRequests(EMPTY, 0, 2, "");
        assertEquals(2, requests.size());
        assertEquals(95L, requests.get(0).getId());
        System.out.println(requests.get(0).toString());
        assertEquals(47L, requests.get(1).getId());
        System.out.println(requests.get(1).toString());
    }

    @AfterEach
    void resetIds() {
        jdbcTemplate.update("ALTER TABLE requests ALTER COLUMN request_id RESTART WITH 112");
    }
}
