// Public interface with fields and methods
public interface PublicInterfaceDemo {
    int id = 101; // public static final by default
    String name = "Public Interface";

    void show();
}

// Class implementing interface
class PublicInterfaceImpl implements PublicInterfaceDemo {
    public void show() {
        System.out.println("ID: " + id + ", Name: " + name);
    }

    public static void main(String[] args) {
        PublicInterfaceImpl obj = new PublicInterfaceImpl();
        obj.show();
    }
}
