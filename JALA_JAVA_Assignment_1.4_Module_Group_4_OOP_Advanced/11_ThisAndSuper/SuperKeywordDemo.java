// Demonstrating 'super' keyword with variables
class Parent {
    int value = 50;
}

public class SuperKeywordDemo extends Parent {
    int value = 100;

    public void showValues() {
        System.out.println("Child value: " + value);
        System.out.println("Parent value: " + super.value);
    }

    public static void main(String[] args) {
        SuperKeywordDemo obj = new SuperKeywordDemo();
        obj.showValues();
    }
}
