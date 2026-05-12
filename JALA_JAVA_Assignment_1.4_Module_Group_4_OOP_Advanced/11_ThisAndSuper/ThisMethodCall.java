// Calling one method from another using 'this'
public class ThisMethodCall {
    public void method1() {
        System.out.println("Method1 called");
    }

    public void method2() {
        System.out.println("Method2 called");
        this.method1(); // calling method1 using 'this'
    }

    public static void main(String[] args) {
        ThisMethodCall obj = new ThisMethodCall();
        obj.method2();
    }
}
