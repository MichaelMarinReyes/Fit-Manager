package backend.services;

import backend.dao.LoginDAO;

import java.util.ArrayList;

public class LoginService {
    private LoginDAO loginDAO;

    public LoginService() {
        loginDAO = new LoginDAO();
    }

    public boolean login(String username, String password, String rol) {
        if (username.isEmpty() || password.isEmpty() || rol.isEmpty()) {
            return false;
        }
        return loginDAO.verifyCredentials(username, password, rol);
    }

    public ArrayList<String> getRoles() {
        ArrayList<String> roles = loginDAO.getRoles();
        if (roles == null) {
          roles = new ArrayList<>();
        }
        return roles;
    }
}
