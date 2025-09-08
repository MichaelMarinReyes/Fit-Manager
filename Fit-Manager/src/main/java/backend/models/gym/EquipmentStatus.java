package backend.models.gym;

public enum EquipmentStatus {
    AVAILABLE("Disponible"),
    IN_USE("En uso"),
    UNDER_MAINTENANCE("Mantenimiento"),
    RESERVED("Reservado");

    private final String equipmentStatus;

    EquipmentStatus(String equipmentStatus) {
        this.equipmentStatus = equipmentStatus;
    }

    @Override
    public String toString() {
        return equipmentStatus;
    }
}
