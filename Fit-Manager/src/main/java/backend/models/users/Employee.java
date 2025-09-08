package backend.models.users;

public abstract class Employee extends User {
    private String login;
    private String password;
    private Role role;
}
