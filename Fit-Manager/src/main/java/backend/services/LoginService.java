package backend.services;

import backend.dao.EmployeeDAO;
import backend.dao.LoginDAO;

import java.util.ArrayList;

public class LoginService {
    private LoginDAO loginDAO;
    private EmployeeDAO employeeDAO;

    public LoginService() {
        loginDAO = new LoginDAO();
        employeeDAO = new EmployeeDAO();
    }

    public boolean login(String username, String password, String rol) {
        if (username.isEmpty() || password.isEmpty() || rol.isEmpty()) {
            return false;
        }
        return loginDAO.verifyCredentials(username, password, rol);
    }

    public ArrayList<String> getRoles() {
        ArrayList<String> roles = employeeDAO.getRoles();
        if (roles == null) {
          roles = new ArrayList<>();
        }
        return roles;
    }
}
