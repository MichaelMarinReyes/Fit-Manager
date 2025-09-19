package backend.services;

import backend.dao.BranchDAO;
import backend.models.gym.Branch;

import java.util.ArrayList;

public class BranchService {

    private BranchDAO branchDAO;

    /**
     * Constructor del servicio, únicamente inicializa el objeto branchDAO.
     */
    public BranchService() {
        branchDAO = new BranchDAO();
    }

    /**
     * Consulta a la clase BranchDAO para obtener las sucursales.
     * @return un ArrayList<Branch> que contiene objetos de tipo Branch que
     * representan las sucursales de gimnasio.
     */
    public ArrayList<Branch> getBranches() {
        ArrayList<Branch> branches = branchDAO.getGymBranches();
        if (branches == null) {
            branches = new ArrayList<>();
        }
        return branches;
    }
}
