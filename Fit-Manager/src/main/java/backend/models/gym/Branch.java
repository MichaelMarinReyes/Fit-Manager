package backend.models.gym;

import backend.models.users.Employee;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Branch {
    private String id;
    private String name;
    private String address;
    private int machineCount;
    private List<Employee> employees;
    private List<InventoryItem> inventoryItems;
}
