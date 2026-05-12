// Interface inheritance
interface ParentInterface {
    void parentMethod();
}

interface ChildInterface extends ParentInterface {
    void childMethod();
}

public class InterfaceInheritance implements ChildInterface {
    public void parentMethod() {
        System.out.println("Parent method implemented.");
    }

    public void childMethod() {
        System.out.println("Child method implemented.");
    }

    public static void main(String[] args) {
        InterfaceInheritance obj = new InterfaceInheritance();
        obj.parentMethod();
        obj.childMethod();
    }
}
