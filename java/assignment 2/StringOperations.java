import java.util.Scanner;

public class StringOperations {
    static class Con {
        void concatenate(String str1, String str2) {
            System.out.println("Concatenated String: " + (str1 + str2));
        }
    }
    static class Comp {
        void compare(String str1, String str2) {
            if (str1.equals(str2)) {
                System.out.println("The strings are equal.");
            } else {
                System.out.println("The strings are not equal.");
            }
        }
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter first string: ");
        String str1 = scanner.nextLine();
        System.out.print("Enter second string: ");
        String str2 = scanner.nextLine();
        Con conObj = new Con();
        conObj.concatenate(str1, str2);
        Comp compObj = new Comp();
        compObj.compare(str1, str2);
        scanner.close();
    }
}
