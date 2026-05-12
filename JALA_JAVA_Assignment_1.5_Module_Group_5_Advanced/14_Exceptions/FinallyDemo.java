// Demonstrating finally block
public class FinallyDemo {
    public static void main(String[] args) {
        try {
            int result = 20 / 0;
        } catch (ArithmeticException e) {
            System.out.println("Exception caught: " + e);
        } finally {
            System.out.println("Finally block always executes.");
        }
    }
}
