package backend.models.gym;

import backend.models.users.Employee;

import java.util.List;

public class Branch {
    private String id;
    private String name;
    private String address;
    private int machineCount;
    private List<Employee> employees;
    private List<InventoryItem> inventoryItems;
}
