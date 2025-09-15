package backend.models.gym;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Warehouse {
    private String id;
    private int totalEquipments;
    private List<InventoryItem> equipments;
}
