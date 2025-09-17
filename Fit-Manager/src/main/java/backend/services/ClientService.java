package backend.services;

import backend.dao.ClientDAO;
import backend.models.users.Client;

import java.util.ArrayList;

public class ClientService {
    private final ClientDAO clientDAO;

    public ClientService() {
        this.clientDAO = new  ClientDAO();
    }

    public ArrayList<Client> getAllClients() {
        return clientDAO.getClients();
    }
}
