package backend.models.gym;

public enum ExerciseMachineStatus {
    AVAILABLE("Disponible"),
    IN_USE("En uso"),
    UNDER_MAINTENANCE("Mantenimiento"),
    RESERVED("Reservado");

    private final String equipmentStatus;

    ExerciseMachineStatus(String equipmentStatus) {
        this.equipmentStatus = equipmentStatus;
    }

    @Override
    public String toString() {
        return equipmentStatus;
    }
}
