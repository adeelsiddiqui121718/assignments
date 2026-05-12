// Two interfaces with one method each
interface InterfaceA {
    void methodA();
}

interface InterfaceB {
    void methodB();
}

// Class implementing both interfaces
public class MultipleInterfaces implements InterfaceA, InterfaceB {
    public void methodA() {
        System.out.println("MethodA implemented.");
    }

    public void methodB() {
        System.out.println("MethodB implemented.");
    }

    public static void main(String[] args) {
        MultipleInterfaces obj = new MultipleInterfaces();
        obj.methodA();
        obj.methodB();
    }
}
