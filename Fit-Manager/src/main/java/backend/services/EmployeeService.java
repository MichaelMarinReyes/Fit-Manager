package backend.services;

import backend.dao.EmployeeDAO;

import java.util.ArrayList;

public class EmployeeService {

    private EmployeeDAO employeeDAO;

    public EmployeeService() {
        employeeDAO = new EmployeeDAO();
    }

    public ArrayList<String> getRoles() {
        ArrayList<String> roles = employeeDAO.getRoles();
        if (roles == null) {
            roles = new ArrayList<>();
        }
        return roles;
    }
}
