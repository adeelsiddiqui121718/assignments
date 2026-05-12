// Class with public fields and methods
public class PublicDemo {
    public int id = 200;
    public String name = "Public Access";

    public void show() {
        System.out.println("Public Method: ID = " + id + ", Name = " + name);
    }
}

// Another class accessing public members
class PublicAccess {
    public static void main(String[] args) {
        PublicDemo obj = new PublicDemo();
        System.out.println("Accessing public field: " + obj.id);
        obj.show();
    }
}
