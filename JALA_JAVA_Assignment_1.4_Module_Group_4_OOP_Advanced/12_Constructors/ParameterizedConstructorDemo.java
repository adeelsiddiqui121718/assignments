// Demonstrating parameterized constructor
public class ParameterizedConstructorDemo {
    int id;
    String name;

    // Parameterized constructor
    ParameterizedConstructorDemo(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public void display() {
        System.out.println("ID: " + id + ", Name: " + name);
    }

    public static void main(String[] args) {
        ParameterizedConstructorDemo obj = new ParameterizedConstructorDemo(101, "Adeel");
        obj.display();
    }
}
