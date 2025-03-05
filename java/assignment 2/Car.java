class Vehicle {
    void drive() {
        System.out.println("Driving a vehicle");
    }
}

class Car extends Vehicle {
    @Override
    void drive() {
        System.out.println("Repairing a car");
    }

    public static void main(String[] args) { // Main method inside Car class
        Vehicle myCar = new Car();
        myCar.drive();
    }
}
