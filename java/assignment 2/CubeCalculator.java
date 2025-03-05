import java.util.Scanner;
public class CubeCalculator {
    static int cube(int num) {
        return num * num * num;
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int number = scanner.nextInt();
        System.out.println("The cube of " + number + " is " + cube(number));
        scanner.close();
    }
}