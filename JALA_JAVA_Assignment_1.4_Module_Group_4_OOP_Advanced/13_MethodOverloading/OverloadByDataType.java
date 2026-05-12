// Demonstrating method overloading by changing data type of parameters
public class OverloadByDataType {

    public void show(int a) {
        System.out.println("Integer parameter: " + a);
    }

    public void show(double a) {
        System.out.println("Double parameter: " + a);
    }

    public static void main(String[] args) {
        OverloadByDataType obj = new OverloadByDataType();
        obj.show(100);
        obj.show(12.34);
    }
}
