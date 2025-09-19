package backend.services;

import backend.dao.EquipmentDAO;
import backend.models.gym.Equipment;

import java.util.ArrayList;

public class EquipmentService {

    private final EquipmentDAO equipmentDAO;

    public EquipmentService() {
        equipmentDAO = new EquipmentDAO();
    }

    /**
     * Obtiene de la clase EquipmentDAO un listado de todas las máquinas que hay en todas
     * las sucursales.
     * @return un ArrayList con objetos de tipo Equipment que contienne datos de las
     * máquinas que hay.
     */
    public ArrayList<Equipment> getEquipments() {
        ArrayList<Equipment> equipments = equipmentDAO.getEquipments();
        if (equipments == null) {
            equipments = new ArrayList<>();
        }
        return equipments;
    }
}
