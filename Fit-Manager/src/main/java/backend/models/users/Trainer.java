package backend.models.users;

import backend.models.gym.Routine;

import java.util.List;

public class Trainer extends Employee {
    private List<Client> clients;
    private List<Routine> routines;
}
