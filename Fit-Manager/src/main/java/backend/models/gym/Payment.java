package backend.models.gym;

import java.util.Date;

public class Payment {
    private String paymentId;
    private Double amount;
    private Date date;
    private PaymentType paymentType;
    private String description;
    private Date planStartDate;
    private Date planEndDate;
}
