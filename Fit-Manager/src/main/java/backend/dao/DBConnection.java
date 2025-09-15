package backend.dao;

import org.postgresql.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public final class DBConnection {
    private static DBConnection instance;
    private final String HOST = "localhost";
    private final String PORT = "5432";
    private final String USER = "admin";
    private final String PASSWORD = "administrador";
    private final String DATABASE = "fit_manager";
    private final String URL = "jdbc:postgresql://" + HOST + ":" + PORT + "/" + DATABASE;
    private Connection connection;

    public DBConnection() {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static DBConnection getInstance(){
        if (instance == null){
            instance = new DBConnection();
        }
        return instance;
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    public void closeConnection() throws SQLException {
        try {
            if (connection != null && !connection.isClosed()){
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
    }
}