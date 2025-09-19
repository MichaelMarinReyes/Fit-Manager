package backend.services;

import backend.dao.BranchDAO;
import backend.dao.StoreWharehouseDAO;
import backend.models.gym.StorageWarehouse;

import java.util.ArrayList;

public class StorageWarehouseService {
    private StoreWharehouseDAO storeWharehouseDAO;

    public StorageWarehouseService() {
        storeWharehouseDAO = new StoreWharehouseDAO();
    }

    public ArrayList<StorageWarehouse> getStorageWarehouses() {
        ArrayList<StorageWarehouse> storageWarehouses = storeWharehouseDAO.getStoreWharehouses();
        if (storageWarehouses == null) {
            storageWarehouses = new ArrayList<>();
        }
        return storageWarehouses;
    }
}
