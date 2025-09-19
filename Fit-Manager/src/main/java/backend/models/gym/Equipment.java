package backend.models.gym;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Equipment {
    private UUID id;
    private String name;
    private boolean state;
    private String description;
    private String location;
}
