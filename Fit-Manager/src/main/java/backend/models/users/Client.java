package backend.models.users;

import backend.models.gym.Attendance;
import backend.models.gym.Membership;
import backend.models.gym.Payment;
import backend.models.gym.Routine;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Client extends User {
    private String contact;
    private Membership currentMembership;
    private Trainer assignedTrainer;
    private List<Routine> routines;
    private List<Attendance> attendanceHistory;
    private List<Payment> paymentHistory;

    public User user = new User();
}
