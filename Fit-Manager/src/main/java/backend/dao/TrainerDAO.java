package backend.dao;

import backend.models.users.Trainer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

public class TrainerDAO {

    /**
     * Consulta a la base de datos un empleado según un UUUID.
     *
     * @param trainerId es el UUID del empleado con rol de entrenador para que devuelva el dato
     *                  si hay coincidencias en la base de datos.
     * @return un objeto de tipo Trainer si hubo coincidendcia en la base de datos, de lo
     * contrario retorna null.
     */
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
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return trainer;
    }

    /**
     * Consulta a la base de datos todos los empleados que tengan rol de entrenadores, busca por
     * medio de su UUID que corresponde al rol de entrenador.
     * @return un ArrayList<Trainer> que contiene todos los empleados con rol de entrenador que
     * existen en la base de datos.
     */
    public ArrayList<Trainer> getAllTrainers() {
        String query = "SELECT employee_id, employee_name FROM employee WHERE role_id = 'f295b6c8-ff08-4d4b-a065-38507b62e8f9';";
        Trainer trainer = null;
        ArrayList<Trainer> trainers = new ArrayList<>();

        try (Connection connection = DBConnection.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                trainer = new Trainer();
                trainer.setId(resultSet.getObject("employee_id",  UUID.class));
                trainer.setUserName(resultSet.getString("employee_name"));
                trainers.add(trainer);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return trainers;
    }
}
