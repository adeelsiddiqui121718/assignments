// Demonstrating multiple catch blocks
public class MultipleCatchDemo {
    public static void main(String[] args) {
        try {
            int[] arr = new int[5];
            arr[10] = 50; // ArrayIndexOutOfBoundsException
        } catch (ArithmeticException e) {
            System.out.println("Arithmetic Exception: " + e);
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Array Index Exception: " + e);
        } catch (Exception e) {
            System.out.println("General Exception: " + e);
        }
    }
}
