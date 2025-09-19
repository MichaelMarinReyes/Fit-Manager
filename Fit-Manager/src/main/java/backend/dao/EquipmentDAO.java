package backend.dao;

import backend.models.gym.Equipment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

public class EquipmentDAO {

    /**
     * Devuelve un listado de todas las máquinas de las sucursales.
     *
     * @return ArrayList<Equipment> que contienen todas las sucursales.
     */
    public ArrayList<Equipment> getEquipments() {
        ArrayList<Equipment> equipments = new ArrayList<>();
        String query = "SELECT e.machine_id, e.machine_name, e.machine_status, e.description, gb.branch_name FROM exercise_machine e JOIN machine_location ml ON e.location_id = ml.location_id JOIN gym_branch gb ON ml.branch_id = gb.branch_id;";
        Equipment equipment = null;

        try (Connection connection = DBConnection.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                equipment = new Equipment();
                equipment.setId(resultSet.getObject("machine_id", UUID.class));
                equipment.setName(resultSet.getString("machine_name"));
                equipment.setState(resultSet.getBoolean("machine_status"));
                equipment.setDescription(resultSet.getString("description"));
                equipment.setLocation(resultSet.getString("branch_name"));
                equipments.add(equipment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return equipments;
    }
}
