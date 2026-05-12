// Subclass B extends A
public class ClassB extends ClassA {
    int valueB = 20;

    public void methodB1() {
        System.out.println("Method B1 from ClassB");
    }

    public void methodB2() {
        System.out.println("Method B2 from ClassB");
    }

    // Overridden method
    @Override
    public void commonMethod() {
        System.out.println("Common Method in ClassB");
    }
}
