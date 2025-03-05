import java.util.Scanner;
class MyCustomException extends Exception {
    public MyCustomException(String message) {
        super(message);
    }
}
public class CustomExceptionDemo {
    static void validateAge(int age) throws MyCustomException {
        if (age < 18) {
            throw new MyCustomException("Age must be 18 or above.");
        } else {
            System.out.println("Access granted!");
        }
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        try {
            System.out.print("Enter your age: ");
            int age = scanner.nextInt();
            validateAge(age);
        } catch (MyCustomException e) {
            System.out.println("Custom Exception Caught: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("General Exception: " + e.getMessage());
        } finally {
            scanner.close();
        }
    }
}

