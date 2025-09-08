package backend.models.gym;

import java.util.List;

public class Exercise {
    private String id;
    private String nameExercise;
    private int series;
    private int repetitions;
    private int estimatedDuration;
    private List<Equipment> requiredEquipments;
}
