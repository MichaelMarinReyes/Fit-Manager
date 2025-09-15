package backend.services;

import backend.dao.LoginDAO;

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
}
