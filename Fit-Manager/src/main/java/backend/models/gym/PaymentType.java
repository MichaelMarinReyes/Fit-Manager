package backend.models.gym;

public enum PaymentType {
    SERVICE_BASIC("Servicio básico"),
    ADDITIONAL("Adicional");

    private final String paymentType;

    PaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    @Override
    public String toString() {
        return paymentType;
    }
}
