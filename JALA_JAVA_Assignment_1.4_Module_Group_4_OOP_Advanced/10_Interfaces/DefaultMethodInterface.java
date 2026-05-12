// Interface with default method
interface DefaultInterface {
    default void defaultMethod() {
        System.out.println("Default method in interface.");
    }
}

// Class implementing interface without overriding default method
public class DefaultMethodInterface implements DefaultInterface {
    public static void main(String[] args) {
        DefaultMethodInterface obj = new DefaultMethodInterface();
        obj.defaultMethod();
    }
}
