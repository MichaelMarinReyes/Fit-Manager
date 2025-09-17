package backend.models.gym;

import backend.models.users.Client;

import java.util.Date;
import java.util.UUID;

public class Attendance {
    private UUID id;
    private Client client;
    private Branch gymBranch;
    private Date checkinDateTime;
}