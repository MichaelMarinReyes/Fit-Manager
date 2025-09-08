package backend.models.gym;

public enum MembershipType {
    BASIC("Básico"),
    PREMIUM("Premium"),
    VIP("Vip");

    private final String membershipType;

    @Override
    public String toString() {
        return membershipType;
    }

    MembershipType(String membershipType) {
        this.membershipType = membershipType;


    }
}
