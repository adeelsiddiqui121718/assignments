// Main class to demonstrate inheritance and polymorphism
public class InheritanceDemo {
    public static void main(String[] args) {
        // Object of ClassA
        ClassA objA = new ClassA();
        objA.methodA1();
        objA.methodA2();
        objA.commonMethod();

        // Object of ClassB
        ClassB objB = new ClassB();
        objB.methodB1();
        objB.methodB2();
        objB.commonMethod();

        // Object of ClassC
        ClassC objC = new ClassC();
        objC.methodC1();
        objC.methodC2();
        objC.commonMethod();

        // Polymorphism: superclass reference to subclass object
        ClassA refB = new ClassB();
        refB.commonMethod(); // Calls ClassB's overridden method

        ClassA refC = new ClassC();
        refC.commonMethod(); // Calls ClassC's overridden method

        // Runtime polymorphism with data members
        System.out.println("Accessing valueA from refB: " + refB.valueA);
        System.out.println("Accessing valueA from refC: " + refC.valueA);
    }
}
