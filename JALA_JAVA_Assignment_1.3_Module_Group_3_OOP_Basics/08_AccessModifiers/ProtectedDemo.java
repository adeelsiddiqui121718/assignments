// Class with protected fields and methods
class ProtectedDemo {
    protected int value = 50;

    protected void display() {
        System.out.println("Protected Method: Value = " + value);
    }
}

// Child class in same package
class ProtectedChildSamePackage extends ProtectedDemo {
    public void accessProtected() {
        System.out.println("Accessing protected field: " + value);
        display();
    }
}
