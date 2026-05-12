// Simulating child class in different package
// (In real project, place this in another package)
public class ProtectedChildDifferentPackage extends ProtectedDemo {
    public void accessProtected() {
        System.out.println("Accessing protected field from different package: " + value);
        display();
    }
}
