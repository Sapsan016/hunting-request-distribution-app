package ru.gorbunov.service.requests;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.gorbunov.dto.AddRequestDto;
import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.dto.mapper.RequestMapper;
import ru.gorbunov.model.Request;
import ru.gorbunov.model.Resource;
import ru.gorbunov.service.exception.ObjectNotFoundException;
import ru.gorbunov.service.resources.ResourceService;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class RequestServiceImpl implements RequestService {

    RequestRepository requestRepository;

    ResourceService resourceService;

    public RequestServiceImpl(RequestRepository requestRepository, ResourceService resourceService) {
        this.requestRepository = requestRepository;
        this.resourceService = resourceService;
    }

    @Override
    public Request addNewRequest(AddRequestDto addRequestDto) {
        Request requestToAdd = RequestMapper.toRequest(addRequestDto);
        Resource resource = resourceService.getResourceById(addRequestDto.getResourceId());
        requestToAdd.setResource(resource);
        requestRepository.save(requestToAdd);
        log.info("Added request with ID = {}", requestToAdd.getId());
        return requestToAdd;
    }

    @Override
    public Request getRequestById(Long requestId) {
        return requestRepository.findById(requestId).orElseThrow(() ->
                new ObjectNotFoundException(String.format("Request with ID=%s was not found", requestId)));
    }

    @Override
    public List<Request> getRequests(Long[] ids, Integer from, Integer size, String status) {
        if (ids.length == 0) {
            if (!status.isBlank()) {
                log.info("Looking for all requests with status: {}, skip: {}, size: {}", status, from, size);
                return requestRepository.getAllRequestsWithStatusFromSize(status, from, size);
            }
            log.info("Looking for all requests, skip: {}, size: {}", from, size);
            return requestRepository.getAllRequestsFromSize(from, size);
        }
        if (status.isBlank()) {
            log.info("Looking for requests with Ids: {}, skip: {}, size: {}", Arrays.toString(ids), from, size);
            return Arrays.stream(ids).map(this::getRequestById)
                    .skip(from)
                    .limit(size)
                    .collect(Collectors.toList());
        }
        log.info("Looking for requests with Ids: {}, status: {}, skip: {}, size: {}", Arrays.toString(ids),
                status, from, size);
        return Arrays.stream(ids).map(this::getRequestById)
                .filter(request -> request.getStatus().equals(status))
                .skip(from)
                .limit(size)
                .collect(Collectors.toList());
    }

    @Override
    public Request updateRequest(Long requestId, AddRequestDto addRequestDto) {
        Request requestToUpdate = getRequestById(requestId);
        checkUpdate(requestToUpdate, addRequestDto);
        requestRepository.save(requestToUpdate);
        log.info("Updated request with ID = {}", requestId);
        return requestToUpdate;
    }

    @Override
    public void removeRequest(Long requestId) {
        Request requestToRemove = getRequestById(requestId);
        requestRepository.delete(requestToRemove);
        log.info("Removed request with ID = {}", requestId);
    }

    @Override
    public Request updateCheckedRequest(RequestDto requestDto) {
        Request requestToUpdate = getRequestById(requestDto.getId());
        requestToUpdate.setStatus(requestDto.getStatus());
        requestRepository.save(requestToUpdate);
        log.info("Updated request with ID = {}", requestDto.getId());
        return requestToUpdate;
    }

    private void checkUpdate(Request requestToUpdate, AddRequestDto addRequestDto) {
        if (addRequestDto.getSurname() != null)
            requestToUpdate.setSurname(addRequestDto.getSurname());
        if (addRequestDto.getName() != null)
            requestToUpdate.setName(addRequestDto.getName());
        if (addRequestDto.getMiddleName() != null)
            requestToUpdate.setMiddleName(addRequestDto.getMiddleName());
        if (addRequestDto.getType() != null)
            requestToUpdate.setType(requestToUpdate.getType());
        if (addRequestDto.getTicketSerialNumber() != null)
            requestToUpdate.setTicketSerialNumber(addRequestDto.getTicketSerialNumber());
        if (addRequestDto.getTicketNumber() != null)
            requestToUpdate.setTicketNumber(addRequestDto.getTicketNumber());
        if (addRequestDto.getQuantity() != null)
            requestToUpdate.setQuantity(addRequestDto.getQuantity());
    }

}
