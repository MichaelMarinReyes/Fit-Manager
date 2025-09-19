package backend.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class EmployeeDAO {

    /**
     * Realiza la consulta a la base de datos para obtener los roles
     * @return ArrayList<String> con los roles existentes en la base de datos.
     */
    public ArrayList<String> getRoles() {
        ArrayList<String> roles = new ArrayList<>();
        String query = "SELECT role_name FROM role;";

        try (Connection connection = DBConnection.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                roles.add(resultSet.getString("role_name"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roles;
    }
}
