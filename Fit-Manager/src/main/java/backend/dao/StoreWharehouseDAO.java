package backend.dao;

import backend.models.gym.StorageWarehouse;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

public class StoreWharehouseDAO {

    /**
     * Realiza una consulta a la base de datso para obtener todas las bodegas existentes.
     * @return un ArrayList<StorageWarehouse> con las bodegas existentes.
     */
    public ArrayList<StorageWarehouse> getStoreWharehouses() {
        ArrayList<StorageWarehouse> branches = new ArrayList<>();
        String query = "SELECT warehouse_id, warehouse_name, address, equipment_quantity FROM storage_warehouse;";
        StorageWarehouse storageWarehouse = null;

        try (Connection connection = DBConnection.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                storageWarehouse = new StorageWarehouse();
                storageWarehouse.setId(resultSet.getObject("warehouse_id", UUID.class));
                storageWarehouse.setName(resultSet.getString("warehouse_name"));
                storageWarehouse.setAddress(resultSet.getString("address"));
                storageWarehouse.setTotalEquipments(resultSet.getInt("equipment_quantity"));
                branches.add(storageWarehouse);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return branches;
    }
}
