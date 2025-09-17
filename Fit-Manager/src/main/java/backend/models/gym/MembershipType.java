package backend.models.gym;

public enum MembershipType {
    BASIC("Básico"),
    PREMIUM("Premium"),
    VIP("VIP");

    private final String membershipType;

    MembershipType(String membershipType) {
        this.membershipType = membershipType;
    }

    @Override
    public String toString() {
        return membershipType;
    }

    public static MembershipType fromName(String name) {
        for (MembershipType type : MembershipType.values()) {
            if (type.membershipType.equalsIgnoreCase(name)) {
                return type;
            }
        }
        throw new IllegalArgumentException("Tipo de membresía desconocido: " + name);
    }
}