// Base class: Rectangle
class Rectangle {
    int length, breadth;
    
    // Constructor
    Rectangle(int length, int breadth) {
        this.length = length;
        this.breadth = breadth;
    }
    
    // Method to calculate area
    int getArea() {
        return length * breadth;
    }
    
    // Method to calculate perimeter
    int getPerimeter() {
        return 2 * (length + breadth);
    }
}

// Derived class: Box
class Box extends Rectangle {
    int height;
    
    // Constructor
    Box(int length, int breadth, int height) {
        super(length, breadth); // Call parent class constructor
        this.height = height;
    }
    
    // Method to calculate volume
    int getVolume() {
        return super.getArea() * height; // Using super to access parent class method
    }
}

// Main class to run the program
public class Area
 {
    public static void main(String[] args) {
        // Creating an object of Box
        Box box = new Box(5, 4, 3);
        
        // Displaying results
        System.out.println("Area of Rectangle: " + box.getArea());
        System.out.println("Perimeter of Rectangle: " + box.getPerimeter());
        System.out.println("Volume of Box: " + box.getVolume());
    }
}
