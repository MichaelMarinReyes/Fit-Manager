package backend;

import backend.dao.DBConnection;
import com.formdev.flatlaf.FlatLightLaf;
import frontend.principal.MainWindow;

import java.awt.*;
import java.sql.Connection;
import javax.swing.SwingUtilities;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class Main {

    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(new FlatLightLaf());
        } catch (UnsupportedLookAndFeelException e) {
            e.printStackTrace();
        }

        SwingUtilities.invokeLater(() -> {
            MainWindow mainWindow = new MainWindow();
            mainWindow.setSize(800, 650);
            mainWindow.setLocationRelativeTo(null);
            mainWindow.setVisible(true);
        });
    }
}