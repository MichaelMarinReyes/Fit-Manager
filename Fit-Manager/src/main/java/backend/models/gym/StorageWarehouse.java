package backend.models.gym;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;
import java.util.UUID;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class StorageWarehouse {
    private UUID id;
    private String name;
    private String address;
    private int totalEquipments;
    private List<InventoryItem> equipments;
}
