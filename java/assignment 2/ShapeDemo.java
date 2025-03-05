interface Shape {
    double getArea();
}
class Rectangle implements Shape {
    private double length, width;
    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }
    @Override
    public double getArea() {
        return length * width;
    }
}
class Circle implements Shape {
    private double radius;
    private static final double PI = 3.14159;
    public Circle(double radius) {
        this.radius = radius;
    }
    @Override
    public double getArea() {
        return PI * radius * radius;
    }
}
class Triangle implements Shape {
    private double base, height;
    public Triangle(double base, double height) {
        this.base = base;
        this.height = height;
    }
    @Override
    public double getArea() {
        return 0.5 * base * height;
    }
}
public class ShapeDemo {
    public static void main(String[] args) {
        Shape rectangle = new Rectangle(10, 5);
        Shape circle = new Circle(7);
        Shape triangle = new Triangle(6, 8);
        System.out.println("Rectangle Area: " + rectangle.getArea());
        System.out.println("Circle Area: " + circle.getArea());
        System.out.println("Triangle Area: " + triangle.getArea());
    }
}
