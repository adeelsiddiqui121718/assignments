// Demonstrating throws keyword
public class ThrowsDemo {
    public static void riskyMethod() throws InterruptedException {
        Thread.sleep(1000); // may throw InterruptedException
        System.out.println("Risky method executed.");
    }

    public static void main(String[] args) {
        try {
            riskyMethod();
        } catch (InterruptedException e) {
            System.out.println("Exception handled: " + e);
        }
    }
}
