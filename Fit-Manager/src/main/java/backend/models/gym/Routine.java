package backend.models.gym;

import backend.models.users.Trainer;

import java.util.Date;
import java.util.List;

public class Routine {
    private String id;
    private String name;
    private Date startDate;
    private Trainer trainer;
    private List<Exercise> exercisesList;
}
