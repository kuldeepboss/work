class TrafficLight {
    private String color;
    private int duration;
    public TrafficLight(String var1, int var2) {
    this.color = var1;
    this.duration = var2;
    }
    public void changeColor(String var1, int var2) {
    this.color = var1;
    this.duration = var2;
    System.out.println("Traffic light changed to " + this.color + " for " + this.duration + " seconds.");
    }
    public boolean isRed() {
    return this.color.equalsIgnoreCase("red");
    }
    public boolean isGreen() {
    return this.color.equalsIgnoreCase("green");
    }
    public void displayStatus() {
    System.out.println("Current Traffic Light: " + this.color + " (" + this.duration + " seconds)");
    }
    public static void main(String[] var0) {
    TrafficLight var1 = new TrafficLight("Red", 30);
    var1.displayStatus();
    System.out.println("Is red? " + var1.isRed());
    System.out.println("Is green? " + var1.isGreen());
    var1.changeColor("Green", 60);
    System.out.println("Is red? " + var1.isRed());
    System.out.println("Is green? " + var1.isGreen());
    }
}
