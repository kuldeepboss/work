import java.util.Arrays;
import java.util.Scanner;
class StringSorter {
    protected String sortStringAlphabetically(String input) {
        char[] characters = input.toCharArray();
        Arrays.sort(characters);
        return new String(characters);
    }
}
public class AlphabeticalOrder {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String input = scanner.nextLine();
        scanner.close();
        StringSorter sorter = new StringSorter();
        String sortedString = sorter.sortStringAlphabetically(input);
        System.out.println("Sorted String: " + sortedString);
    }
}
