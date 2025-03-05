class OddNumberException extends Exception {
    public OddNumberException(String message) {
        super(message);
    }
}

public class OddNumberChecker {
    public static void checkEven(int number) throws OddNumberException {
        if (number % 2 != 0) {
            throw new OddNumberException("Error: The number " + number + " is odd.");
        } else {
            System.out.println("The number " + number + " is even.");
        }
    }

    public static void main(String[] args) {
        int[] testNumbers = {10, 15, 22, 35};

        for (int num : testNumbers) {
            try {
                checkEven(num);
            } catch (OddNumberException e) {
                System.out.println(e.getMessage());
            }
        }
    }
}
