package backend.models.gym;

import backend.models.users.Client;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.UUID;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Attendance {
    private UUID id;
    private Client client;
    private Branch gymBranch;
    private Date checkinDateTime;
}