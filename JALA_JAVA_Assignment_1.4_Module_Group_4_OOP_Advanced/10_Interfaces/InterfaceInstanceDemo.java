// Using interface reference to call implemented method
interface DemoInterface {
    void display();
}

public class InterfaceInstanceDemo implements DemoInterface {
    public void display() {
        System.out.println("Display method implemented.");
    }

    public static void main(String[] args) {
        DemoInterface ref = new InterfaceInstanceDemo();
        ref.display();
    }
}
