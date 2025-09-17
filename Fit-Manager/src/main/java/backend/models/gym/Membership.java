package backend.models.gym;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
import java.util.UUID;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Membership {
    private UUID id;
    private MembershipType membershipType;
    private Double discount;
    private Double price;
    private Date startDate;
    private Date expirationDate;
    private String paymentType;
    private String payment_type;
}