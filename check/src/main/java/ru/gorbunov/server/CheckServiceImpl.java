package ru.gorbunov.server;

import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.gorbunov.client.CheckClient;
import ru.gorbunov.dto.RequestDto;
import ru.gorbunov.dto.ResourceDto;
import ru.gorbunov.dto.mapper.ResourceMapper;
import ru.gorbunov.model.RequestStatus;


@Service
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class CheckServiceImpl implements CheckService {

    CheckClient client;

    public CheckServiceImpl(CheckClient client) {
        this.client = client;
    }


    @Override
    public RequestDto checkRequest(RequestDto request, ResourceDto resource) {
        log.info("CheckService: Checking request with ID = {} to resource with Id = {}", request.getId(),
                resource.getId());
        if (request.getQuantity() <= resource.getQuote() &&
                request.getCreated().isAfter(resource.getStart().atStartOfDay()) &&
                request.getCreated().isBefore(resource.getEnd().atStartOfDay())) {

            try {
                client.addRequester(resource.getId(), request.getTicketSerialNumber(), request.getTicketNumber());
            } catch (IllegalStateException e) {
                e.printStackTrace();
                request.setStatus(String.valueOf(RequestStatus.DECLINED));
                client.updateRequest(request);
                log.info("CheckService: Request with ID = {} declined", request.getId());
                return request;
            }

            request.setStatus(String.valueOf(RequestStatus.ACCEPTED));
            resource.setQuote(resource.getQuote() - request.getQuantity());
            client.updateResource(resource);
            log.info("CheckService: Resource with ID = {} granted", resource.getId());
            request.setResource(ResourceMapper.toResourceFromDto(resource));
            client.updateRequest(request);
            log.info("CheckService: Request with ID = {} accepted", request.getId());

            return request;
        }
        request.setStatus(String.valueOf(RequestStatus.DECLINED));
        client.updateRequest(request);
        log.info("CheckService: Request with ID = {} declined", request.getId());
        return request;
    }


}
