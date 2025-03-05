import java.util.Scanner;
public class NameFormatter {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter full name (First Middle Last): ");
        String fullName = scanner.nextLine().trim();
        String[] nameParts = fullName.split(" ");
        if (nameParts.length < 3) {
            System.out.println("Please enter a full name in the format: First Middle Last");
        } else {
            String firstName = nameParts[0];
            String middleName = nameParts[1];
            String lastName = nameParts[2];
            middleName = middleName.substring(0, 1).toUpperCase() + middleName.substring(1).toLowerCase();
            System.out.println("Formatted Name: " + lastName + ", " + firstName + " " + middleName);
        }
        scanner.close();
    }
}
