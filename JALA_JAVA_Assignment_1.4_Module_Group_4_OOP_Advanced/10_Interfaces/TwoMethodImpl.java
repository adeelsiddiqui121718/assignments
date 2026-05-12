// Interface with two methods
interface TwoMethodInterface {
    void method1();
    void method2();
}

// Class implementing only one method
public class TwoMethodImpl implements TwoMethodInterface {
    public void method1() {
        System.out.println("Method1 implemented.");
    }

    // method2 not implemented

    public static void main(String[] args) {
        TwoMethodImpl obj = new TwoMethodImpl();
        obj.method1();
    }
}
