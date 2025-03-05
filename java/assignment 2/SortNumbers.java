import java.util.Arrays;
public class SortNumbers {
    public static void main(String[] args) {
        if (args.length != 5) {
            System.out.println("Please provide exactly 5 numbers as command line arguments.");
            return;
        }
        int[] numbers = new int[5];
        try {
            for (int i = 0; i < 5; i++) {
                numbers[i] = Integer.parseInt(args[i]);
            }
        } catch (NumberFormatException e) {
            System.out.println("Please enter valid integer numbers.");
            return;
        }
        Arrays.sort(numbers);
        System.out.println("Sorted numbers: ");
        for (int num : numbers) {
            System.out.print(num + " ");
        }
    }
}
