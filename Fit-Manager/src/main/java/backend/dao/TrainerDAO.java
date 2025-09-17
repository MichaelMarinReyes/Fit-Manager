package backend.dao;

import backend.models.users.Trainer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

public class TrainerDAO {

    public Trainer getTrainerId(UUID trainerId) {
        if (trainerId == null) return null;

        String query = "SELECT employee_id, employee_name, contact_phone FROM employee WHERE employee_id = ?";
        Trainer trainer = null;

        try (Connection connection = DBConnection.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setObject(1, trainerId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    trainer = new Trainer();
                    trainer.setId(resultSet.getObject("employee_id", UUID.class));
                    trainer.setUserName(resultSet.getString("employee_name"));
                    trainer.setPhoneNumber(resultSet.getString("contact_phone"));
                    // Si tienes otros atributos en Trainer, setéalos aquí
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return trainer;
    }
}
