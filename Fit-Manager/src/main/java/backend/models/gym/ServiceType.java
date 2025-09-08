package backend.models.gym;

public enum ServiceType {
    CLASS("Clase"),
    PERSONAL("Personal"),
    OTHER("Otro");

    private final String serviceType;

    ServiceType(String serviceType) {
        this.serviceType = serviceType;
    }

    @Override
    public String toString() {
        return serviceType;
    }
}
