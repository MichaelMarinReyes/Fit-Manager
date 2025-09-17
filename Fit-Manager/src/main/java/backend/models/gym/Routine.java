package backend.models.gym;

import backend.models.users.Trainer;

import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

public class Routine {
    private UUID id;
    private String name;
    private int series;
    private int repetitions;
    private Date duration;
    private ArrayList<Equipment> requiredEquipments;
    private Date startDate;
    private Trainer creatorTrainer;
    private ArrayList<Exercise> exercises;
}
