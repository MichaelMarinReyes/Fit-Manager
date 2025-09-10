package backend;

import frontend.principal.MainWindow;

import java.awt.*;

public class Main {
    public static void main(String[] args) {
        MainWindow mainWindow = new MainWindow();
        int width = (int) Toolkit.getDefaultToolkit().getScreenSize().getWidth();
        int height = (int) Toolkit.getDefaultToolkit().getScreenSize().getHeight();
        mainWindow.setSize(width, height);
        mainWindow.setLocationRelativeTo(null);
        mainWindow.setVisible(true);
    }
}