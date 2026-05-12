// Subclass C extends B
public class ClassC extends ClassB {
    int valueC = 30;

    public void methodC1() {
        System.out.println("Method C1 from ClassC");
    }

    public void methodC2() {
        System.out.println("Method C2 from ClassC");
    }

    // Overridden method
    @Override
    public void commonMethod() {
        System.out.println("Common Method in ClassC");
    }
}
