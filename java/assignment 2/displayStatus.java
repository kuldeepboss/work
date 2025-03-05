class TrafficLight {
    private String color;
    private int duration;
    public TrafficLight(String color, int duration) {
        this.color = color;
        this.duration = duration;
    }
    public void changeColor(String newColor, int newDuration) {
        this.color = newColor;
        this.duration = newDuration;
        System.out.println("Traffic light changed to " + color + " for " + duration + " seconds.");
    }
    public boolean isRed() {
        return color.equalsIgnoreCase("red");
    }
    public boolean isGreen() {
        return color.equalsIgnoreCase("green");
    }
    public void displayStatus() {
        System.out.println("Current Traffic Light: " + color + " (" + duration + " seconds)");
    }
    public static void main(String[] args) {
        TrafficLight light = new TrafficLight("Red", 30);
        light.displayStatus();
        System.out.println("Is red? " + light.isRed());
        System.out.println("Is green? " + light.isGreen());
        light.changeColor("Green", 60);
        System.out.println("Is red? " + light.isRed());
        System.out.println("Is green? " + light.isGreen());
    }
}