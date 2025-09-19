package backend.dao;

import backend.models.gym.Branch;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

public class BranchDAO {

    /**
     * Devuelve un listado de todas las sucursales de gimnasios.
     * @return ArrayList<Branch> que contiene todas las sucursales.
     */
    public ArrayList<Branch> getGymBranches() {
        ArrayList<Branch> branches = new ArrayList<>();
        String query = "SELECT branch_id, branch_name, branch_address FROM gym_branch;";
        Branch branch =  null;

        try (Connection connection = DBConnection.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                branch = new Branch();
                branch.setId(resultSet.getObject("branch_id", UUID.class));
                branch.setName(resultSet.getString("branch_name"));
                branch.setAddress(resultSet.getString("branch_address"));
                branches.add(branch);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return branches;
    }
}
