package backend.dao;

import backend.models.gym.Membership;
import backend.models.users.Client;
import backend.models.users.Trainer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

public class ClientDAO {

    /**
     * Crea un listado con todos los clientes existentes en la base de datos.
     * @return un ArrayList<Client> de Client.
     */
    public ArrayList<Client> getClients() {
        ArrayList<Client> clients = new ArrayList<>();
        String query = "SELECT client_id, name, phone_number, contact_emergency, trainer_id, membership_type_id FROM client";

        try (Connection connection = DBConnection.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                Client client = new Client();
                client.setId(resultSet.getObject("client_id", UUID.class));
                client.setUserName(resultSet.getString("name"));
                client.setPhoneNumber(resultSet.getString("phone_number"));
                client.setContactEmergency(resultSet.getString("contact_emergency"));

                UUID trainerId = resultSet.getObject("trainer_id", UUID.class);
                UUID membershipId = resultSet.getObject("membership_type_id", UUID.class);

                Trainer trainer = null;
                if (trainerId != null) {
                    trainer = new TrainerDAO().getTrainerId(trainerId);
                }
                Membership membership = null;
                if (membershipId != null) {
                    membership = new MembershipDAO().getMembershipId(membershipId);
                }

                client.setAssignedTrainer(trainer);
                client.setCurrentMembership(membership);

                clients.add(client);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return clients;
    }
}