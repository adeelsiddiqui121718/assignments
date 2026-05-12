// Demonstrating default constructor
public class DefaultConstructorDemo {
    int number;
    String text;

    // Default constructor
    DefaultConstructorDemo() {
        number = 0;
        text = "Default";
    }

    public void display() {
        System.out.println("Number: " + number + ", Text: " + text);
    }

    public static void main(String[] args) {
        DefaultConstructorDemo obj = new DefaultConstructorDemo();
        obj.display();
    }
}
