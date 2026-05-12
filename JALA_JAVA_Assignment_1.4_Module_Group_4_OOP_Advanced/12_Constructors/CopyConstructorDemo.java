// Demonstrating copy constructor
public class CopyConstructorDemo {
    int id;
    String name;

    // Parameterized constructor
    CopyConstructorDemo(int id, String name) {
        this.id = id;
        this.name = name;
    }

    // Copy constructor
    CopyConstructorDemo(CopyConstructorDemo obj) {
        this.id = obj.id;
        this.name = obj.name;
    }

    public void display() {
        System.out.println("ID: " + id + ", Name: " + name);
    }

    public static void main(String[] args) {
        CopyConstructorDemo obj1 = new CopyConstructorDemo(101, "Original");
        CopyConstructorDemo obj2 = new CopyConstructorDemo(obj1);

        obj1.display();
        obj2.display();
    }
}
