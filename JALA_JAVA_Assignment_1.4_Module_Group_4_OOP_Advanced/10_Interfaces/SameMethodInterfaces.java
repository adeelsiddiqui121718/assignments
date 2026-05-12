// Two interfaces with same method signature
interface InterfaceX {
    void commonMethod();
}

interface InterfaceY {
    void commonMethod();
}

// Class implementing both interfaces
public class SameMethodInterfaces implements InterfaceX, InterfaceY {
    public void commonMethod() {
        System.out.println("Common method implemented once.");
    }

    public static void main(String[] args) {
        SameMethodInterfaces obj = new SameMethodInterfaces();
        obj.commonMethod();
    }
}
