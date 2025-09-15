package backend.util;

public enum ColorApp {
    GREEN("#00CC66"),
    GREEN_DARK("#388E3C"),
    GREEN_DARKED("#2E7D32"),
    WHITE("#FFFFFF");

    private final String color;

    ColorApp(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return color;
    }
}
