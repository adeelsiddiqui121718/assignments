// Class with default fields and methods
class DefaultDemo {
    int number = 10; // default access
    String text = "Default Access";

    void show() {
        System.out.println("Number: " + number + ", Text: " + text);
    }
}

// Another class in same package accessing default members
class DefaultAccess {
    public static void main(String[] args) {
        DefaultDemo obj = new DefaultDemo();
        System.out.println("Accessing default field: " + obj.number);
        obj.show();
    }
}
