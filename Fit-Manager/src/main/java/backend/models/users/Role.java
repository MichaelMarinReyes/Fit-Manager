package backend.models.users;

public enum Role {
    RECEPTIONIST("Recepcionista"),
    TRAINER("Entrenador"),
    INVENTORY("Administrador de inventario"),
    ADMIN("Administrador");


    private final String role;

    Role(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return role;
    }
}
