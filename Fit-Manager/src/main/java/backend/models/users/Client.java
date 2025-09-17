package backend.models.users;

import backend.models.gym.Attendance;
import backend.models.gym.Membership;
import backend.models.gym.Payment;
import backend.models.gym.Routine;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Client extends User {
    private String contactEmergency;
    private Trainer assignedTrainer;
    private Membership currentMembership;
    private List<Routine> routines;
    private List<Attendance> attendanceHistory;
    private List<Payment> paymentHistory;
}