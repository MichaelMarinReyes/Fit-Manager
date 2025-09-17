package backend.models.users;

import backend.models.gym.Routine;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Trainer extends Employee {
    private List<Client> clients;
    private List<Routine> routines;
}
