// Demonstrating constructor overloading
public class ConstructorOverloadingDemo {
    int number;
    String text;

    // Default constructor
    ConstructorOverloadingDemo() {
        number = 0;
        text = "Default";
    }

    // Parameterized constructor
    ConstructorOverloadingDemo(int number, String text) {
        this.number = number;
        this.text = text;
    }

    public void display() {
        System.out.println("Number: " + number + ", Text: " + text);
    }

    public static void main(String[] args) {
        ConstructorOverloadingDemo obj1 = new ConstructorOverloadingDemo();
        ConstructorOverloadingDemo obj2 = new ConstructorOverloadingDemo(200, "Overloaded");

        obj1.display();
        obj2.display();
    }
}
