// Demonstrating 'this' keyword
public class ThisKeywordDemo {
    int number;

    // Constructor with parameter
    public ThisKeywordDemo(int number) {
        // 'this' refers to current object
        this.number = number;
    }

    public void display() {
        System.out.println("Number: " + this.number);
    }

    public static void main(String[] args) {
        ThisKeywordDemo obj = new ThisKeywordDemo(100);
        obj.display();
    }
}
