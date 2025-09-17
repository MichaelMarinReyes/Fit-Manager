package backend.dao;

import backend.models.gym.Membership;
import backend.models.gym.MembershipType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

public class MembershipDAO {

    public Membership getMembershipId(UUID membershipId) {
        if (membershipId == null) return null;

        String query = "SELECT m.membership_id, m.discount, m.price, m.start_date, m.expiration_date, m.payment_type, mt.membership_type_name FROM membership m JOIN membership_type mt ON m.membership_type_id = mt.membership_type_id WHERE m.membership_id = ?";

        Membership membership = null;

        try (Connection connection = DBConnection.getInstance().getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {

            stmt.setObject(1, membershipId);
            try (ResultSet resultSet = stmt.executeQuery()) {
                if (resultSet.next()) {
                    membership = new Membership();
                    membership.setId(resultSet.getObject("membership_id", UUID.class));

                    String typeName = resultSet.getString("membership_type_name");
                    membership.setMembershipType(MembershipType.fromName(typeName));

                    membership.setDiscount(resultSet.getDouble("discount"));
                    membership.setPrice(resultSet.getDouble("price"));
                    membership.setStartDate(resultSet.getDate("start_date"));
                    membership.setExpirationDate(resultSet.getDate("expiration_date"));
                    membership.setPaymentType(resultSet.getString("payment_type"));
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return membership;
    }
}
