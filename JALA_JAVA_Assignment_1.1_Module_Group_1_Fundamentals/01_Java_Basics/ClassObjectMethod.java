// Demonstrating class, object, method and signature
public class ClassObjectMethod {

    // Instance variable
    String message = "Hello from JALA Academy";

    // Method signature: return type + name + parameters
    public void displayMessage() {
        System.out.println(message);
    }

    public static void main(String[] args) {
        // Creating object of ClassObjectMethod
        ClassObjectMethod obj = new ClassObjectMethod();

        // Calling method using object
        obj.displayMessage();
    }
}
