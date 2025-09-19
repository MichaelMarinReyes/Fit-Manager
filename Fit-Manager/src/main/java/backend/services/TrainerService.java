package backend.services;

import backend.dao.TrainerDAO;
import backend.models.users.Trainer;

import java.util.ArrayList;

public class TrainerService {
    private TrainerDAO trainerDAO;

    public TrainerService() {
        this.trainerDAO = new TrainerDAO();
    }

    public ArrayList<Trainer> getTrainers() {
        if (trainerDAO.getAllTrainers().isEmpty()) {
            return new ArrayList<>();
        }
        return trainerDAO.getAllTrainers();
    }

    public void listOfAssignedClients() {

    }

    public void recordRoutinesAttendance() {

    }
}
