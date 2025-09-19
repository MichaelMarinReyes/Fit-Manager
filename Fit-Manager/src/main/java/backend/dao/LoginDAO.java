package backend.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LoginDAO {

    /**
     * Verifica y valida que las credenciales ingresadas por parámetro correspondan con
     * las credenciales de algún empleado registrado en la base de datos.
     * @param userName representa el nombre de usuario que se recibe desde el frontend.
     * @param password representa la contraseña que se recibe desde el frontend.
     * @param rol representa el rol de emplado que se recibe desde el frontend.
     * @return true si las credenciales coincide, false si las credenciales no coincíden.
     */
    public boolean verifyCredentials(String userName, String password, String rol) {
        String query = "SELECT e.employee_name, r.role_name FROM Employee e JOIN Role r ON e.role_id = r.role_id WHERE e.employee_name = ? AND e.password = ? AND r.role_name = ?";

        try (Connection connection = DBConnection.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setString(1, userName);
            statement.setString(2, password);
            statement.setString(3, rol);

            try (ResultSet resultSet = statement.executeQuery()) {
                return resultSet.next();
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}