// Class with private fields and methods
class PrivateDemo {
    private int id = 101;
    private String name = "Adeel";

    private void display() {
        System.out.println("Private Method: ID = " + id + ", Name = " + name);
    }

    public static void main(String[] args) {
        PrivateDemo obj = new PrivateDemo();

        // Access private fields inside same class
        System.out.println("ID: " + obj.id);
        System.out.println("Name: " + obj.name);

        // Call private method inside same class
        obj.display();
    }
}

// Subclass trying to access private members
class PrivateSubClass extends PrivateDemo {
    public void tryAccess() {
        // Cannot access private fields or methods here
        // System.out.println(id); // ERROR
        // display(); // ERROR
        System.out.println("Private members are not accessible in subclass.");
    }
}
