package backend.services;

import backend.dao.EmployeeDAO;

import java.util.ArrayList;

public class EmployeeService {

    private EmployeeDAO employeeDAO;

    /**
     * Constructor de la clase.
     */
    public EmployeeService() {
        employeeDAO = new EmployeeDAO();
    }

    /**
     * Obtiene de EmployeeDAO un ArrayList con objetos de tipo String.
     * @return un ArrayList con los roles existentes en la base de datos.
     */
    public ArrayList<String> getRoles() {
        ArrayList<String> roles = employeeDAO.getRoles();
        if (roles == null) {
            roles = new ArrayList<>();
        }
        return roles;
    }
}
