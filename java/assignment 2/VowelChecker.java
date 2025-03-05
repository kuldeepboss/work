class NoVowelException extends Exception {
    public NoVowelException(String message) {
        super(message);
    }
}
public class VowelChecker {
    public static void checkForVowels(String input) throws NoVowelException {
        if (!input.matches(".*[AEIOUaeiou].*")) {
            throw new NoVowelException("The input string does not contain any vowels.");
        }
        System.out.println("The string contains vowels: " + input);
    }
    public static void main(String[] args) {
        String testString = "rhythm";
        try {
            checkForVowels(testString);
        } catch (NoVowelException e) {
            System.out.println("Exception: " + e.getMessage());
        }
    }
}
