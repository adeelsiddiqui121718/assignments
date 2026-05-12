// Calling parent class method using 'super'
class Base {
    public void display() {
        System.out.println("Display method in Base class");
    }
}

public class SuperMethodCall extends Base {
    @Override
    public void display() {
        System.out.println("Display method in SuperMethodCall class");
        super.display(); // calling parent method
    }

    public static void main(String[] args) {
        SuperMethodCall obj = new SuperMethodCall();
        obj.display();
    }
}
