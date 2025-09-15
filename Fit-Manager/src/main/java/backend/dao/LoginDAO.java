package backend.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {

    public boolean verifyCredentials(String userName, String password, String rol) {
        String query = "SELECT e.employee_name, r.role_name " +
                "FROM Employee e " +
                "JOIN Role r ON e.id_role = r.id_role " +
                "WHERE e.employee_name = ? AND e.password = ? AND r.role_name = ?";

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
