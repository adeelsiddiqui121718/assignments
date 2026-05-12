// Subclass for AbstractDemo
public class ChildClass extends AbstractDemo {

    @Override
    void abstractMethod() {
        System.out.println("Abstract method implemented in ChildClass");
    }

    public static void main(String[] args) {
        // Creating object of child class
        ChildClass obj = new ChildClass();

        // Access non-abstract method from abstract class
        obj.nonAbstractMethod();

        // Call abstract method implemented in child class
        obj.abstractMethod();
    }
}
